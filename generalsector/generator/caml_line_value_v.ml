(** {3 The functionalities for a Value for a Caml_line.}  *)

let nam_cod = "caml_line_value_v.ml";;

(** {6 Modules.} *)

module Cfp_v = Codefile_filename_provider_v
module Cfs_v = Codefile_symbol_v
module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
module Cnm_v = Constructor_marker_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cts_v = Category_symbol_v
module Csu_v = Codefile_suffix_v
module Dbt_v = Doublet_v
module Ecc_v = Entitycategorycodefile_v
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Fln_v = Filename_p
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Eccdecp_v = Entitycategorytype_dot_entitycategory_by_entitycategorycodefile_provider_v
module Aaeccp_v = Abbreviation_argument_by_entitycategorycodefile_provider_v
module Amecp_v = Abbreviation_module_by_entitycategory_provider_v
module Ameccp_v = Abbreviation_module_by_entitycategorycodefile_provider_v
module Amteccp_v = Abbreviation_moduletype_by_entitycategorycodefile_provider_v
module Amdecp_v = Abbreviation_module_dot_entitycategory_by_entitycategorycodefile_provider_v
module Mes_v = Messages_v

(**
Conventions :  
   ent stands for entity
   enc_ stands for entitycategory
   ecc stands for entitycategorycodefile
   eccd stands for (entitycategorycodefile, depth)

   t for a top constructor ecc
   s for a son constructor with depth = 2
   b for a bottom constructor with depth > 2
   u for a constructor up to b (depth (b) -1)
   d for a constructor down to b (depth (b) +1)

   A Caml line has no \n (@.).

The order of arguments is the following

   the reference is always bottom (b)
   (the head of the path)
                     |
                     v
   ecct ecc_s ecc_u ecc_b eccd
*)

(** {6 Making Constant.} *)

let make_double_semicolon () =
  Format.sprintf ";;"
;;

let make_pipe_arrow_false () =
  Format.sprintf "  | _ -> false"
;;

let make_then_false_else_begin () =
  Format.sprintf "  then false@.  else@.    begin"
;;

(** {6 Making Singlet.} *)

let make_title_type ecc_t = 
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in

  Format.sprintf "(** {3 A %s for %s %s.} *)" 
    (String.capitalize (Cts_v.name smb_cat))
    (Mes_v.article_before_string (Ens_v.name smb_ent))
    (String.capitalize (Ens_v.name smb_ent))
;;

let make_title_function ecc_t = 
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in
  
  Format.sprintf "(** {3 The functionalities for %s %s for %s %s.} *)"
    (Mes_v.article_before_string (Cts_v.name smb_cat)) 
    (String.capitalize (Cts_v.name smb_cat))
    (Mes_v.article_before_string (Ens_v.name smb_ent))
    (String.capitalize (Ens_v.name smb_ent))
;;

let make_comment_line_item smb_itm smb_cnb dep_cnb smb_cnt smb_cat =
    let nam_itm = String.capitalize (Its_v.name smb_itm) in
    let nam_cnb = String.capitalize (Cns_v.name smb_cnb) in
    let nam_cnt = String.capitalize (Cns_v.name smb_cnt) in
    let nam_cat = String.capitalize (Cts_v.name smb_cat) in
    let lev_cnb = 3 * (dep_cnb + 1) in

    match smb_itm with
    | Its_t.Extracting_symbol -> 
	if dep_cnb = 1 
	then Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 
	else Format.sprintf "(** {%i %s from %s.} *)" lev_cnb nam_itm nam_cnb 

    | Its_t.Heading_symbol ->  (*** TODO make_title *)
	Format.sprintf "(** {3 A %s for a %s.} *)" nam_cat nam_cnt 

    | Its_t.Modules_symbol ->
	Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 

    | Its_t.Naming_symbol ->
	Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 

    | Its_t.Printing_symbol ->
	Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 

    | Its_t.Querying_symbol ->
	if dep_cnb = 1 
	then Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 
	else Format.sprintf "(** {%i %s %s in %s.} *)" lev_cnb nam_itm nam_cnb nam_cnt 
    | Its_t.Typing_symbol -> 
	Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm 
 
    | Its_t.Upgrading_symbol ->
	if dep_cnb = 1  
	then Format.sprintf "(** {%i %s.} *)" lev_cnb nam_itm
	else Format.sprintf "(** {%i %s to %s.} *)" lev_cnb nam_itm nam_cnb 

    | _ -> Erm_v.print_fatal_error nam_cod 
	  "make_comment_line_item" 
          "an implemented Item Symbol" 
	  (Format.sprintf ">%s<" nam_itm)
          "add it to menu"
;;

