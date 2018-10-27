type readee =
  | Readee_basic of Readee_basic_t.readee_basic
  | Readee_color of Elementary_fence_color_symbol_t.elementary_fence_color_symbol
  | Readee_units of Measure_actual_t.measure_actual
;;
