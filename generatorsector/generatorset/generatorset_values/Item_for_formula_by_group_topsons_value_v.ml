(** {3 Item_for_formula_by_group_topsons_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_for_formula_by_group_topsons_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlparagraph_value_list_off_item_for_formula_by_group_topsons_tag tag_igt =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_for_formula_by_group_topsons_tag 
      tag_igt 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making_for_value} *)

let make sym_igt soi_ite =
  let tag_igt = Tag_v.make sym_igt soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_for_formula_by_group_topsons_tag tag_igt in
  match sym_igt with
  | Item_for_formula_by_group_topsons_symbol_t.Builder_tag_listing_off_formula ->
     Item_for_formula_by_group_topsons_value_t.Builder_tag_listing_off_formula val_cap_l
  | Item_for_formula_by_group_topsons_symbol_t.Making_for_formula ->
     Item_for_formula_by_group_topsons_value_t.Making_for_formula val_cap_l
  | Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula ->
     Item_for_formula_by_group_topsons_value_t.Symbolizing_for_formula val_cap_l
  | Item_for_formula_by_group_topsons_symbol_t.Typing_for_formula ->
     Item_for_formula_by_group_topsons_value_t.Typing_for_formula val_cap_l

;;

(** {6 Retrieving} *)

let retrieve tag_igt =
  let sym_igt = Tag_v.entity_off_tag tag_igt in
  let soi_ite = Tag_v.sole_index_off_tag tag_igt in
  make sym_igt soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_for_formula_by_group_topsons_tag tag_igt =
  let val_cap_l = camlparagraph_value_list_off_item_for_formula_by_group_topsons_tag tag_igt in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_for_formula_by_group_topsons_value val_igt =
  match val_igt with
  | Item_for_formula_by_group_topsons_value_t.Builder_tag_listing_off_formula val_cap_l -> val_cap_l 
  | Item_for_formula_by_group_topsons_value_t.Making_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_by_group_topsons_value_t.Symbolizing_for_formula val_cap_l -> val_cap_l 
  | Item_for_formula_by_group_topsons_value_t.Typing_for_formula val_cap_l -> val_cap_l 

;;