let make_createdby ecc_t = 
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc_t in
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_t in
  let smb_cat = Ecc_v.category_symbol_off_entitycategorycodefile ecc_t in

  let time = Unix.gmtime (Unix.time ()) in (*** TODO move in tools ***)

  let monthes = 
    [|"Jan"; "Feb"; "Mar"; "Apr"; "May"; "Jun"; 
      "Jul"; "Aug"; "Sep"; "Oct"; "Nov"; "Dec"|] in

  let date =
    Format.sprintf "%i:%i %i %s %i" 
      (time.Unix.tm_hour +1) 
      time.Unix.tm_min 
      time.Unix.tm_mday 
      (monthes.(time.Unix.tm_mon)) 
      (1900 +time.Unix.tm_year) 
  in

  Format.sprintf "(** created by ./generator %s %s %s at %s. *)"
    (Ens_v.name smb_ent)
    (Cfs_v.name smb_cfi)
    (Cts_v.name smb_cat)
     date
;; (** Ex.: created by ./generator atom_zerotied implementation symbol at 18:46 11 May 2011. *)

(** {6 Making Singlet.} *)

let make_let_nam_cod ecc_t = 
  Format.sprintf "let nam_cod = \"%s\";;" 
    (Fln_v.name (Cfp_v.provide ecc_t))
;;

let make_module_m_eq_m ecc_s = 
  let nam_ecc = String.capitalize (Ecc_v.name ecc_s) in
  let amdecc_s = Ameccp_v.provide ecc_s in 

  Format.sprintf "module %s = %s" amdecc_s nam_ecc   
;;

let make_b ecc_b =
  Format.sprintf "    %s" (Ameccp_v.provide ecc_b)
;;

let make_t ecc_t =
  Format.sprintf "    %s" (Ameccp_v.provide ecc_t)
;;

let make_s ecc_s =
  Format.sprintf "    %s" (Ameccp_v.provide ecc_s)
;;

let make_b_arrow ecc_b = 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
  let nam_ecb = Enc_v.name enc_b in 

  Format.sprintf "  %s_t.%s ->" 
    (String.capitalize nam_ecb) nam_ecb 
    (* Atom_symbol_onetied_t.atom_symbol_onetied ->  *)
;;

let make_s_arrow ecc_s = 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
  let nam_ecc = Enc_v.name enc_s in
  
  Format.sprintf "  %s_t.%s ->"
    (String.capitalize nam_ecc) nam_ecc 
(* Atom_symbol_onetied_t.atom_symbol_onetied ->  *)
;;

let make_t_arrow ecc_t = 
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in
  let nam_ect = Enc_v.name enc_t in
  
  Format.sprintf "  %s_t.%s ->"
    (String.capitalize nam_ect) nam_ect (* Atom_symbol_t.atom_symbol  *)
;;

(** {6 Making Pair.} *)

(** {19 Pipe in Type.} *)

let make_type_definition ecc_t =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in
  Format.sprintf "type %s =" (Enc_v.name enc_t)
;;

let make_type_pipe_bare smb_ent_bar =
  Format.sprintf "  | %s" (String.capitalize smb_ent_bar)
;;

let make_pipe_barebasic str =
  Format.sprintf "  | %s of %s" 
    (String.capitalize str) str
;;

let make_type_pipe_s_of_s_dot_s ecc_s =
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in 
  let nam_enc_s = Enc_v.name enc_s in

  Format.sprintf "  | %s of %s" 
    (String.capitalize nam_enc_s) (Amdecp_v.provide ecc_s)
;;

let make_type_pipe_t_of_b ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 

  Format.sprintf "  | %s of %s" 
    (String.capitalize (Enc_v.name enc_t)) (Amdecp_v.provide ecc_b)
;;

let make_type_pipe_s_of_b ecc_b ecc_s = (*** TODO ??? *)
  let nam_ecc_s = Ecc_v.name ecc_s in
  let nam_ecc_b = Ecc_v.name ecc_b in 

  Format.sprintf "  | %s of %s" nam_ecc_s nam_ecc_b 
;; (* | Frompdbid of string *)

(** {9 Pipe in function.} *)

let make_pipe_t_dot_s_s_arrow ecc_t ecc_s =
  let ect_t = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_t in
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
  let nam_enc_s = Enc_v.name_capitalized enc_s in
  let amecc_t = Ameccp_v.provide ect_t in
  let arg_s = Aaeccp_v.provide ecc_s in
 
  Format.sprintf "  | %s.%s %s ->" 
    amecc_t nam_enc_s arg_s 
;;(* | Ats_t.Atom_zerotied smb_atz -> *)

let make_pipe_t_dot_s_s_arrow_s ecc_t ecc_s =
  let ect_t = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_t in
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
  let nam_enc_s = Enc_v.name_capitalized enc_s in
  let amecc_t = Ameccp_v.provide ect_t in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  | %s.%s %s -> %s" 
   amecc_t nam_enc_s arg_s arg_s
;;(* | Ats_t.Atom_zerotied smb_atz -> smb_atz *)

let make_pipe_t_dot_s_arrow ecc_t ecc_s =
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_s in
  let nam_ent = Ens_v.name smb_ent in

  let amdecp = Amdecp_v.provide ecc_t in
  Format.sprintf "  | %s.%s ->" amdecp nam_ent
;;

let make_pipe_constructor_argument_to_argument ecc_pr =
  let enc_r = Ecc_v.entitycategory_off_entitycategorycodefile ecc_pr in

  Format.sprintf "  | %s of %s" 
    (Enc_v.name_capitalized enc_r) (Amdecp_v.provide ecc_pr)
