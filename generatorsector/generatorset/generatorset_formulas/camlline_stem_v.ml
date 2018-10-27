(** {3 Camlline_stem_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_stem_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sss =

;;

(** {6 Naming_for_formula} *)

let name for_sss = 
  let sym_sss = symbol_of_formula for_sss in
  Camlline_stem_symbol_v.name sym_sss
;;
(* ***

let string_off for_sss =
  let sym_sss = symbol_of_formula for_sss in
  Camlline_stem_symbol_v.string_off sym_sss
;;

let longname for_sss =
  Format.sprintf "Camlline_stem_formula_t.%s" 
    (String.capitalize (name for_sss))

let fullname for_sss =
  Format.sprintf "%s \"%s\"" (longname for_sss) (string_off for_sss)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sss soi_cal =
  let tag_sss = Tag_v.make sym_sss soi_cal in
  let dec_sss = 
    Camlline_stem_tag_v.camlline_stem_dectup_off_camlline_stem_tag 
      tag_sss 
  in
(****
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_tos_l = Tools_ignr_v.entity_topson_symbol_list_of_dectup dec_sss in
  let sym_ent_cur = 
    try List.nth sym_ent_tos_l (idx_gro-1) 
    with | Failure "nth" ->
      Error_messages_v.print_fatal_error nam_cod "make"
	"Number of Notleaf Entity_symbol > 0"
	(Format.sprintf "None of them for Camlline >%s< when idx_gro = %i" 
	   (Camlline_stem_symbol_v.name sym_sss) idx_gro
	)
	"Check"
  in
***)

(* BT builders *)

  let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_sss in
  let sym_ent_l = 
    Camlline_stem_interface_v.make 
      sym_sss 
      sym_ent_cur sym_ent_top
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_sss soi_cal =
  let tag_ent_l = build_n_store sym_sss soi_cal in
  match sym_sss with 
;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_gro = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_stem_formula for_sss =

;;

let entity_tag_list_off_camlline_stem_tag tag_sss =
  let for_sss = retrieve tag_sss in
  entity_tag_list_off_camlline_stem_formula for_sss
;; 

(** {6 Iterating_for_formula_stem.} *)

let map f_of_tag_ent for_sss = 
  let tag_ent_l = entity_tag_list_off_camlline_stem_formula for_sss in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_sss = 
  let tag_ent_l = entity_tag_list_off_camlline_stem_formula for_sss in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_sss_1 for_sss_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_stem_formula for_sss_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_stem_formula for_sss_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_sss_1 for_sss_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_stem_formula for_sss_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_stem_formula for_sss_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

