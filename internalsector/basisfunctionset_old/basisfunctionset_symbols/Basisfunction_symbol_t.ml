(** {3 Basisfunction_symbol_t} *)


(** {6 Typing_for_symbol} *)

type basisfunction_symbol =
  | Basisfunction_body_symbol of Basisfunction_body_symbol_t.basisfunction_body_symbol
  | Basisfunction_context_symbol of Basisfunction_context_symbol_t.basisfunction_context_symbol
  | Basisfunction_closure_symbol of Basisfunction_closure_symbol_t.basisfunction_closure_symbol
;;


(** Basisfunction_symbol_t at 19:1:12 on 25 Mar 2015. created by version v2.3 of generator *)



