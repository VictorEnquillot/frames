(** {3 Item_only_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_only_top_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_iot soi_ite =
  match sym_iot with
  | Item_only_top_symbol_t.Item_for_any_only_top_symbol sym_is1 ->
      Item_only_top_value_t.Item_for_any_only_top_value
	(Item_for_any_only_top_value_v.make sym_is1 soi_ite)

  | Item_only_top_symbol_t.Item_only_top_for_formula_symbol sym_is2 ->
      Item_only_top_value_t.Item_only_top_for_formula_value
	(Item_only_top_for_formula_value_v.make sym_is2 soi_ite)

  | Item_only_top_symbol_t.Item_for_symbol_only_top_symbol sym_is2 ->
      Item_only_top_value_t.Item_for_symbol_only_top_value
	(Item_for_symbol_only_top_value_v.make sym_is2 soi_ite)
;;

(** {6 Retrieving} *)

let retrieve tag_iot =
  let soi_ite = Tag_v.sole_index_off_tag tag_iot in
  let sym_iot = Tag_v.entity_off_tag tag_iot in
  make sym_iot soi_ite
;;

(** {6 Extracting} *)

let camlparagraph_value_list_off_item_only_top_value val_iot =
  match val_iot with
  | Item_only_top_value_t.Item_for_any_only_top_value val_is1 ->
      Item_for_any_only_top_value_v.camlparagraph_value_list_off_item_for_any_only_top_value val_is1

  | Item_only_top_value_t.Item_only_top_for_formula_value val_is2 ->
      Item_only_top_for_formula_value_v.camlparagraph_value_list_off_item_only_top_for_formula_value val_is2

  | Item_only_top_value_t.Item_for_symbol_only_top_value val_is3 ->
      Item_for_symbol_only_top_value_v.camlparagraph_value_list_off_item_for_symbol_only_top_value val_is3
;;

let string_list_off_item_only_top_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_only_top_value val_ite in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

