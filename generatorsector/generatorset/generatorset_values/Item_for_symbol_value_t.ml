(** {6 Typing} *)

type item_for_symbol_value =
  | Item_for_symbol_each_grandson_bare_value of Item_for_symbol_each_grandson_bare_value_t.item_for_symbol_each_grandson_bare_value
  | Item_for_symbol_each_grandson_notleaf_value of Item_for_symbol_each_grandson_notleaf_value_t.item_for_symbol_each_grandson_notleaf_value
  | Item_for_symbol_each_grandson_ofstring_value of Item_for_symbol_each_grandson_ofstring_value_t.item_for_symbol_each_grandson_ofstring_value
  | Item_for_symbol_each_topson_bare_value of Item_for_symbol_each_topson_bare_value_t.item_for_symbol_each_topson_bare_value
  | Item_for_symbol_each_topson_notleaf_value of Item_for_symbol_each_topson_notleaf_value_t.item_for_symbol_each_topson_notleaf_value
  | Item_for_symbol_each_topson_ofstring_value of Item_for_symbol_each_topson_ofstring_value_t.item_for_symbol_each_topson_ofstring_value
  | Item_for_symbol_only_top_value of Item_for_symbol_only_top_value_t.item_for_symbol_only_top_value
  | Item_for_symbol_by_group_topsons_value of Item_for_symbol_by_group_topsons_value_t.item_for_symbol_by_group_topsons_value
;;
