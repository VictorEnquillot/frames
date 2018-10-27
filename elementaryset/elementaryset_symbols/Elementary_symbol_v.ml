(** {3 Elementary_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_symbol_t.Elementary_body_symbol sym_ebo ->
    Elementary_body_symbol_v.name sym_ebo
  | Elementary_symbol_t.Elementary_context_symbol sym_eco ->
    Elementary_context_symbol_v.name sym_eco
  | Elementary_symbol_t.Elementary_border_symbol sym_ebo ->
    Elementary_border_symbol_v.name sym_ebo
  | Elementary_symbol_t.Elementary_fence_symbol sym_efe ->
    Elementary_fence_symbol_v.name sym_efe
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_symbol_t.Elementary_body_symbol sym_ebo ->
  Elementary_body_symbol_v.string_off sym_ebo
  | Elementary_symbol_t.Elementary_context_symbol sym_eco ->
  Elementary_context_symbol_v.string_off sym_eco
  | Elementary_symbol_t.Elementary_border_symbol sym_ebo ->
  Elementary_border_symbol_v.string_off sym_ebo
  | Elementary_symbol_t.Elementary_fence_symbol sym_efe ->
  Elementary_fence_symbol_v.string_off sym_efe
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ele =
  Format.sprintf "Elementary_symbol_t.%s" (String.capitalize (name sym_ele))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ele =
  Format.sprintf "%s \"%s\"" (longname sym_ele) (string_off sym_ele)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_body_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_body_symbol sym_ebo -> sym_ebo
  | sym_ele -> Error_messages_v.print_fatal_error
      nam_cod "elementary_body_symbol_off_elementary_symbol"
      "Elementary_body_symbol"
      (name sym_ele) "check"
;;

let elementary_context_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_context_symbol sym_eco -> sym_eco
  | sym_ele -> Error_messages_v.print_fatal_error
      nam_cod "elementary_context_symbol_off_elementary_symbol"
      "Elementary_context_symbol"
      (name sym_ele) "check"
;;

let elementary_border_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_border_symbol sym_ebo -> sym_ebo
  | sym_ele -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_symbol_off_elementary_symbol"
      "Elementary_border_symbol"
      (name sym_ele) "check"
;;

let elementary_fence_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_fence_symbol sym_efe -> sym_efe
  | sym_ele -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_symbol_off_elementary_symbol"
      "Elementary_fence_symbol"
      (name sym_ele) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_body_coordinate_tuple_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_parameter_tuple_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
    Elementary_body_symbol_v.elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_symbol sym_ebo
;;

let elementary_context_database_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_database_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_context_databox_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_databox_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_context_databox_skeletondata_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_databox_skeletondata_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_context_databox_figuredata_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_databox_figuredata_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_context_domain_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_domain_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_border_coordinate_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_aopef_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_aopef_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_ecppef_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_ecppef_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol sym_ele = 
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
    Elementary_border_symbol_v.elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_symbol sym_ebo
;;

let elementary_fence_basic_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_basic_boolean_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_basic_boolean_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_basic_float_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_basic_float_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_basic_integer_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_basic_integer_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_basic_string_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_basic_string_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_color_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_action_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_action_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_angle_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_charge_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_charge_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_energy_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_energy_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_length_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_mass_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_mass_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_temperature_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_temperature_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_time_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_time_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_actual_none_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_actual_none_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_canonical_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_canonical_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_canonical_classical_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_canonical_classical_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_symbol sym_efe
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_body_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_body_symbol _ -> true
  | _ -> false
;;

let is_elementary_context_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_context_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_border_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_fence_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_boolean sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_boolean sym_efe
    end
;;

let is_float sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_float sym_efe
    end
;;

let is_integer sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_integer sym_efe
    end
;;

let is_string sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_string sym_efe
    end
;;

let is_black sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_black sym_efe
    end
;;

let is_blue sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_blue sym_efe
    end
;;

let is_green sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_green sym_efe
    end
;;

let is_orange sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_orange sym_efe
    end
;;

let is_pink sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_pink sym_efe
    end
;;

let is_red sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_red sym_efe
    end
;;

let is_white sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_white sym_efe
    end
;;

let is_yellow sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_yellow sym_efe
    end
;;

let is_kilocalorie_second sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilocalorie_second sym_efe
    end
;;

let is_kilojoule_second sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilojoule_second sym_efe
    end
;;

let is_planck_constant sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_planck_constant sym_efe
    end
;;

let is_degree sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_degree sym_efe
    end
;;

let is_radian sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_radian sym_efe
    end
;;

let is_coulomb sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_coulomb sym_efe
    end
;;

let is_electron_charge sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_electron_charge sym_efe
    end
;;

let is_hartree sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_hartree sym_efe
    end
;;

let is_calorie sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_calorie sym_efe
    end
;;

let is_electron_volt sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_electron_volt sym_efe
    end
;;

let is_joule sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_joule sym_efe
    end
;;

let is_kilocalorie sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilocalorie sym_efe
    end
;;

let is_kilojoule sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilojoule sym_efe
    end
;;

let is_angstrom sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_angstrom sym_efe
    end
;;

let is_bohr sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_bohr sym_efe
    end
;;

let is_centimeter sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_centimeter sym_efe
    end
;;

let is_decameter sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_decameter sym_efe
    end
;;

let is_decimeter sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_decimeter sym_efe
    end
;;

let is_foot sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_foot sym_efe
    end
;;

let is_inch sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_inch sym_efe
    end
;;

let is_kilometer sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilometer sym_efe
    end
;;

let is_light_year sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_light_year sym_efe
    end
;;

let is_meter sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_meter sym_efe
    end
;;

let is_millimeter sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_millimeter sym_efe
    end
;;

let is_nanometer sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_nanometer sym_efe
    end
;;

let is_yard sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_yard sym_efe
    end
;;

let is_electron_mass sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_electron_mass sym_efe
    end
;;

let is_atomic_mass_unit sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_atomic_mass_unit sym_efe
    end
;;

let is_kilogram sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kilogram sym_efe
    end
;;

let is_celsius sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_celsius sym_efe
    end
;;

let is_kelvin sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_kelvin sym_efe
    end
;;

let is_atomic_time_unit sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_atomic_time_unit sym_efe
    end
;;

let is_femtosecond sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_femtosecond sym_efe
    end
;;

let is_nanosecond sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_nanosecond sym_efe
    end
;;

let is_picosecond sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_picosecond sym_efe
    end
;;

let is_second sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_second sym_efe
    end
;;

let is_unitless sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_unitless sym_efe
    end
;;

let is_canonical_classical_action_kilocalorie_second sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_action_kilocalorie_second sym_efe
    end
;;

let is_canonical_classical_angle_radian sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_angle_radian sym_efe
    end
;;

let is_canonical_classical_charge_coulomb sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_charge_coulomb sym_efe
    end
;;

let is_canonical_classical_energy_kilocalorie sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_energy_kilocalorie sym_efe
    end
;;

let is_canonical_classical_length_angstrom sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_length_angstrom sym_efe
    end
;;

let is_canonical_classical_mass_electron_mass sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_mass_electron_mass sym_efe
    end
;;

let is_canonical_classical_temperature_kelvin sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_temperature_kelvin sym_efe
    end
;;

let is_canonical_classical_time_femtosecond sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_time_femtosecond sym_efe
    end
;;

let is_canonical_classical_none sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_classical_none sym_efe
    end
;;

let is_canonical_quantum_action_planck_constant sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_action_planck_constant sym_efe
    end
;;

let is_canonical_quantum_angle_radian sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_angle_radian sym_efe
    end
;;

let is_canonical_quantum_charge_electron_charge sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_charge_electron_charge sym_efe
    end
;;

let is_canonical_quantum_energy_hartree sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_energy_hartree sym_efe
    end
;;

let is_canonical_quantum_length_bohr sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_length_bohr sym_efe
    end
;;

let is_canonical_quantum_mass_electron_mass sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_mass_electron_mass sym_efe
    end
;;

let is_canonical_quantum_temperature_kelvin sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_temperature_kelvin sym_efe
    end
;;

let is_canonical_quantum_time_femtosecond sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_time_femtosecond sym_efe
    end
;;

let is_canonical_quantum_none sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_canonical_quantum_none sym_efe
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_linear_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_constructor sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_planar_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_constructor sym_ebo
    end
;;

let is_elementary_body_parameter_tuple_aopef_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_parameter_tuple_aopef_constructor sym_ebo
    end
;;

let is_elementary_body_parameter_tuple_ecppef_constructor sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
      Elementary_body_symbol_v.is_elementary_body_parameter_tuple_ecppef_constructor sym_ebo
    end
;;

let is_elementary_context_database_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_database_constructor sym_eco
    end
;;

let is_elementary_context_databox_skeletondata_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_databox_skeletondata_constructor sym_eco
    end
;;

let is_elementary_context_databox_figuredata_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_databox_figuredata_constructor sym_eco
    end
;;

let is_elementary_context_domain_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_domain_constructor sym_eco
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_rho_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_theta_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ebo
    end
;;

let is_elementary_border_parameter_aopef_coefficient_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_parameter_aopef_coefficient_constructor sym_ebo
    end
;;

let is_elementary_border_parameter_aopef_exponent_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_parameter_aopef_exponent_constructor sym_ebo
    end
;;

let is_elementary_border_parameter_ecppef_coefficient_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_parameter_ecppef_coefficient_constructor sym_ebo
    end
;;

let is_elementary_border_parameter_ecppef_exponent_constructor sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
      Elementary_border_symbol_v.is_elementary_border_parameter_ecppef_exponent_constructor sym_ebo
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_body_coordinate_tuple_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_parameter_tuple_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_body_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_body_symbol_off_elementary_symbol sym_ele in
  Elementary_body_symbol_v.is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_symbol sym_ebo
    end
;;

let is_elementary_context_database_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_database_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_context_databox_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_databox_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_context_databox_skeletondata_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_databox_skeletondata_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_context_databox_figuredata_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_databox_figuredata_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_context_domain_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_domain_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_border_coordinate_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_aopef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_ecppef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_ecppef_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_border_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_ebo = elementary_border_symbol_off_elementary_symbol sym_ele in
  Elementary_border_symbol_v.is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_symbol sym_ebo
    end
;;

let is_elementary_fence_basic_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_basic_boolean_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_basic_boolean_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_basic_float_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_basic_float_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_basic_integer_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_basic_integer_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_basic_string_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_basic_string_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_color_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_action_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_action_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_angle_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_charge_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_energy_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_length_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_mass_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_temperature_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_time_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_time_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_actual_none_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_actual_none_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_canonical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_canonical_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_canonical_classical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_symbol sym_efe
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_symbol_of_elementary_body_symbol sym_ebo = 
  Elementary_symbol_t.Elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_context_symbol sym_eco = 
  Elementary_symbol_t.Elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_border_symbol sym_ebo = 
  Elementary_symbol_t.Elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_fence_symbol sym_efe = 
  Elementary_symbol_t.Elementary_fence_symbol sym_efe
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_heterogeneous_symbol sym_eth = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_symbol sym_eth in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol sym_ehc = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol sym_ehc in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_heterogeneous_polar_symbol sym_ehp = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_polar_symbol sym_ehp in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol sym_ehs = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol sym_ehs in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_symbol sym_eth = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_symbol sym_eth in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol sym_ehc = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol sym_ehc in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_linear_symbol sym_ehl = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_linear_symbol sym_ehl in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_coordinate_tuple_homogeneous_planar_symbol sym_ehp = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_planar_symbol sym_ehp in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_parameter_tuple_symbol sym_ept = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_parameter_tuple_symbol sym_ept in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_parameter_tuple_aopef_symbol sym_eta = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_parameter_tuple_aopef_symbol sym_eta in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_body_parameter_tuple_ecppef_symbol sym_ete = 
  let sym_ebo = Elementary_body_symbol_v.elementary_body_symbol_of_elementary_body_parameter_tuple_ecppef_symbol sym_ete in
    elementary_symbol_of_elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_context_database_symbol sym_ecd = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_database_symbol sym_ecd in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_context_databox_symbol sym_ecd = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_databox_symbol sym_ecd in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_context_databox_skeletondata_symbol sym_eds = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_databox_skeletondata_symbol sym_eds in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_context_databox_figuredata_symbol sym_edf = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_databox_figuredata_symbol sym_edf in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_context_domain_symbol sym_ecd = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_domain_symbol sym_ecd in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_border_coordinate_symbol sym_ebc = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_symbol sym_ech in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_epr = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_epr in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ept = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ept in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_symbol sym_ech in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_symbol sym_ebp = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_aopef_symbol sym_epa = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_aopef_symbol sym_epa in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_aopef_coefficient_symbol sym_eac = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_aopef_coefficient_symbol sym_eac in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_aopef_exponent_symbol sym_eae = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_aopef_exponent_symbol sym_eae in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_ecppef_symbol sym_epe = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_ecppef_symbol sym_epe in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_ecppef_coefficient_symbol sym_eec = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_ecppef_coefficient_symbol sym_eec in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_border_parameter_ecppef_exponent_symbol sym_eee = 
  let sym_ebo = Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_parameter_ecppef_exponent_symbol sym_eee in
    elementary_symbol_of_elementary_border_symbol sym_ebo
;;

let elementary_symbol_of_elementary_fence_basic_symbol sym_efb = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_basic_boolean_symbol sym_ebb = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_boolean_symbol sym_ebb in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_basic_float_symbol sym_ebf = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_float_symbol sym_ebf in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_basic_integer_symbol sym_ebi = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_integer_symbol sym_ebi in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_basic_string_symbol sym_ebs = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_basic_string_symbol sym_ebs in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_color_symbol sym_efc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_color_symbol sym_efc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_symbol sym_efu = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_symbol sym_eua = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_symbol sym_eua in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_length_symbol sym_eal = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_length_symbol sym_eal in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_time_symbol sym_eat = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_time_symbol sym_eat in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_actual_none_symbol sym_ean = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_actual_none_symbol sym_ean in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_canonical_symbol sym_euc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_canonical_symbol sym_euc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let boolean = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.boolean;;

let float = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.float;;

let integer = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.integer;;

let string = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.string;;

let black = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.black;;

let blue = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.blue;;

let green = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.green;;

let orange = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.orange;;

let pink = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.pink;;

let red = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.red;;

let white = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.white;;

let yellow = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.yellow;;

let kilocalorie_second = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilocalorie_second;;

let kilojoule_second = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilojoule_second;;

let planck_constant = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.planck_constant;;

let degree = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.degree;;

let radian = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.radian;;

let coulomb = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.coulomb;;

let electron_charge = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.electron_charge;;

let hartree = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.hartree;;

let calorie = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.calorie;;

let electron_volt = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.electron_volt;;

let joule = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.joule;;

let kilocalorie = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilocalorie;;

let kilojoule = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilojoule;;

let angstrom = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.angstrom;;

let bohr = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.bohr;;

let centimeter = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.centimeter;;

let decameter = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.decameter;;

let decimeter = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.decimeter;;

let foot = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.foot;;

let inch = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.inch;;

let kilometer = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilometer;;

let light_year = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.light_year;;

let meter = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.meter;;

let millimeter = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.millimeter;;

let nanometer = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.nanometer;;

let yard = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.yard;;

let electron_mass = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.electron_mass;;

let atomic_mass_unit = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.atomic_mass_unit;;

let kilogram = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kilogram;;

let celsius = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.celsius;;

let kelvin = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.kelvin;;

let atomic_time_unit = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.atomic_time_unit;;

let femtosecond = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.femtosecond;;

let nanosecond = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.nanosecond;;

let picosecond = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.picosecond;;

let second = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.second;;

let unitless = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.unitless;;

let canonical_classical_action_kilocalorie_second = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = elementary_symbol_of_elementary_fence_symbol Elementary_fence_symbol_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor s);;

let elementary_body_coordinate_tuple_heterogeneous_polar_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_constructor s);;

