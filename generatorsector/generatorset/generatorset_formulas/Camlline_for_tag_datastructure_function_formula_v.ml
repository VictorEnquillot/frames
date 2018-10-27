(** {3 Camlline_for_tag_datastructure_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_datastructure_function_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cdf = 
  match for_cdf with
  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_iter_formula for_cc1 ->
      Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol
        (Camlline_for_tag_datastructure_function_iter_formula_v.symbol_of_formula for_cc1)

  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_make_formula for_cc2 ->
      Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol
        (Camlline_for_tag_datastructure_function_make_formula_v.symbol_of_formula for_cc2)

  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_name _ ->
      Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name

;;

(** {6 Naming_for_formula} *)

let name for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_tag_datastructure_function_symbol_v.name sym_cdf
;;
(* ***
let longname for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_tag_datastructure_function_symbol_v.longname sym_cdf
;;

let string_off for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_tag_datastructure_function_symbol_v.string_off sym_cdf
;;

let fullname for_cdf =
  let sym_cdf = symbol_of_formula for_cdf in
  Camlline_for_tag_datastructure_function_symbol_v.longname sym_cdf
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cfi soi_cal =
    Utilities_v.not_yet_implemented nam_cod "build_n_store for das"
(*   let tag_cfi = Tag_v.make sym_cfi soi_cal in *)
(*   let dec_cfi =  *)
(*     Camlline_for_tag_datastructure_function_name_tag_v.camlline_for_tag_datastructure_function_name_dectup_off_camlline_for_tag_datastructure_function_name_tag  *)
(*       tag_cfi  *)
(*   in *)

(* (\* BT builders *\) *)

(*   let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_cfi in *)
(*   let sym_ent_l =  *)
(*     Camlline_for_tag_datastructure_function_name_interface_v.make  *)
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

let make sym_cdf soi_cal =
  match sym_cdf with 
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol sym_cc1 ->
      Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_iter_formula 
        (Camlline_for_tag_datastructure_function_iter_formula_v.make sym_cc1 soi_cal)
	
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol sym_cc2 ->
      Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_make_formula 
        (Camlline_for_tag_datastructure_function_make_formula_v.make sym_cc2 soi_cal)
	
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name ->
      let tag_ent_l = build_n_store sym_cdf soi_cal in
      Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_name tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cdf =
  let soi_cal = Tag_v.sole_index_off_tag tag_cdf in
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  make sym_cdf soi_cal 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf =
  match for_cdf with 
  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_iter_formula for_cc1 ->
      Camlline_for_tag_datastructure_function_iter_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_iter_formula for_cc1
	
  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_make_formula for_cc2 ->
      Camlline_for_tag_datastructure_function_make_formula_v.entity_tag_list_off_camlline_for_tag_datastructure_function_make_formula for_cc2
	
  | Camlline_for_tag_datastructure_function_formula_t.Camlline_for_tag_datastructure_function_name tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_tag_datastructure_function_tag tag_cdf =
  let for_cdf = retrieve tag_cdf in
  entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf
;;

(** {6 Iterating_for_formula} *)

let map f for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf in
  List.map f tag_ent_l
;;

let iter f for_cdf = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf in
  List.iter f tag_ent_l ;;

let map2 f for_cdf_1 for_cdf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cdf_1 for_cdf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_datastructure_function_formula for_cdf_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

