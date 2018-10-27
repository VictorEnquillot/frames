type coordinate_value = 
  | Coordinate_current_value of Coordinate_current_value_t.coordinate_current_value
  | Coordinate_step_zero_value of Coordinate_step_zero_value_t.coordinate_previous_value
  | Coordinate_step_minusone_value of Coordinate_step_minusone_value_t.coordinate_anteprevious_value
;;