let elementary_body_coordinate_tuple_heterogeneous_spherical_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_cartesian_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_linear_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_linear_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_planar_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_coordinate_tuple_homogeneous_planar_constructor s);;

let elementary_body_parameter_tuple_aopef_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_parameter_tuple_aopef_constructor s);;

let elementary_body_parameter_tuple_ecppef_constructor s = elementary_symbol_of_elementary_body_symbol (Elementary_body_symbol_v.elementary_body_parameter_tuple_ecppef_constructor s);;

let elementary_context_database_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_database_constructor s);;

let elementary_context_databox_skeletondata_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_databox_skeletondata_constructor s);;

let elementary_context_databox_figuredata_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_databox_figuredata_constructor s);;

let elementary_context_domain_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_domain_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s);;

let elementary_border_coordinate_heterogeneous_polar_rho_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_polar_theta_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_rho_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_phi_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_theta_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_x_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_y_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_z_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_constructor s);;

let elementary_border_coordinate_homogeneous_linear_x_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_linear_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_x_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_planar_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_y_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_coordinate_homogeneous_planar_y_constructor s);;

let elementary_border_parameter_aopef_coefficient_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_parameter_aopef_coefficient_constructor s);;

let elementary_border_parameter_aopef_exponent_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_parameter_aopef_exponent_constructor s);;