;;

let make_pipe_datastructure_s_arrow ecc_s =
  let smb_ent = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_s in
  let nam_ent = Ens_v.name_capitalized smb_ent in
  let aaeccp =  Aaeccp_v.provide ecc_s in

  Format.sprintf "  | %s %s ->" nam_ent aaeccp
   (* | Doublet _dbt *) 
;;

let make_type_pipe_list_a ecc_a =
  Format.sprintf "  | List of %s Lst_t.list" (Amdecp_v.provide ecc_a)
;;

let make_type_pipe_tree_a ecc_a =
  Format.sprintf "  | Tree of %s Tre_t.tree" (Amdecp_v.provide ecc_a)
;;

let make_type_pipe_doublet_a_b ecc_a ecc_b =
  let madecp_a = Amdecp_v.provide ecc_a in
  let madecp_b = Amdecp_v.provide ecc_b in

  Format.sprintf "  | Doublet of (%s, %s) Dbt_t.doublet"  madecp_a madecp_b
;;

let make_type_pipe_triplet_a_b_c ecc_a ecc_b ecc_c =
  let madecp_a = Amdecp_v.provide ecc_a in
  let madecp_b = Amdecp_v.provide ecc_b in
  let madecp_c = Amdecp_v.provide ecc_c in
  
  Format.sprintf "  | Triplet of (%s, %s, %s) Trp_t.triplet"  
    madecp_a madecp_b madecp_c
;;

(** {9. Making name.}  *)

let make_entity_barebasic_name = function 
  | Ens_t.Boolean -> "(Format.sprintf \"%b\")"
  | Ens_t.Float -> "(Format.sprintf \"%f\")"
  | Ens_t.Integer -> "(Format.sprintf \"%i\")"
  | Ens_t.String -> "(Format.sprintf \"%s\")"
;;

let make_name_of_entitycategorycodefile = function 
  | (Ens_t.Entity_fictive_symbol 
       (Ens_t.Entity_barebasic_symbol smb_eba), _, _) ->
	 make_entity_barebasic_name smb_eba
  | ecc ->
      let ameccp = Ameccp_v.provide ecc in
      Format.sprintf "%s.name" ameccp
;;

let make_doublet_name_s_a_b ecc_s ecc_a ecc_b =
  let mnecc_a = make_name_of_entitycategorycodefile ecc_a in
  let mnecc_b = make_name_of_entitycategorycodefile ecc_b in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  Dbt_v.name %s %s %s" mnecc_a mnecc_b arg_s
;;

let make_triplet_name_s_a_b_c ecc_s ecc_a ecc_b ecc_c =
  let mnecc_a = make_name_of_entitycategorycodefile ecc_a in
  let mnecc_b = make_name_of_entitycategorycodefile ecc_b in
  let mnecc_c = make_name_of_entitycategorycodefile ecc_c in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  Trp_v.name %s %s %s %s" mnecc_a mnecc_b mnecc_c arg_s
 ;;

let make_tree_name_s_a ecc_s ecc_a =
  let mnecc_a = make_name_of_entitycategorycodefile ecc_a in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  Tre_v.name %s %s" mnecc_a arg_s
 ;;

(** {9. Making print.}  *)

let make_entity_barebasic_print = function 
  | Ens_t.Boolean -> "(Format.fprintf ppf \"%b\")"
  | Ens_t.Float -> "(Format.fprintf ppf \"%f\")"
  | Ens_t.Integer -> "(Format.fprintf ppf \"%i\")"
  | Ens_t.String -> "(Format.fprintf ppf \"%s\")"
;;

let make_print_of_entitycategorycodefile = function 
  | (Ens_t.Entity_fictive_symbol 
       (Ens_t.Entity_barebasic_symbol smb_eba), _, _) ->
	 make_entity_barebasic_print smb_eba
  | ecc ->
      let ameccp = Ameccp_v.provide ecc in
      Format.sprintf "%s.print" ameccp
;;

let make_doublet_print_s_a_b ecc_s ecc_a ecc_b =
  let mnecc_a = make_print_of_entitycategorycodefile ecc_a in
  let mnecc_b = make_print_of_entitycategorycodefile ecc_b in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  Dbt_v.print %s %s ppf %s" mnecc_a mnecc_b arg_s
;;

let make_triplet_print_s_a_b_c ecc_s ecc_a ecc_b ecc_c =
  let mnecc_a = make_print_of_entitycategorycodefile ecc_a in
  let mnecc_b = make_print_of_entitycategorycodefile ecc_b in
  let mnecc_c = make_print_of_entitycategorycodefile ecc_c in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  | Trp_v.print %s %s %s %s" mnecc_a mnecc_b mnecc_c arg_s
 ;;

let make_tree_print_s_a ecc_s ecc_a =
  let mnecc_a = make_print_of_entitycategorycodefile ecc_a in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "  | Tre_v.print %s %s" mnecc_a arg_s
 ;;

(** {6 Extracting} *)

let make_basic_type str =
  Format.sprintf "    %s" str
;;

