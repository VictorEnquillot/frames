let float_tag_list_off_triangle_formula for_tri =
  | Triangle_formula_t.Triangle_isoceles_formula for_tis ->
      Triangle_isoceles_formula_v.float_tag_list_off_triangle_isoceles_formula for_tis
  | Triangle_formula_t.Triangle_scalene_formula for_trs ->
      Triangle_scalene_formula_v.float_tag_list_off_triangle_scalene_formula for_trs
;;

