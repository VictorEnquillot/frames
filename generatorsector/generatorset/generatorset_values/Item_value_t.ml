(** {3 Item_value_t}  *)

(** {6 Typing} *)

type item_value =   
  | Item_for_formula_value of Item_for_formula_value_t.item_for_formula_value
  | Item_for_symbol_value of Item_for_symbol_value_t.item_for_symbol_value
  | Item_for_any_only_top_value of Item_for_any_only_top_value_t.item_for_any_only_top_value
;;
