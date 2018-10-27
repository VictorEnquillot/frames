(** {3 Semi_closed_left_formula_t} *)


(** {6 Typing_for_formula} *)

type semi_closed_left_formula =
  | Semi_closed_left_block_formula of Semi_closed_left_block_formula_t.semi_closed_left_block_formula
  | Semi_closed_left_segment_formula of Semi_closed_left_segment_formula_t.semi_closed_left_segment_formula
  | Semi_closed_left_fragment_formula of Semi_closed_left_fragment_formula_t.semi_closed_left_fragment_formula
;;


(** Semi_closed_left_formula_t at 15:38:59 on 24 Jun 2013. created by version v2.3 of generator *)