let make_let_s_off_t_function ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
    
  Format.sprintf "let %s_off_%s = function" 
      (Enc_v.name enc_b) (Enc_v.name enc_t); 
;;

let make_let_b_off_t_t_argument ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
    
  Format.sprintf "let %s_off_%s %s =" 
      (Enc_v.name enc_b) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t) 
;;
let make_let_s_off_t_t_argument ecc_t ecc_b =
make_let_b_off_t_t_argument ecc_t ecc_b
;;

let make_let_u_u_off_t_t_in ecc_t ecc_u =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_u = Ecc_v.entitycategory_off_entitycategorycodefile ecc_u in

  Format.sprintf "  let %s = %s_off_%s %s in" 
   (Aaeccp_v.provide ecc_u) (Enc_v.name enc_u) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t)
;;

let make_let_b_b_off_t_t ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "  let %s = %s_off_%s %s in" 
   (Aaeccp_v.provide ecc_b) (Enc_v.name enc_b) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t)
;;

let make_let_u_u_off_t_t ecc_t ecc_u =
  make_let_b_b_off_t_t ecc_t ecc_u
;;

let make_b_off_t_t ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 

  Format.sprintf "%s_off_%s %s" 
   (Ameccp_v.provide ecc_b) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t)
;;

let make_b_off_u_u ecc_u ecc_b =
  let enc_u = Ecc_v.entitycategory_off_entitycategorycodefile ecc_u in 

  Format.sprintf "    %s_off_%s %s" 
  (Ameccp_v.provide ecc_u) (Enc_v.name enc_u) (Aaeccp_v.provide ecc_u)
;;

let make_doublet_left ecc =
  let arg = Aaeccp_v.provide ecc in
  Format.sprintf "  Dbt_v.left_off_doublet %s" arg
;;

let make_doublet_right ecc_t =
  let arg_t = Aaeccp_v.provide ecc_t in
  Format.sprintf "  Dbt_v.right_off_doublet %s" arg_t
;;

let make_triplet_left ecc_t =
  let arg_t = Aaeccp_v.provide ecc_t in
  Format.sprintf "  Dbt_v.left_off_triplet %s" arg_t
;;

let make_triplet_middle ecc_t =
  let arg_t = Aaeccp_v.provide ecc_t in
  Format.sprintf "  Dbt_v.middle_off_triplet %s" arg_t
;;

let make_triplet_right ecc_t =
  let arg_t = Aaeccp_v.provide ecc_t in
  Format.sprintf "  Dbt_v.right_off_triplet %s" arg_t
;;

(** {6 Upgrading} *)

let make_val_t_of_b ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "val %s_of_%s :" 
    (Enc_v.name enc_t) (Enc_v.name enc_b) 
;;

let make_val_b_off_t ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "val %s_off_%s :" 
    (Enc_v.name enc_t) (Enc_v.name enc_b) 
;;

let make_val_s_off_t ecc_t ecc_s =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in

  Format.sprintf "val %s_off_%s :" 
    (Enc_v.name enc_t) (Enc_v.name enc_s) 
;;

let make_val_b_arrow ecc_b =
  Format.sprintf "  %s ->" (Amdecp_v.provide ecc_b)
;;

let make_val_b ecc_b =
  Format.sprintf "  %s" (Amdecp_v.provide ecc_b)
;;

(** {6 Querying} *)

let make_let_is_s_off_t_function ecc_t ecc_s =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
    
  Format.sprintf "let is_%s_off_%s = function" 
      (Enc_v.name enc_s) (Enc_v.name enc_t)
;;

let make_let_is_b_off_t_t_argument ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
    
  Format.sprintf "let is_%s_off_%s %s =" 
      (Enc_v.name enc_b) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t)
;;

let make_pipe_t_dot_s_arrow_true ecc_t ecc_s =
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
  let amtecc_t = Amteccp_v.provide ecc_t in
 
  Format.sprintf "  | %s.%s _ -> true" 
    amtecc_t  
    (String.capitalize (Enc_v.name enc_s)) 
;; (* | Ats_t.Atom_onetied_symbol _ -> true *)

let make_u_is_b_off_u_u ecc_u ecc_b =
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
  let enc_u = Ecc_v.entitycategory_off_entitycategorycodefile ecc_u in 

  Format.sprintf "      %s.is_%s_off_%s %s" 
    (Ameccp_v.provide ecc_u) (Enc_v.name enc_b) 
    (Enc_v.name enc_u) (Aaeccp_v.provide ecc_u)
;;(*  U.is_b_off_u u *)

let make_if_not_is_u_off_t_t ecc_t ecc_b =
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 

  Format.sprintf "  if not (is_%s_off_%s %s)" 
   (Enc_v.name enc_b) (Enc_v.name enc_t) (Aaeccp_v.provide ecc_t)
;;

let make_val_is_b_off_t ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "val is_%s_off_%s :" 
    (Enc_v.name enc_t) (Enc_v.name enc_b) 
;;

let make_val_is_s_off_t ecc_t ecc_s =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in

  Format.sprintf "val is_%s_off_%s :" 
    (Enc_v.name enc_t) 
    (Enc_v.name enc_s) 
