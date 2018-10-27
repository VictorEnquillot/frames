(** {3 Linear_formula_t} *)


(** {6 Typing_for_formula} *)

type linear_formula =
  | Linear_block_formula of Linear_block_formula_t.linear_block_formula
  | Linear_segment_formula of Linear_segment_formula_t.linear_segment_formula
;;


(** Linear_formula_t at 15:38:58 on 24 Jun 2013. created by version v2.3 of generator *)



