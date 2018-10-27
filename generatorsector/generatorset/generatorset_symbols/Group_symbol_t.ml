(** {3 Group_symbol_t} *)


(** {6 Typing_for_symbol} *)

type group_symbol =
  | Group_for_any_symbol of Group_for_any_symbol_t.group_for_any_symbol
  | Group_for_formula_symbol of Group_for_formula_symbol_t.group_for_formula_symbol
  | Group_for_symbol_symbol of Group_for_symbol_symbol_t.group_for_symbol_symbol
;;


(** Group_symbol_t at 16:46:49 on 30 May 2013. created by version v1.13 of generator *)



