(** {3 Item_for_symbol_each_grandson_ofstring_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_for_symbol_each_grandson_ofstring_value_v";
   "Needed-by : VGNR:Item_each_grandson_ofstring_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlparagraph_value_list_off_item_for_symbol_each_grandson_ofstring_tag tag_ifs =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_for_symbol_each_grandson_ofstring_tag 
      tag_ifs 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making} *)

let make sym_ifs soi_ite =
  let tag_ifs = Tag_v.make sym_ifs soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_for_symbol_each_grandson_ofstring_tag tag_ifs in

  match sym_ifs with
  | Item_for_symbol_each_grandson_ofstring_symbol_t.Abbreviating_grandson_ofstring_for_symbol ->
      Item_for_symbol_each_grandson_ofstring_value_t.Abbreviating_grandson_ofstring_for_symbol val_cap_l

  | Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol ->
      Item_for_symbol_each_grandson_ofstring_value_t.Querying_grandson_ofstring_for_symbol val_cap_l
;;

(** {6 Retrieving} *)

let retrieve tag_ifs =
  let sym_ifs = Tag_v.entity_off_tag tag_ifs in
  let soi_ite = Tag_v.sole_index_off_tag tag_ifs in
  make sym_ifs soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_for_symbol_each_grandson_ofstring_tag tag_ifs =
  let val_cap_l = camlparagraph_value_list_off_item_for_symbol_each_grandson_ofstring_tag tag_ifs in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_for_symbol_each_grandson_ofstring_value val_ifs =
  match val_ifs with
  | Item_for_symbol_each_grandson_ofstring_value_t.Abbreviating_grandson_ofstring_for_symbol val_cap_l -> val_cap_l
  | Item_for_symbol_each_grandson_ofstring_value_t.Querying_grandson_ofstring_for_symbol val_cap_l -> val_cap_l

;;
