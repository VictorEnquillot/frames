(** {3 Closed_formula_t} *)


(** {6 Typing_for_formula} *)

type closed_formula =
  | Closed_atom_formula of Closed_atom_formula_t.closed_atom_formula
  | Closed_block_formula of Closed_block_formula_t.closed_block_formula
  | Closed_segment_formula of Closed_segment_formula_t.closed_segment_formula
  | Closed_grouping_formula of Closed_grouping_formula_t.closed_grouping_formula
;;


(** Closed_formula_t at 15:38:58 on 24 Jun 2013. created by version v2.3 of generator *)



