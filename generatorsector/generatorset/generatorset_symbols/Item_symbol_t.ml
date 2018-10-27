(** {3 Item_symbol_t} *)


(** {6 Typing_for_symbol} *)

type item_symbol =
  | Item_for_any_only_top_symbol of Item_for_any_only_top_symbol_t.item_for_any_only_top_symbol
  | Item_for_formula_symbol of Item_for_formula_symbol_t.item_for_formula_symbol
  | Item_for_symbol_symbol of Item_for_symbol_symbol_t.item_for_symbol_symbol
;;


(** Item_symbol_t at 14:14:4 on 2 Jun 2013. created by version v1.13 of generator *)



