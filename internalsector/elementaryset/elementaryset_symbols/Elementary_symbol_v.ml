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
  | Elementary_symbol_t.Elementary_fence_symbol sym_efe ->
    Elementary_fence_symbol_v.name sym_efe
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_symbol_t.Elementary_body_symbol sym_ebo ->
  Elementary_body_symbol_v.string_off sym_ebo
  | Elementary_symbol_t.Elementary_context_symbol sym_eco ->
  Elementary_context_symbol_v.string_off sym_eco
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

let elementary_context_domain_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_domain_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_context_sector_symbol_off_elementary_symbol sym_ele = 
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
    Elementary_context_symbol_v.elementary_context_sector_symbol_off_elementary_context_symbol sym_eco
;;

let elementary_fence_coordinate_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_x_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_y_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_z_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_linear_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_linear_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_linear_x_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_planar_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_planar_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_aopef_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_aopef_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_aopef_coefficient_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_aopef_coefficient_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_aopef_exponent_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_aopef_exponent_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_ecppef_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_ecppef_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_symbol sym_efe
;;

let elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_symbol sym_ele = 
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
    Elementary_fence_symbol_v.elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_symbol sym_efe
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

let is_elementary_fence_symbol_off_elementary_symbol = function
  | Elementary_symbol_t.Elementary_fence_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


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

let is_elementary_context_databox_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_databox_constructor sym_eco
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

let is_elementary_context_sector_constructor sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
      Elementary_context_symbol_v.is_elementary_context_sector_constructor sym_eco
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_rho_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_rho_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_theta_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_theta_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_rho_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_rho_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_phi_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_phi_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_theta_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_theta_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_x_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_x_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_y_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_y_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_z_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_z_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_linear_x_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_linear_x_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_x_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_x_constructor sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_y_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_y_constructor sym_efe
    end
;;

let is_elementary_fence_parameter_aopef_coefficient_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_parameter_aopef_coefficient_constructor sym_efe
    end
;;

let is_elementary_fence_parameter_aopef_exponent_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_parameter_aopef_exponent_constructor sym_efe
    end
;;

let is_elementary_fence_parameter_ecppef_coefficient_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_parameter_ecppef_coefficient_constructor sym_efe
    end
;;

let is_elementary_fence_parameter_ecppef_exponent_constructor sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
      let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
      Elementary_fence_symbol_v.is_elementary_fence_parameter_ecppef_exponent_constructor sym_efe
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

let is_elementary_context_domain_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_domain_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_context_sector_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_context_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_eco = elementary_context_symbol_off_elementary_symbol sym_ele in
  Elementary_context_symbol_v.is_elementary_context_sector_symbol_off_elementary_context_symbol sym_eco
    end
;;

let is_elementary_fence_coordinate_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_x_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_y_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_cartesian_z_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_linear_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_linear_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_linear_x_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_aopef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_aopef_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_aopef_coefficient_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_aopef_coefficient_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_aopef_exponent_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_aopef_exponent_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_ecppef_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_ecppef_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_symbol sym_efe
    end
;;

let is_elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_symbol sym_ele =
  if not (is_elementary_fence_symbol_off_elementary_symbol sym_ele)
  then false
  else
    begin
  let sym_efe = elementary_fence_symbol_off_elementary_symbol sym_ele in
  Elementary_fence_symbol_v.is_elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_symbol sym_efe
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_symbol_of_elementary_body_symbol sym_ebo = 
  Elementary_symbol_t.Elementary_body_symbol sym_ebo
;;

let elementary_symbol_of_elementary_context_symbol sym_eco = 
  Elementary_symbol_t.Elementary_context_symbol sym_eco
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

let elementary_symbol_of_elementary_context_domain_symbol sym_ecd = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_domain_symbol sym_ecd in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_context_sector_symbol sym_ecs = 
  let sym_eco = Elementary_context_symbol_v.elementary_context_symbol_of_elementary_context_sector_symbol sym_ecs in
    elementary_symbol_of_elementary_context_symbol sym_eco
;;

let elementary_symbol_of_elementary_fence_coordinate_symbol sym_efc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_symbol sym_efc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_polar_rho_symbol sym_epr = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_polar_rho_symbol sym_epr in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_polar_theta_symbol sym_ept = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_polar_theta_symbol sym_ept in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol sym_esr = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol sym_esr in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol sym_esp = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol sym_esp in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol sym_est = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol sym_est in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_symbol sym_ech = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_symbol sym_ech in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_symbol sym_ehc = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_symbol sym_ehc in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_x_symbol sym_ecx = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_x_symbol sym_ecx in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_y_symbol sym_ecy = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_y_symbol sym_ecy in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_z_symbol sym_ecz = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_cartesian_z_symbol sym_ecz in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_linear_symbol sym_ehl = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_linear_symbol sym_ehl in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_linear_x_symbol sym_elx = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_linear_x_symbol sym_elx in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_symbol sym_efp = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_symbol sym_efp in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_aopef_symbol sym_epa = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_aopef_symbol sym_epa in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_aopef_coefficient_symbol sym_eac = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_aopef_coefficient_symbol sym_eac in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_aopef_exponent_symbol sym_eae = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_aopef_exponent_symbol sym_eae in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_ecppef_symbol sym_epe = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_ecppef_symbol sym_epe in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_ecppef_coefficient_symbol sym_eec = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_ecppef_coefficient_symbol sym_eec in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;

let elementary_symbol_of_elementary_fence_parameter_ecppef_exponent_symbol sym_eee = 
  let sym_efe = Elementary_fence_symbol_v.elementary_fence_symbol_of_elementary_fence_parameter_ecppef_exponent_symbol sym_eee in
    elementary_symbol_of_elementary_fence_symbol sym_efe
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


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

let elementary_context_databox_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_databox_constructor s);;

let elementary_context_domain_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_domain_constructor s);;

let elementary_context_sector_constructor s = elementary_symbol_of_elementary_context_symbol (Elementary_context_symbol_v.elementary_context_sector_constructor s);;

let elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor s);;

let elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor s);;

let elementary_fence_coordinate_heterogeneous_polar_rho_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_polar_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_polar_theta_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_polar_theta_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_rho_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_theta_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_theta_constructor s);;

let elementary_fence_coordinate_homogeneous_cartesian_x_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_x_constructor s);;

let elementary_fence_coordinate_homogeneous_cartesian_y_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_y_constructor s);;

let elementary_fence_coordinate_homogeneous_cartesian_z_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_z_constructor s);;

let elementary_fence_coordinate_homogeneous_linear_x_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_linear_x_constructor s);;

let elementary_fence_coordinate_homogeneous_planar_x_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_planar_x_constructor s);;

let elementary_fence_coordinate_homogeneous_planar_y_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_coordinate_homogeneous_planar_y_constructor s);;

let elementary_fence_parameter_aopef_coefficient_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_parameter_aopef_coefficient_constructor s);;

let elementary_fence_parameter_aopef_exponent_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_parameter_aopef_exponent_constructor s);;

let elementary_fence_parameter_ecppef_coefficient_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_parameter_ecppef_coefficient_constructor s);;

let elementary_fence_parameter_ecppef_exponent_constructor s = elementary_symbol_of_elementary_fence_symbol (Elementary_fence_symbol_v.elementary_fence_parameter_ecppef_exponent_constructor s);;


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


(** Elementary_symbol_v at 9:51:52 on 27 Sep 2016. created by version v2.4 of generator *)



