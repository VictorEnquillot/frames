(** {3 Closed_block_formula_t} *)


(** {6 Typing_for_formula} *)

type closed_block_formula =
  | Closed_block_anion_formula of Closed_block_anion_formula_t.closed_block_anion_formula
  | Closed_block_cation_formula of Closed_block_cation_formula_t.closed_block_cation_formula
  | Closed_block_neutral_formula of Closed_block_neutral_formula_t.closed_block_neutral_formula
;;


(** Closed_block_formula_t at 12:33:15 on 24 Jun 2013. created by version v2.3 of generator *)



