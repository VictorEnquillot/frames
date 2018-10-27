(** {3 Expression_atomic_symbol_t} *)


(** {6 Typing_for_symbol} *)

type expression_atomic_symbol =
  | Expression_atomic_digit_symbol of Expression_atomic_digit_symbol_t.expression_atomic_digit_symbol
  | Variable of string
;;


(** Expression_atomic_symbol_t at 21:7:22 on 15 Jul 2013. created by version v2.4 of generator *)