;;

(** {6 Upgrading} *)

let make_let_t_of_b_function ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "let %s_of_%s = function" 
    (Enc_v.name enc_t) (Enc_v.name enc_b)
;;

let make_let_u_eq_u_dot_u_of_b_b_in ecc_u ecc_b =
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "  let %s = %s_of_%s %s in" 
   (Aaeccp_v.provide ecc_u) (Amdecp_v.provide ecc_u) 
    (Enc_v.name enc_b) (Aaeccp_v.provide ecc_b)
;;(* let u = U.u_of_b b in *)

let make_let_t_of_b_b_eq ecc_t ecc_b =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in

  Format.sprintf "let %s_of_%s %s =" 
    (Enc_v.name enc_t) (Enc_v.name enc_b) (Aaeccp_v.provide ecc_b)
;;(* let t_of_b b = *)

let make_let_s_eq_t_dot_s ecc_t ecc_s =
  let ect_t = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_t in
  let amecc_t = Ameccp_v.provide ect_t in
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in
  let nam_enc_s = Enc_v.name enc_s in
  
  Format.sprintf "let %s = %s.%s;;" nam_enc_s amecc_t (String.capitalize nam_enc_s)
;; (* let ni_3p = Ac3s_t.Ni_3p;; *)

let make_let_t_of_s_s_eq ecc_t ecc_s =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in

  Format.sprintf "let %s_of_%s %s =" 
    (Enc_v.name enc_t) (Enc_v.name enc_s) (Aaeccp_v.provide ecc_s)
;;(* let t_of_s s =  *)

let make_let_b_eq_t_of_u_u_dot_b ecc_t ecc_u ecc_b =  (* b is fictive u is up t is top *)
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_u = Ecc_v.entitycategory_off_entitycategorycodefile ecc_u in
  let enc_b = Ecc_v.entitycategory_off_entitycategorycodefile ecc_b in
  let nam_enc_t = Enc_v.name enc_t in
  let nam_enc_u = Enc_v.name enc_u in
  let nam_enc_b = Enc_v.name enc_b in (* only name is used "ar" *)

  let ect_u = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_u in
  let amecc_u = Ameccp_v.provide ect_u in

  Format.sprintf "let %s = %s_of_%s %s.%s;;" 
    nam_enc_b nam_enc_t nam_enc_u amecc_u (String.capitalize nam_enc_b)

;;(* Ex. : let ar = atom_symbol_of_atom_zerotied_raregas_symbol Azrs_t.Ar;; *)

let make_t_of_u_u ecc_t ecc_u =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_u = Ecc_v.entitycategory_off_entitycategorycodefile ecc_u in

  Format.sprintf "%s_of_%s %s" 
    (Enc_v.name enc_t) (Enc_v.name enc_u) (Aaeccp_v.provide ecc_u)
;; (* t_of_u u *)

let make_t_dot_s_s ecc_t ecc_s =
  let ect_t = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_t in
  let amecc_t = Ameccp_v.provide ect_t in
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in 
  let nam_enc_s = Enc_v.name enc_s in
  let arg_s = Aaeccp_v.provide ecc_s in

  Format.sprintf "%s.%s %s" 
    amecc_t (String.capitalize nam_enc_s) arg_s 
;;(* Ats_t.Atom_onetied_single_symbol smb_aos *)

let make_val_t_of_s ecc_t ecc_s =
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in 
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 

  Format.sprintf "val %s_of_%s :" (Enc_v.name enc_t) (Enc_v.name enc_s) 
;;(* val atom_symbol_of_atom_zerotied_symbol smb_a0d *)

let make_val_s_colon_t ecc_s ecc_t =
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in 
  let nam_enc_s = Enc_v.name enc_s in
  let eccdecp_t = Eccdecp_v.provide ecc_t in

  Format.sprintf "val %s : %s;;" nam_enc_s eccdecp_t
    
;;(* val s : T.t *)

let make_val_b_colon_t ecc_t ecc_b =
  let smb_ent_b = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_b in
  let nam_ent_b = Ens_v.name smb_ent_b in
  let eccdecp_t = Eccdecp_v.provide ecc_t in

  Format.sprintf "val %s : %s;;" nam_ent_b eccdecp_t
;;(* val b : T.t *)

(** {6 Displaying functions.} *)

let make_let_name_eq_function () =
  Format.sprintf "let name = function" 
;;

let make_let_print_eq_function () =
  Format.sprintf "%s" "let print ppf = function" 
;;

let make_let_name_b_eq ecc_b =
  Format.sprintf "let name %s =" (Aaeccp_v.provide ecc_b)
;;(* let name b = *)

let make_let_print_b_eq ecc_b =
  Format.sprintf "let print ppf %s =" (Aaeccp_v.provide ecc_b)
;;

let make_let_name_t_eq ecc_t =
  Format.sprintf "let name %s =" (Aaeccp_v.provide ecc_t)
;;(* let name t = *)

let make_let_print_t_eq ecc_t =
  Format.sprintf "let print ppf %s =" (Aaeccp_v.provide ecc_t)
