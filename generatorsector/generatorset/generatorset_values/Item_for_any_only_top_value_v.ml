(** {3 Item_for_any_only_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_for_any_only_top_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlparagraph_value_list_off_item_for_any_only_top_tag tag_iii =
  let tag_ite = 
    Item_tag_v.item_tag_of_item_for_any_only_top_tag 
      tag_iii 
  in
  let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite in
  List.map Camlparagraph_value_v.retrieve tag_cap_l
;;

(** {6 Making} *)

let make sym_iii soi_ite =
  let tag_iii = Tag_v.make sym_iii soi_ite in
  let val_cap_l = camlparagraph_value_list_off_item_for_any_only_top_tag tag_iii in
  match sym_iii with
  | Item_for_any_only_top_symbol_t.Ending ->
      Item_for_any_only_top_value_t.Ending val_cap_l

  | Item_for_any_only_top_symbol_t.Heading ->
      Item_for_any_only_top_value_t.Heading val_cap_l
;;

(** {6 Retrieving} *)

let retrieve tag_iii =
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  make sym_iii soi_ite
;;

(** {6 Extracting} *)

let string_list_off_item_for_any_only_top_tag tag_iii =
  let val_cap_l = camlparagraph_value_list_off_item_for_any_only_top_tag tag_iii in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

let camlparagraph_value_list_off_item_for_any_only_top_value val_iii =
  match val_iii with
  | Item_for_any_only_top_value_t.Ending val_cap_l -> val_cap_l

  | Item_for_any_only_top_value_t.Heading val_cap_l -> val_cap_l
;;
