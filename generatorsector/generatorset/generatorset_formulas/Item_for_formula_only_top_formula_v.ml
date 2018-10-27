(** {3 Item_for_formula_only_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Item_for_formula_only_top_interface_v";
   "Current : FGNR:Item_for_formula_only_top_formula_v";
   "Needed-by : FGNR:Item_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing_for_formula} *)

let symbol_of_formula for_iot =
  match for_iot with
  | Item_for_formula_only_top_formula_t.Builder_tag_listing_off_tag _ ->
     Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag
  | Item_for_formula_only_top_formula_t.Building_and_storing_basic_sons _ ->
     Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons
  | Item_for_formula_only_top_formula_t.Building_and_storing_proper_sons _ ->
     Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons
  | Item_for_formula_only_top_formula_t.Data_tag_listing_off_formula _ ->
     Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula
  | Item_for_formula_only_top_formula_t.Data_tag_listing_off_tag _ ->
     Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag
  | Item_for_formula_only_top_formula_t.Documenting_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Documenting_for_formula
  | Item_for_formula_only_top_formula_t.Fullnaming_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Fullnaming_for_formula
  | Item_for_formula_only_top_formula_t.Iterating_one_function_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula
  | Item_for_formula_only_top_formula_t.Iterating_two_functions_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula
  | Item_for_formula_only_top_formula_t.Longnaming_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Longnaming_for_formula
  | Item_for_formula_only_top_formula_t.Naming_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Naming_for_formula
  | Item_for_formula_only_top_formula_t.Retrieving_for_formula _ ->
     Item_for_formula_only_top_symbol_t.Retrieving_for_formula
  | Item_for_formula_only_top_formula_t.String_offing_for_formula _ ->
     Item_for_formula_only_top_symbol_t.String_offing_for_formula
;;

(** {6 Naming_for_formula} *)

let name for_iot = 
  let sym_iot = symbol_of_formula for_iot in
  Item_for_formula_only_top_symbol_v.name sym_iot
;;
(* ***

let string_off for_iot =
  let sym_iot = symbol_of_formula for_iot in
  Item_for_formula_only_top_symbol_v.string_off sym_iot
;;

let longname for_iot =
  Format.sprintf "Item_for_formula_only_top_formula_t.%s" 
    (String.capitalize (name for_iot))

let fullname for_iot =
  Format.sprintf "%s \"%s\"" (longname for_iot) (string_off for_iot)
;;
* **)

(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_iot soi_ite =
  let sym_cap_l = Item_for_formula_only_top_interface_v.make sym_iot in
  let soi_cap_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cap_l)
      soi_ite
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cap_l soi_cap_l;
  
  List.map2 Tag_v.make sym_cap_l soi_cap_l
;;

(** {6 Making_for_formula} *)

let make sym_iot soi_ite =
  let tag_cap_l = build_n_store sym_iot soi_ite in

  match sym_iot with 
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag ->
     Item_for_formula_only_top_formula_t.Builder_tag_listing_off_tag tag_cap_l
  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons ->
     Item_for_formula_only_top_formula_t.Building_and_storing_basic_sons tag_cap_l
  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons ->
     Item_for_formula_only_top_formula_t.Building_and_storing_proper_sons tag_cap_l
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula ->
     Item_for_formula_only_top_formula_t.Data_tag_listing_off_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag ->
     Item_for_formula_only_top_formula_t.Data_tag_listing_off_tag tag_cap_l
  | Item_for_formula_only_top_symbol_t.Documenting_for_formula ->
     Item_for_formula_only_top_formula_t.Documenting_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula ->
     Item_for_formula_only_top_formula_t.Fullnaming_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula ->
     Item_for_formula_only_top_formula_t.Iterating_one_function_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula ->
     Item_for_formula_only_top_formula_t.Iterating_two_functions_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula ->
     Item_for_formula_only_top_formula_t.Longnaming_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Naming_for_formula ->
     Item_for_formula_only_top_formula_t.Naming_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula ->
     Item_for_formula_only_top_formula_t.Retrieving_for_formula tag_cap_l
  | Item_for_formula_only_top_symbol_t.String_offing_for_formula ->
     Item_for_formula_only_top_formula_t.String_offing_for_formula tag_cap_l
;;

(** {6 Retrieving_for_formula} *)

let retrieve tag_iot =
  let soi_ite = Tag_v.sole_index_off_tag tag_iot in
  let sym_iot = Tag_v.entity_off_tag tag_iot in
  make sym_iot soi_ite 
;; 

(** {6 Builder_tag_listing_off_formula} *)

let camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot =
  match for_iot with

  | Item_for_formula_only_top_formula_t.Builder_tag_listing_off_tag tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Building_and_storing_basic_sons tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Building_and_storing_proper_sons tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Data_tag_listing_off_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Data_tag_listing_off_tag tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Documenting_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Fullnaming_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Iterating_one_function_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Iterating_two_functions_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Longnaming_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Naming_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.Retrieving_for_formula tag_cap_l -> tag_cap_l
  | Item_for_formula_only_top_formula_t.String_offing_for_formula tag_cap_l -> tag_cap_l
;;

(** {6 Builder_tag_listing_off_tag} *)

let camlparagraph_tag_list_off_item_for_formula_only_top_tag tag_iot =
  let for_iot = retrieve tag_iot in
  camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot
;; 

(** {6 Builder_leaf_tag_listing_off_formula} *)

let camlline_tag_list_off_item_for_formula_only_top_formula for_iot =
  let tag_cap_l = 
    camlparagraph_tag_list_off_item_for_formula_only_top_formula 
      for_iot 
  in
  let for_cap_l = List.map
      Camlparagraph_formula_v.retrieve 
      tag_cap_l 
  in
  let tag_cal_ll = List.map
      Camlparagraph_formula_v.camlline_tag_list_off_camlparagraph_formula 
      for_cap_l
  in 
  List.flatten tag_cal_ll
;;

(** {6 Builder_leaf_tag_listing_off_tag} *)

let camlline_tag_list_off_item_for_formula_only_top_tag tag_iot =
  let for_iot = retrieve tag_iot in
  camlline_tag_list_off_item_for_formula_only_top_formula for_iot
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cap for_iot = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_iot = 
  let tag_cap_l = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot in
  List.iter f_of_tag_cap tag_cap_l ;;

(** {6 Iterating_two_functions_for_formula} *)

let map2 f_of_tag_cap for_iot_1 for_iot_2  = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_iot_1 for_iot_2 = 
  let tag_cap_l_1 = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot_1 in
  let tag_cap_l_2 = camlparagraph_tag_list_off_item_for_formula_only_top_formula for_iot_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

