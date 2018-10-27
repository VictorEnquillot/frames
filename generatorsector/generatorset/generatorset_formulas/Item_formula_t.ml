(** {3 Item_Formula_t.}  *)

(** {6 Typing} *)

type item_formula =
  | Item_for_formula_formula of Item_for_formula_formula_t.item_for_formula_formula
  | Item_for_symbol_formula of Item_for_symbol_formula_t.item_for_symbol_formula
  | Item_for_any_only_top_formula of Item_for_any_only_top_formula_t.item_for_any_only_top_formula
;;
