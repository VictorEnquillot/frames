(** {6 Typing_for_formula} *)

type coordinate_formula =
  | Coordinate_cartesian_formula of Coordinate_cartesian_formula_t.coordinate_cartesian_formula
  | Coordinate_cylindrical_formula of Coordinate_cylindrical_formula_t.coordinate_cylindrical_formula
  | Coordinate_polar_formula of Coordinate_polar_formula_t.coordinate_polar_formula
  | Coordinate_spherical_formula of Coordinate_spherical_formula_t.coordinate_spherical_formula
;;


