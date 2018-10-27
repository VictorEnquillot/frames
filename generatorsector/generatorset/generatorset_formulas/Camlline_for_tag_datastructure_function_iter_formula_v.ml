(** {3 Camlline_for_tag_datastructure_function_iter_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_function_iter_formula_v";
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

let symbol_of_formula for_cfi =
  match for_cfi with
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_map_equal_das_vdot_map _ ->
     Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map_equal_das_vdot_map
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_map2_equal_das_vdot_map2 _ ->
     Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map2_equal_das_vdot_map2
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter_equal_das_vdot_iter _ ->
     Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter_equal_das_vdot_iter
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter2_equal_das_vdot_iter2 _ ->
     Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter2_equal_das_vdot_iter2

;;

(** {6 Naming_for_formula} *)

let name for_cfi = 
  let sym_cfi = symbol_of_formula for_cfi in
  Camlline_for_tag_datastructure_function_iter_symbol_v.name sym_cfi
;;
(* ***

let string_off for_cfi =
  let sym_cfi = symbol_of_formula for_cfi in
  Camlline_for_tag_datastructure_function_iter_symbol_v.string_off sym_cfi
;;

let longname for_cfi =
  Format.sprintf "Camlline_for_tag_datastructure_function_iter_formula_t.%s" 
    (String.capitalize (name for_cfi))

let fullname for_cfi =
  Format.sprintf "%s \"%s\"" (longname for_cfi) (string_off for_cfi)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cfi soi_cal =
    Utilities_v.not_yet_implemented nam_cod "build_n_store for das"
(*   let tag_cfi = Tag_v.make sym_cfi soi_cal in *)
(*   let dec_cfi =  *)
(*     Camlline_for_tag_datastructure_function_iter_tag_v.camlline_for_tag_datastructure_function_iter_dectup_off_camlline_for_tag_datastructure_function_iter_tag  *)
(*       tag_cfi  *)
(*   in *)

(* (\* BT builders *\) *)

(*   let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cfi in *)
(*   let sym_ent_l =  *)
(*     Camlline_for_tag_datastructure_function_iter_interface_v.make  *)
(*       sym_cfi  *)
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

let make sym_cfi soi_cal =
  let tag_ent_l = build_n_store sym_cfi soi_cal in
  match sym_cfi with 
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map_equal_das_vdot_map ->
     Camlline_for_tag_datastructure_function_iter_formula_t.Let_map_equal_das_vdot_map tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_map2_equal_das_vdot_map2 ->
     Camlline_for_tag_datastructure_function_iter_formula_t.Let_map2_equal_das_vdot_map2 tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter_equal_das_vdot_iter ->
     Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter_equal_das_vdot_iter tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_symbol_t.Let_iter2_equal_das_vdot_iter2 ->
     Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter2_equal_das_vdot_iter2 tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cfi =
  let soi_gro = Tag_v.sole_index_off_tag tag_cfi in
  let sym_cfi = Tag_v.entity_off_tag tag_cfi in
  make sym_cfi soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi =
  match for_cfi with
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_map_equal_das_vdot_map tag_ent_l -> tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_map2_equal_das_vdot_map2 tag_ent_l -> tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter_equal_das_vdot_iter tag_ent_l -> tag_ent_l
  | Camlline_for_tag_datastructure_function_iter_formula_t.Let_iter2_equal_das_vdot_iter2 tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_tag_datastructure_function_iter_tag tag_cfi =
  let for_cfi = retrieve tag_cfi in
  entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi
;; 

(** {6 Iterating_for_formula_for_tag_datastructure_function_iter.} *)

let map f_of_tag_ent for_cfi = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cfi = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cfi_1 for_cfi_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cfi_1 for_cfi_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cfi_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

