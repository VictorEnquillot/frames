(** {3 Coordinate_current_formula_t} *)


(** {6 Typing_for_formula} *)

type coordinate_current_formula =
  | Current_x of (Coordinate_step_zero_tag_t.coordinate_step_zero_tag, 
		  Coordinate_step_minusone_tag_t.coordinate_step_minusone_tag)
	Doublet_t.doublet
;;
