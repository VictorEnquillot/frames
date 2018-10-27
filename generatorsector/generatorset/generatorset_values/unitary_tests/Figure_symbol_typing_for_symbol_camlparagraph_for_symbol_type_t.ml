type figure_symbol =
  | Coordinate_symbol of Coordinate_symbol_t.coordinate_symbol
  | Point_symbol of Point_symbol_t.point_symbol
  | Triangle_symbol of Triangle_symbol_t.triangle_symbol
  | Vector_symbol of Vector_symbol_t.vector_symbol
  | Fake_symbol of Fake_symbol_t.fake_symbol
;;