let elementary_border_parameter_ecppef_coefficient_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_parameter_ecppef_coefficient_constructor s);;

let elementary_border_parameter_ecppef_exponent_constructor s = elementary_symbol_of_elementary_border_symbol (Elementary_border_symbol_v.elementary_border_parameter_ecppef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_symbol_of_elementary_body_symbol
      (Elementary_body_symbol_v.make nam s)
  with Failure "Not_a_elementary_body_symbol:Elementary_body_symbol_v.ml:make" ->
  try elementary_symbol_of_elementary_context_symbol
      (Elementary_context_symbol_v.make nam s)
  with Failure "Not_a_elementary_context_symbol:Elementary_context_symbol_v.ml:make" ->
  try elementary_symbol_of_elementary_border_symbol
      (Elementary_border_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_symbol:Elementary_border_symbol_v.ml:make" ->
  try elementary_symbol_of_elementary_fence_symbol
      (Elementary_fence_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_symbol:Elementary_fence_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary subtype" nam s)
      "it does not exists"
      "Check file Elementary_symbol_v.ml"
    in
    failwith "Not_a_elementary_symbol:Elementary_symbol_v.ml:make"
;;


(** Elementary_symbol_v at 11:52:18 on 9 May 2016. created by version v2.4 of generator *)



