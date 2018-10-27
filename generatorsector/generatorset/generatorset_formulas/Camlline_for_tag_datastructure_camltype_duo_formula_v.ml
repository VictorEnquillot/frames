(** {3 Camlline_for_tag_datastructure_camltype_duo_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_camltype_duo_formula_v";
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

let symbol_of_formula for_ccd =
  match for_ccd with
  | Camlline_for_tag_datastructure_camltype_duo_formula_t.Lpar_a_b_tag_rpar _ ->
     Camlline_for_tag_datastructure_camltype_duo_symbol_t.Lpar_a_b_tag_rpar

;;

(** {6 Naming_for_formula} *)

let name for_ccd = 
  let sym_ccd = symbol_of_formula for_ccd in
  Camlline_for_tag_datastructure_camltype_duo_symbol_v.name sym_ccd
;;
(* ***

let string_off for_ccd =
  let sym_ccd = symbol_of_formula for_ccd in
  Camlline_for_tag_datastructure_camltype_duo_symbol_v.string_off sym_ccd
;;

let longname for_ccd =
  Format.sprintf "Camlline_for_tag_datastructure_camltype_duo_formula_t.%s" 
    (String.capitalize (name for_ccd))

let fullname for_ccd =
  Format.sprintf "%s \"%s\"" (longname for_ccd) (string_off for_ccd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ccd soi_cal =
  Utilities_v.not_yet_implemented nam_cod "build_n_store for das"
(*   let tag_ccd = Tag_v.make sym_ccd soi_cal in *)
(*   let dec_ccd =  *)
(*     Camlline_for_tag_datastructure_camltype_duo_tag_v.camlline_for_tag_datastructure_camltype_duo_dectup_off_camlline_for_tag_datastructure_camltype_duo_tag  *)
(*       tag_ccd  *)
(*   in *)
(* (\* BT builders *\) *)

(*   let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_ccd in *)
(*   let sym_ent_l =  *)
(*     Camlline_for_tag_datastructure_camltype_duo_interface_v.make  *)
(*       sym_ccd  *)
(*       sym_ent_cur sym_ent_top *)
(*   in *)
(*   let soi_ent_l =               (\* Sole_index_datastructure_of_datastructure_of_sole_index *\) *)
(*     Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
(*       1 (List.length sym_ent_l) *)
(*       soi_cal *)
(*   in *)

(*   let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in *)
(*   Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l; *)
  
(*   List.map2 Tag_v.make sym_ent_l soi_ent_l *)
;;

(** {6 Making_for_formula} *)

let make sym_ccd soi_cal =
  let tag_ent_l = build_n_store sym_ccd soi_cal in
  match sym_ccd with 
  | Camlline_for_tag_datastructure_camltype_duo_symbol_t.Lpar_a_b_tag_rpar ->
     Camlline_for_tag_datastructure_camltype_duo_formula_t.Lpar_a_b_tag_rpar tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccd =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccd in
  let sym_ccd = Tag_v.entity_off_tag tag_ccd in
  make sym_ccd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd =
  match for_ccd with
  | Camlline_for_tag_datastructure_camltype_duo_formula_t.Lpar_a_b_tag_rpar tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_tag tag_ccd =
  let for_ccd = retrieve tag_ccd in
  entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd
;; 

(** {6 Iterating_for_formula_for_tag_datastructure_camltype_duo.} *)

let map f_of_tag_ent for_ccd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccd_1 for_ccd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccd_1 for_ccd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_camltype_duo_formula for_ccd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

