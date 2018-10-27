type figure_formula =
  | Coordinate_formula of Coordinate_formula_t.coordinate_formula
  | Point_formula of Point_formula_t.point_formula
  | Triangle_formula of Triangle_formula_t.triangle_formula
  | Vector_formula of Vector_formula_t.vector_formula
  | Fake_formula of Fake_formula_t.fake_formula
;;