;;(* let print t = *)

let make_s_name_s ecc_s =
  Format.sprintf "      %s.name %s" 
    (Ameccp_v.provide ecc_s) (Aaeccp_v.provide ecc_s)
;;(*   Aocs_v.name smb_aoc *)

let make_s_print_s ecc_s =
  Format.sprintf "      %s.print ppf %s" 
    (Ameccp_v.provide ecc_s) (Aaeccp_v.provide ecc_s)
;;

let make_name_pipe_t_dot_s_arrow_s ecc_t ecc_s =
  let ect_t = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc_t in
  let smb_ent_s = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_s in
  let nam_ent_s = Ens_v.name smb_ent_s in
  let amecc_t = Ameccp_v.provide ect_t in

  "  | "^ amecc_t ^ "." ^ (String.capitalize nam_ent_s) ^
   " -> \"" ^ nam_ent_s ^ "\"" 
;;(*   | Asxs_t.S_6s -> "s_6s" *)

let make_print_pipe_t_dot_s_arrow_s ecc_t ecc_s =
  let smb_ent_s = Ecc_v.entity_symbol_off_entitycategorycodefile ecc_s in
  let nam_ent_s = Ens_v.name smb_ent_s in
  let amecc_t = Ameccp_v.provide ecc_t in

  "  | "^ amecc_t ^ "." ^ (String.capitalize nam_ent_s) ^
   " -> Format.fprintf ppf \"%s\" " ^ nam_ent_s
;;

let make_pipe_s_off_t_print_fatal_error ecc_t ecc_s =
  let enc_t = Ecc_v.entitycategory_off_entitycategorycodefile ecc_t in 
  let enc_s = Ecc_v.entitycategory_off_entitycategorycodefile ecc_s in

  let nam_fun = 
    Format.sprintf "%s_off_%s" (Enc_v.name enc_s) (Enc_v.name enc_t) 
  in
  Format.sprintf "  | s -> Erm_v.print_fatal_error nam_cod\
                @.     \"%s\"\
                @.     \"%s\"\
		@.     (name s)\
                @.    \"check\""
		    nam_fun 
		    (String.capitalize (Enc_v.name enc_s))
;;

let make_val_name () =
  Format.sprintf "let name :" 
;;

let make_val_print_format_formatter_arrow () =
  Format.sprintf "%s" "val print : Format.Formatter ->"
;;

(** {6 Making.} *)

let make_constant = function
    | Cls_t.Basic_type_line_symbol s ->
       make_basic_type s

    | Cls_t.Double_semicolon_symbol ->
	make_double_semicolon ()

    | Cls_t.Empty_line_symbol -> 
	""

    | Cls_t.End_line_symbol -> 
	"    end"

    | Cls_t.Comment_line_item_symbol ctt_cpg -> 
	let smb_cnb = 
	  Cpc_v.bottom_constructor_symbol_off_caml_paragraph_context ctt_cpg
	in
	let dep_cnb = 
	  Cpc_v.bottom_constructor_depth_off_caml_paragraph_context ctt_cpg
	in
	let smb_itm = 
	  Cpc_v.item_symbol_off_caml_paragraph_context ctt_cpg
	in
	let smb_cat = 
	  Cpc_v.category_symbol_off_caml_paragraph_context ctt_cpg
	in
	let smb_cnt = 
	  Cpc_v.top_constructor_symbol_off_caml_paragraph_context ctt_cpg
	in
	make_comment_line_item smb_itm smb_cnb dep_cnb smb_cnt smb_cat

    | Cls_t.Let_name_eq_function_symbol ->
	make_let_name_eq_function ()

    | Cls_t.Val_name_symbol ->
	make_val_name ()

    | Cls_t.Val_print_format_formatter_arrow_symbol ->
	make_val_print_format_formatter_arrow ()

    | Cls_t.Let_print_eq_function_symbol ->
	make_let_print_eq_function ()

    | Cls_t.Pipe_arrow_false_symbol ->
	make_pipe_arrow_false ()

    | Cls_t.Then_false_else_begin_symbol ->
	make_then_false_else_begin ()
;;

let make_singlet = function
(* T *)
    | Cls_t.Createdby_symbol ecc_t ->
	make_createdby ecc_t

    | Cls_t.Let_name_t_eq_symbol ecc_t ->
	make_let_name_t_eq ecc_t

    | Cls_t.Let_print_t_eq_symbol ecc_t ->
	make_let_print_t_eq ecc_t

    | Cls_t.Let_nam_cod_symbol ecc_t ->
	make_let_nam_cod ecc_t

    | Cls_t.Pipe_datastructure_s_arrow_symbol ecc_s ->
	make_pipe_datastructure_s_arrow ecc_s

    | Cls_t.T_arrow_symbol ecc_t ->
	make_t_arrow ecc_t

    | Cls_t.S_symbol ecc_s ->
	make_s ecc_s

    | Cls_t.T_symbol ecc_t ->
	make_t ecc_t

    | Cls_t.Title_function_symbol ecc_t ->
	make_title_function ecc_t 

    | Cls_t.Title_type_symbol ecc_t ->
	Utils_v.not_yet_implemented nam_cod "title_type ecc"

    | Cls_t.Doublet_right_symbol ecc_t ->
	make_doublet_right ecc_t

    | Cls_t.Doublet_left_symbol ecc_t ->
	make_doublet_left ecc_t

    | Cls_t.Triplet_right_symbol ecc_t ->
	make_triplet_right ecc_t

    | Cls_t.Triplet_middle_symbol ecc_t ->
	make_triplet_middle ecc_t

    | Cls_t.Triplet_left_symbol ecc_t ->
	make_triplet_left ecc_t

    | Cls_t.Type_definition_symbol ecc_t ->
	make_type_definition ecc_t

    | Cls_t.Type_pipe_bare_symbol smb_ent_bar ->
	make_type_pipe_bare smb_ent_bar

