(** {3 Item_for_symbol_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Item_for_symbol_value_v";
   "Needed-by : VGNR:Item_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_iii soi_ite =
  match sym_iii with
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_grandson_bare_value
	(Item_for_symbol_each_grandson_bare_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_grandson_ofstring_value
	(Item_for_symbol_each_grandson_ofstring_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_grandson_notleaf_value
	(Item_for_symbol_each_grandson_notleaf_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_topson_bare_value
	(Item_for_symbol_each_topson_bare_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_topson_ofstring_value
	(Item_for_symbol_each_topson_ofstring_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_each_topson_notleaf_value
	(Item_for_symbol_each_topson_notleaf_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_by_group_topsons_value
	(Item_for_symbol_by_group_topsons_value_v.make sym_is2 soi_ite)

  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_is2 ->
      Item_for_symbol_value_t.Item_for_symbol_only_top_value
	(Item_for_symbol_only_top_value_v.make sym_is2 soi_ite)
;;

(** {6 Retrieving} *)

let retrieve tag_iii =
  let soi_ite = Tag_v.sole_index_off_tag tag_iii in
  let sym_iii = Tag_v.entity_off_tag tag_iii in
  make sym_iii soi_ite
;;

(** {6 Extracting} *)

let camlparagraph_value_list_off_item_for_symbol_value val_iii =
  match val_iii with
  | Item_for_symbol_value_t.Item_for_symbol_each_grandson_bare_value val_is2 ->
      Item_for_symbol_each_grandson_bare_value_v.camlparagraph_value_list_off_item_for_symbol_each_grandson_bare_value val_is2

  | Item_for_symbol_value_t.Item_for_symbol_each_grandson_ofstring_value val_is2 ->
      Item_for_symbol_each_grandson_ofstring_value_v.camlparagraph_value_list_off_item_for_symbol_each_grandson_ofstring_value val_is2

  | Item_for_symbol_value_t.Item_for_symbol_each_grandson_notleaf_value val_is3 ->
      Item_for_symbol_each_grandson_notleaf_value_v.camlparagraph_value_list_off_item_for_symbol_each_grandson_notleaf_value val_is3

 | Item_for_symbol_value_t.Item_for_symbol_each_topson_bare_value val_is4 ->
      Item_for_symbol_each_topson_bare_value_v.camlparagraph_value_list_off_item_for_symbol_each_topson_bare_value val_is4

 | Item_for_symbol_value_t.Item_for_symbol_each_topson_ofstring_value val_is4 ->
      Item_for_symbol_each_topson_ofstring_value_v.camlparagraph_value_list_off_item_for_symbol_each_topson_ofstring_value val_is4

  | Item_for_symbol_value_t.Item_for_symbol_each_topson_notleaf_value val_is5 ->
      Item_for_symbol_each_topson_notleaf_value_v.camlparagraph_value_list_off_item_for_symbol_each_topson_notleaf_value val_is5

  | Item_for_symbol_value_t.Item_for_symbol_by_group_topsons_value val_is6 ->
      Item_for_symbol_by_group_topsons_value_v.camlparagraph_value_list_off_item_for_symbol_by_group_topsons_value val_is6

  | Item_for_symbol_value_t.Item_for_symbol_only_top_value val_is7 ->
      Item_for_symbol_only_top_value_v.camlparagraph_value_list_off_item_for_symbol_only_top_value val_is7
;;

let string_list_off_item_for_symbol_value val_ite =
  let val_cap_l = camlparagraph_value_list_off_item_for_symbol_value val_ite in
  List.map Camlparagraph_value_v.string_list_off_camlparagraph_value val_cap_l
;;

