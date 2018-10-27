(** {3 Usagefile_for_formula_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Usagefile_for_formula_interface_v";
   "Current : FGNR:Usagefile_for_formula_formula_v";
   "Needed-by : FGNR:Usagefile_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula = function
  | Usagefile_for_formula_formula_t.Implementation_for_formula _ -> 
      Usagefile_for_formula_symbol_t.Implementation_for_formula

  | Usagefile_for_formula_formula_t.Interface_for_formula _ -> 
      Usagefile_for_formula_symbol_t.Interface_for_formula
;;

(** {6 Naming_for_formula} *)

let name for_uff = 
  let sym_uff = symbol_of_formula for_uff in
  Usagefile_for_formula_symbol_v.name sym_uff
;;
(* ***

let string_off for_uff =
  let sym_uff = symbol_of_formula for_uff in
  Usagefile_for_formula_symbol_v.string_off sym_uff
;;

let longname for_uff =
  Format.sprintf "Usagefile_for_formula_formula_t.%s" 
    (String.capitalize (name for_uff))

let fullname for_uff =
  Format.sprintf "%s \"%s\"" (longname for_uff) (string_off for_uff)
;;
* **)

(** {6 Building_and_storing} *)

let build_n_store sym_uff soi_usf =
  let tag_uff = Tag_v.make sym_uff soi_usf in
  let qui_uff = 
    Usagefile_for_formula_tag_v.usagefile_for_formula_quitup_off_usagefile_for_formula_tag
      tag_uff 
  in
  let sym_ite_l = Usagefile_for_formula_interface_v.make_of_tuple qui_uff in
  let soi_usf_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ite_l)
      soi_usf
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_item_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ite_l soi_usf_l;
  
  List.map2 Tag_v.make sym_ite_l soi_usf_l
;;

(** {6 Making_for_formula} *)

let make sym_uff soi_usf =
  let tag_ite_l = build_n_store sym_uff soi_usf in

  match sym_uff with 
  | Usagefile_for_formula_symbol_t.Implementation_for_formula -> 
      Usagefile_for_formula_formula_t.Implementation_for_formula tag_ite_l

  | Usagefile_for_formula_symbol_t.Interface_for_formula -> 
      Usagefile_for_formula_formula_t.Interface_for_formula tag_ite_l
;;

(** {6 Builder_topson_tag_listing} *)

let item_tag_list_off_usagefile_for_formula_formula = function
  | Usagefile_for_formula_formula_t.Implementation_for_formula tag_ite_l -> 
      tag_ite_l

  | Usagefile_for_formula_formula_t.Interface_for_formula tag_ite_l -> 
      tag_ite_l
;;

(** {6 Builder_leaf_tag_listing} *)

let camlline_tag_list_off_usagefile_for_formula_formula for_uff =
  let tag_ite_l = 
    item_tag_list_off_usagefile_for_formula_formula 
      for_uff 
  in
  let for_ite_l = List.map
      Item_formula_v.retrieve 
      tag_ite_l 
  in
  let tag_cal_ll = List.map
      Item_formula_v.camlline_tag_list_off_item_formula 
      for_ite_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_ite for_uff = 
  let tag_ite_l = camlline_tag_list_off_usagefile_for_formula_formula for_uff in
  List.map f_of_tag_ite tag_ite_l
;;

let iter f_of_tag_ite for_uff = 
  let tag_ite_l = camlline_tag_list_off_usagefile_for_formula_formula for_uff in
  List.iter f_of_tag_ite tag_ite_l ;;

(** {6 Iterating_two_functions_for_formula} *)

let map2 f_of_tag_ite for_uff_1 for_uff_2  = 
  let tag_ite_l_1 = camlline_tag_list_off_usagefile_for_formula_formula for_uff_1 in
  let tag_ite_l_2 = camlline_tag_list_off_usagefile_for_formula_formula for_uff_2 in
  List.map2 f_of_tag_ite tag_ite_l_1 tag_ite_l_2
;;

let iter2 f_of_tag_ite for_uff_1 for_uff_2 = 
  let tag_ite_l_1 = camlline_tag_list_off_usagefile_for_formula_formula for_uff_1 in
  let tag_ite_l_2 = camlline_tag_list_off_usagefile_for_formula_formula for_uff_2 in
  List.iter2 f_of_tag_ite tag_ite_l_1 tag_ite_l_2 
;;