(* S *)

    | Cls_t.Module_m_eq_m_symbol ecc_s ->
	make_module_m_eq_m ecc_s

    | Cls_t.S_name_s_symbol ecc_s ->
	make_s_name_s ecc_s

    | Cls_t.S_print_s_symbol ecc_s ->
	make_s_print_s ecc_s

    | Cls_t.S_arrow_symbol ecc_s ->
	make_s_arrow ecc_s

    | Cls_t.Type_pipe_s_of_s_dot_s_symbol ecc_s ->
	make_type_pipe_s_of_s_dot_s ecc_s

(* B *)

    | Cls_t.Let_print_b_symbol ecc_b ->
	Utils_v.not_yet_implemented nam_cod "let_print_b ecc"

    | Cls_t.Let_name_b_eq_symbol ecc_b ->
	make_let_name_b_eq ecc_b

    | Cls_t.Let_print_b_eq_symbol ecc_b ->
	make_let_print_b_eq ecc_b

    | Cls_t.B_arrow_symbol ecc_b ->
	make_b_arrow ecc_b

    | Cls_t.B_symbol ecc_b ->
	make_b ecc_b

;;

let make_pair = function
(* T S *)
    | Cls_t.Pipe_s_off_t_print_fatal_error_symbol (ecc_t, ecc_s) ->
	make_pipe_s_off_t_print_fatal_error ecc_t ecc_s

    | Cls_t.Name_pipe_t_dot_s_arrow_s_symbol (ecc_t, ecc_s) ->
	make_name_pipe_t_dot_s_arrow_s ecc_t ecc_s

    | Cls_t.Print_pipe_t_dot_s_arrow_s_symbol (ecc_t, ecc_s) ->
	make_print_pipe_t_dot_s_arrow_s ecc_t ecc_s

    | Cls_t.Pipe_t_dot_s_arrow_symbol (ecc_t, ecc_s) ->
	Utils_v.not_yet_implemented nam_cod "make_pipe_t_dot_s_arrow"

    | Cls_t.Pipe_t_dot_s_arrow_true_symbol (ecc_t, ecc_s) ->
	make_pipe_t_dot_s_arrow_true ecc_t ecc_s

    | Cls_t.Pipe_t_dot_s_s_arrow_s_symbol (ecc_t, ecc_s) ->
	make_pipe_t_dot_s_s_arrow_s ecc_t ecc_s

    | Cls_t.Pipe_t_dot_s_s_arrow_symbol (ecc_t, ecc_s) ->
	make_pipe_t_dot_s_s_arrow ecc_t ecc_s

    | Cls_t.Let_s_off_t_function_symbol (ecc_t, ecc_s) ->
	make_let_s_off_t_function ecc_t ecc_s

    | Cls_t.Let_s_off_t_t_argument_symbol (ecc_t, ecc_s) ->
	make_let_s_off_t_t_argument ecc_t ecc_s

    | Cls_t.Let_is_s_off_t_function_symbol (ecc_t, ecc_s) ->
	make_let_is_s_off_t_function ecc_t ecc_s

    | Cls_t.Let_s_eq_t_dot_s_symbol (ecc_t, ecc_s) ->
	make_let_s_eq_t_dot_s ecc_t ecc_s

    | Cls_t.Let_t_of_s_s_eq_symbol (ecc_t, ecc_s) ->
	make_let_t_of_s_s_eq ecc_t ecc_s

    | Cls_t.T_dot_s_s_symbol (ecc_t, ecc_s) ->
	make_t_dot_s_s ecc_t ecc_s 

    | Cls_t.Val_s_off_t_symbol (ecc_t, ecc_s) ->
	make_val_s_off_t ecc_t ecc_s

    | Cls_t.Val_is_s_off_t_symbol (ecc_t, ecc_s) ->
	make_val_is_s_off_t ecc_t ecc_s

    | Cls_t.Val_t_of_s_symbol (ecc_t, ecc_s) ->
	make_val_t_of_s ecc_t ecc_s

    | Cls_t.Val_s_colon_t_symbol (ecc_t, ecc_s) ->
	make_val_s_colon_t ecc_t ecc_s

