(** {3 Closed_segment_formula_t} *)


(** {6 Typing_for_formula} *)

type closed_segment_formula =
  | Closed_segment_anion_formula of Closed_segment_anion_formula_t.closed_segment_anion_formula
  | Closed_segment_cation_formula of Closed_segment_cation_formula_t.closed_segment_cation_formula
  | Closed_segment_neutral_formula of Closed_segment_neutral_formula_t.closed_segment_neutral_formula
;;


(** Closed_segment_formula_t at 12:33:15 on 24 Jun 2013. created by version v2.3 of generator *)



