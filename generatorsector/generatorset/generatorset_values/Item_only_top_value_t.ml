(** {3 Item_only_top_value_t}  *)

(** {6 Typing} *)

type item_only_top_value =
  | Item_for_any_only_top_value of Item_for_any_only_top_value_t.item_for_any_only_top_value
  | Item_only_top_for_formula_value of Item_only_top_for_formula_value_t.item_only_top_for_formula_value
  | Item_for_symbol_only_top_value of Item_for_symbol_only_top_value_t.item_for_symbol_only_top_value
;;