(* T U *)

    | Cls_t.U_is_b_off_u_u_symbol (ecc_u, ecc_b) ->
	make_u_is_b_off_u_u ecc_u ecc_b

    | Cls_t.Let_u_u_off_t_t_in_symbol (ecc_t, ecc_u) ->
	make_let_u_u_off_t_t_in ecc_t ecc_u

    | Cls_t.If_not_is_u_off_t_t_symbol (ecc_t, ecc_u) ->
	make_if_not_is_u_off_t_t ecc_t ecc_u

    | Cls_t.T_of_u_u_symbol (ecc_t, ecc_u) ->
        make_t_of_u_u ecc_t ecc_u

(* T B *)

    | Cls_t.Let_b_off_t_t_argument_symbol (ecc_t, ecc_b) ->
	make_let_b_off_t_t_argument ecc_t ecc_b

    | Cls_t.Let_is_b_off_t_t_argument_symbol (ecc_t, ecc_b) ->
	make_let_is_b_off_t_t_argument ecc_t ecc_b

    | Cls_t.Let_t_of_b_b_eq_symbol (ecc_t, ecc_b) ->
	make_let_t_of_b_b_eq ecc_t ecc_b

    | Cls_t.Val_t_of_b_symbol (ecc_t, ecc_b) ->
	make_val_t_of_b ecc_t ecc_b

    | Cls_t.Val_b_off_t_symbol (ecc_t, ecc_b) ->
	make_val_b_off_t ecc_t ecc_b

    | Cls_t.Val_is_b_off_t_symbol (ecc_t, ecc_b) ->
	make_val_is_b_off_t ecc_t ecc_b

    | Cls_t.Val_b_colon_t_symbol (ecc_t, ecc_b) ->
	make_val_b_colon_t ecc_t ecc_b

(* S B *)

    | Cls_t.Type_pipe_s_of_b_symbol (ecc_s, ecc_b) ->
	make_type_pipe_s_of_b ecc_s ecc_b 

(* U B *)

    | Cls_t.Let_u_eq_u_dot_u_of_b_b_in_symbol (ecc_u, ecc_b) ->
	make_let_u_eq_u_dot_u_of_b_b_in ecc_u ecc_b

    | Cls_t.B_off_u_u_symbol (ecc_u, ecc_b) ->
	make_b_off_u_u ecc_u ecc_b

;;

let make_trio = function
(* T U B *)
    | Cls_t.Let_b_eq_t_of_u_u_dot_b_symbol (ecc_t, ecc_u, ecc_b) ->
  	make_let_b_eq_t_of_u_u_dot_b ecc_t ecc_u ecc_b

let make_datastructure = function
  | Cls_t.Type_pipe_doublet_a_b_symbol (ecc_a, ecc_b) ->
      make_type_pipe_doublet_a_b ecc_a ecc_b

  | Cls_t.Type_pipe_triplet_a_b_c_symbol (ecc_a, ecc_b, ecc_c) ->
      make_type_pipe_triplet_a_b_c ecc_a ecc_b ecc_c

  | Cls_t.Type_pipe_list_a_symbol ecc_a ->
      make_type_pipe_list_a ecc_a

  | Cls_t.Type_pipe_tree_a_symbol ecc_a ->
      make_type_pipe_tree_a ecc_a

  | Cls_t.Doublet_name_s_a_b_symbol (ecc_s, ecc_a, ecc_b) ->
      make_doublet_name_s_a_b ecc_s ecc_a ecc_b

  | Cls_t.Triplet_name_s_a_b_c_symbol (ecc_s, ecc_a, ecc_b, ecc_c) ->
      make_triplet_name_s_a_b_c ecc_s ecc_a ecc_b ecc_c

  | Cls_t.Tree_name_s_a_symbol (ecc_s, ecc_a) ->
      make_tree_name_s_a ecc_s ecc_a

  | Cls_t.Doublet_print_s_a_b_symbol (ecc_s, ecc_a, ecc_b) ->
      make_doublet_print_s_a_b ecc_s ecc_a ecc_b

  | Cls_t.Triplet_print_s_a_b_c_symbol (ecc_s, ecc_a, ecc_b, ecc_c) ->
      make_triplet_print_s_a_b_c ecc_s ecc_a ecc_b ecc_c 

  | Cls_t.Tree_print_s_a_symbol (ecc_s, ecc_a) ->
      make_tree_print_s_a ecc_s ecc_a
;;

let make = function
    | Cls_t.Constant_symbol smb_cst ->
       make_constant smb_cst

    | Cls_t.Singlet_symbol smb_sgl ->
       make_singlet smb_sgl

    | Cls_t.Pair_symbol smb_par ->
       make_pair smb_par 

    | Cls_t.Trio_symbol smb_tri ->
       make_trio smb_tri 

    | Cls_t.Datastructure_symbol smb_dst ->
	make_datastructure smb_dst
;;

(** {6 Displaying.} *)

(** {6 Naming.} *)

let name val_cli =
  Format.sprintf "%s" val_cli 
;;

(** {6 Printing.} *)

let print ppf val_cli =
  Format.fprintf ppf "%s" (name val_cli)
;;

(** {6 Writing.} *)

let write oc val_cli =
  output_string oc (Format.sprintf "%s@." (name val_cli))
;;

