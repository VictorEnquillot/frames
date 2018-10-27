(** {3 Camlline_for_formula_datastructure_duo_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_datastructure_duo_formula_v";
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

let symbol_of_formula for_cdd =
  match for_cdd with
  | Camlline_for_formula_datastructure_duo_formula_t.Das_vdot_name_nam_a_nam_b_for_at _ ->
     Camlline_for_formula_datastructure_duo_symbol_t.Das_vdot_name_nam_a_nam_b_for_at

;;

(** {6 Naming_for_formula} *)

let name for_cdd = 
  let sym_cdd = symbol_of_formula for_cdd in
  Camlline_for_formula_datastructure_duo_symbol_v.name sym_cdd
;;
(* ***

let string_off for_cdd =
  let sym_cdd = symbol_of_formula for_cdd in
  Camlline_for_formula_datastructure_duo_symbol_v.string_off sym_cdd
;;

let longname for_cdd =
  Format.sprintf "Camlline_for_formula_datastructure_duo_formula_t.%s" 
    (String.capitalize (name for_cdd))

let fullname for_cdd =
  Format.sprintf "%s \"%s\"" (longname for_cdd) (string_off for_cdd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cdd soi_cal =
    Utilities_v.not_yet_implemented nam_cod "build_n_store for das"
(*   let tag_cdd = Tag_v.make sym_cdd soi_cal in *)
(*   let dec_cdd =  *)
(*     Camlline_for_formula_datastructure_duo_tag_v.camlline_for_formula_datastructure_duo_dectup_off_camlline_for_formula_datastructure_duo_tag  *)
(*       tag_cdd  *)
(*   in *)

(* (\* BT builders *\) *)

(*   let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cdd in *)
(*   let sym_ent_l =  *)
(*     Camlline_for_formula_datastructure_duo_interface_v.make  *)
(*       sym_cdd  *)
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

let make sym_cdd soi_cal =
  let tag_ent_l = build_n_store sym_cdd soi_cal in
  match sym_cdd with 
  | Camlline_for_formula_datastructure_duo_symbol_t.Das_vdot_name_nam_a_nam_b_for_at ->
     Camlline_for_formula_datastructure_duo_formula_t.Das_vdot_name_nam_a_nam_b_for_at tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cdd =
  let soi_gro = Tag_v.sole_index_off_tag tag_cdd in
  let sym_cdd = Tag_v.entity_off_tag tag_cdd in
  make sym_cdd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd =
  match for_cdd with
  | Camlline_for_formula_datastructure_duo_formula_t.Das_vdot_name_nam_a_nam_b_for_at tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_datastructure_duo_tag tag_cdd =
  let for_cdd = retrieve tag_cdd in
  entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd
;; 

(** {6 Iterating_for_formula_for_formula_datastructure_duo.} *)

let map f_of_tag_ent for_cdd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cdd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cdd_1 for_cdd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cdd_1 for_cdd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_datastructure_duo_formula for_cdd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

