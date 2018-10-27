(** {3 Group_for_symbol_header_current_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_symbol_header_current_interface_v";
   "Current : FGNR:Group_for_symbol_header_current_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ghc =
  match for_ghc with
  | Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_bare _ -> 
      Group_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_bare

  | Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_ofstring _ -> 
      Group_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_ofstring

  | Group_for_symbol_header_current_formula_t.Let_is_grandson_bare _ -> 
      Group_for_symbol_header_current_symbol_t.Let_is_grandson_bare

  | Group_for_symbol_header_current_formula_t.Let_is_grandson_ofstring _ -> 
      Group_for_symbol_header_current_symbol_t.Let_is_grandson_ofstring

;;

(** {6 Naming_for_formula} *)

let name for_ghc = 
  let sym_ghc = symbol_of_formula for_ghc in
  Group_for_symbol_header_current_symbol_v.name sym_ghc
;;
(* ***

let string_off for_ghc =
  let sym_ghc = symbol_of_formula for_ghc in
  Group_for_symbol_header_current_symbol_v.string_off sym_ghc
;;

let longname for_ghc =
  Format.sprintf "Group_for_symbol_header_current_formula_t.%s" 
    (String.capitalize (name for_ghc))

let fullname for_ghc =
  Format.sprintf "%s \"%s\"" (longname for_ghc) (string_off for_ghc)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ghc soi_gro =
  let tag_ghc = Tag_v.make sym_ghc soi_gro in
  let non_ghc = 
    Group_for_symbol_header_current_tag_v.group_for_symbol_header_current_nontup_off_group_for_symbol_header_current_tag 
      tag_ghc 
  in
  let sym_cal_l = Group_for_symbol_header_current_interface_v.make non_ghc soi_gro in
  let soi_cal_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cal_l)
      soi_gro
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cal_l soi_cal_l;
  
  List.map2 Tag_v.make sym_cal_l soi_cal_l
;;

(** {6 Making_for_formula} *)

let make sym_ghc soi_gro =
  let tag_cal_l = build_n_store sym_ghc soi_gro in

  match sym_ghc with 
  | Group_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_bare -> 
      Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_bare tag_cal_l

  | Group_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_ofstring -> 
      Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_ofstring tag_cal_l

  | Group_for_symbol_header_current_symbol_t.Let_is_grandson_bare _ -> 
      Group_for_symbol_header_current_formula_t.Let_is_grandson_bare tag_cal_l

  | Group_for_symbol_header_current_symbol_t.Let_is_grandson_ofstring -> 
      Group_for_symbol_header_current_formula_t.Let_is_grandson_ofstring tag_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_ghc =
  let soi_gro = Tag_v.sole_index_off_tag tag_ghc in
  let sym_ghc = Tag_v.entity_off_tag tag_ghc in
  make sym_ghc soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc =
  match for_ghc with
  | Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_bare tag_cal_l -> 
      tag_cal_l

  | Group_for_symbol_header_current_formula_t.Let_abbreviate_grandson_ofstring tag_cal_l -> 
      tag_cal_l

  | Group_for_symbol_header_current_formula_t.Let_is_grandson_bare tag_cal_l -> 
      tag_cal_l

  | Group_for_symbol_header_current_formula_t.Let_is_grandson_ofstring tag_cal_l -> 
      tag_cal_l
;;

let camlline_tag_list_off_group_for_symbol_header_current_tag tag_ghc =
  let for_ghc = retrieve tag_ghc in
  camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc
;; 

(** {6 Iterating_for_formula_for_symbol_header_current.} *)

let map f_of_tag_cal for_ghc = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_ghc = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_ghc_1 for_ghc_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_ghc_1 for_ghc_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_header_current_formula for_ghc_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

