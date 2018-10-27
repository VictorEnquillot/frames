(** {3 Coordinate_formula_t} *)


(** {6 Typing_for_formula} *)

type coordinate_formula =
  | Coordinate_current_formula of Coordinate_current_formula_t.coordinate_current_formula
  | Coordinate_step_zero_formula of Coordinate_step_zero_formula_t.coordinate_previous_formula
  | Coordinate_step_minusone_formula of Coordinate_step_minusone_formula_t.coordinate_anteprevious_formula
;;

