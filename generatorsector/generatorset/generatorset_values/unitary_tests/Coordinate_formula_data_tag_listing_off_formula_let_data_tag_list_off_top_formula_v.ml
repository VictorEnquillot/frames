let float_tag_list_off_coordinate_formula = function
  | Coordinate_formula_t.Coordinate_cartesian_formula for_coc ->
      Coordinate_cartesian_formula_v.float_tag_list_off_coordinate_cartesian_formula for_coc
  | Coordinate_formula_t.Coordinate_cylindrical_formula for_coc ->
      Coordinate_cylindrical_formula_v.float_tag_list_off_coordinate_cylindrical_formula for_coc
  | Coordinate_formula_t.Coordinate_polar_formula for_cop ->
      Coordinate_polar_formula_v.float_tag_list_off_coordinate_polar_formula for_cop
  | Coordinate_formula_t.Coordinate_spherical_formula for_cos ->
      Coordinate_spherical_formula_v.float_tag_list_off_coordinate_spherical_formula for_cos
;;

