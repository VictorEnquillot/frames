(** {3 Item_for_formula_only_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_for_formula_only_top_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlparagraph_value_list_off_item_for_formula_only_top_tag tag_iot =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_for_formula_only_top_tag 
      tag_iot 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making_for_value} *)

let make sym_iot soi_ite =
  let tag_iot = Tag_v.make sym_iot soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_for_formula_only_top_tag tag_iot in
  match sym_iot with
  | Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag ->
     Item_for_formula_only_top_value_t.Builder_tag_listing_off_tag val_cap_l
  | Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons ->
     Item_for_formula_only_top_value_t.Building_and_storing_basic_sons val_cap_l
  | Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons ->
     Item_for_formula_only_top_value_t.Building_and_storing_proper_sons val_cap_l
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula ->
     Item_for_formula_only_top_value_t.Data_tag_listing_off_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag ->
     Item_for_formula_only_top_value_t.Data_tag_listing_off_tag val_cap_l
  | Item_for_formula_only_top_symbol_t.Documenting_for_formula ->
     Item_for_formula_only_top_value_t.Documenting_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Fullnaming_for_formula ->
     Item_for_formula_only_top_value_t.Fullnaming_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Iterating_one_function_for_formula ->
     Item_for_formula_only_top_value_t.Iterating_one_function_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Iterating_two_functions_for_formula ->
     Item_for_formula_only_top_value_t.Iterating_two_functions_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Longnaming_for_formula ->
     Item_for_formula_only_top_value_t.Longnaming_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Naming_for_formula ->
     Item_for_formula_only_top_value_t.Naming_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.Retrieving_for_formula ->
     Item_for_formula_only_top_value_t.Retrieving_for_formula val_cap_l
  | Item_for_formula_only_top_symbol_t.String_offing_for_formula ->
     Item_for_formula_only_top_value_t.String_offing_for_formula val_cap_l

;;

(** {6 Retrieving} *)

let retrieve tag_iot =
  let sym_iot = Tag_v.entity_off_tag tag_iot in
  let soi_ite = Tag_v.sole_index_off_tag tag_iot in
  make sym_iot soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_for_formula_only_top_tag tag_iot =
  let val_cap_l = camlparagraph_value_list_off_item_for_formula_only_top_tag tag_iot in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_for_formula_only_top_value val_iot =
  match val_iot with
  | Item_for_formula_only_top_value_t.Builder_tag_listing_off_tag val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Building_and_storing_basic_sons val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Building_and_storing_proper_sons val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Data_tag_listing_off_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Data_tag_listing_off_tag val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Documenting_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Fullnaming_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Iterating_one_function_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Iterating_two_functions_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Longnaming_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Naming_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.Retrieving_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_only_top_value_t.String_offing_for_formula val_cap_l -> val_cap_l 

;;
