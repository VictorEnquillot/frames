(** {3 Logic_symbol_t} *)


(** {6 Typing_for_symbol} *)

type logic_symbol =
  | Bethtree_symbol of Bethtree_symbol_t.bethtree_symbol
  | Connective_symbol of Connective_symbol_t.connective_symbol
  | Formula_symbol of Formula_symbol_t.formula_symbol
  | Signedformula_symbol of Signedformula_symbol_t.signedformula_symbol
  | Signedformula_list_symbol of Signedformula_list_symbol_t.signedformula_list_symbol
  | Turnstile_hard_actual_symbol of Turnstile_hard_actual_symbol_t.turnstile_hard_actual_symbol
;;


(** Logic_symbol_t at 17:8:27 on 9 Jul 2013. created by version v2.3 of generator *)



