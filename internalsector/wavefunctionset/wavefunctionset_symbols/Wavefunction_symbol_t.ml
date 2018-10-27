(** {3 Wavefunction_symbol_t} *)


(** {6 Typing_for_symbol} *)

type wavefunction_symbol =
  | Wavefunction_body_symbol of Wavefunction_body_symbol_t.wavefunction_body_symbol
  | Wavefunction_context_symbol of Wavefunction_context_symbol_t.wavefunction_context_symbol
  | Wavefunction_closure_symbol of Wavefunction_closure_symbol_t.wavefunction_closure_symbol
;;


(** Wavefunction_symbol_t at 11:11:41 on 27 Mar 2015. created by version v2.3 of generator *)



