type figure_symbol =
  | Coordinate_symbol of Coordinate_symbol_t.coordinate_symbol
  | Triangle_symbol of Triangle_symbol_t.triangle_symbol
  | Point of string
  | Vector
;;

