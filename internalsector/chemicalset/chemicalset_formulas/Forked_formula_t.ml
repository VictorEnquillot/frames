(** {3 Forked_formula_t} *)


(** {6 Typing_for_formula} *)

type forked_formula =
  | Forked_block_formula of Forked_block_formula_t.forked_block_formula
  | Forked_fragment_formula of Forked_fragment_formula_t.forked_fragment_formula
;;


(** Forked_formula_t at 15:38:58 on 24 Jun 2013. created by version v2.3 of generator *)



