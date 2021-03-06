(** {3 Elementary_border_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_border_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
    Elementary_border_coordinate_symbol_v.name sym_ebc
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp ->
    Elementary_border_parameter_symbol_v.name sym_ebp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc ->
  Elementary_border_coordinate_symbol_v.string_off sym_ebc
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp ->
  Elementary_border_parameter_symbol_v.string_off sym_ebp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ebo =
  Format.sprintf "Elementary_border_symbol_t.%s" (String.capitalize (name sym_ebo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ebo =
  Format.sprintf "%s \"%s\"" (longname sym_ebo) (string_off sym_ebo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_symbol_off_elementary_border_symbol = function
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc -> sym_ebc
  | sym_ebo -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_symbol_off_elementary_border_symbol"
      "Elementary_border_coordinate_symbol"
      (name sym_ebo) "check"
;;

let elementary_border_parameter_symbol_off_elementary_border_symbol = function
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp -> sym_ebp
  | sym_ebo -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_parameter_symbol_off_elementary_border_symbol"
      "Elementary_border_parameter_symbol"
      (name sym_ebo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_parameter_aopef_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_aopef_symbol_off_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_parameter_ecppef_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_ecppef_symbol_off_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_symbol sym_ebo = 
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
    Elementary_border_parameter_symbol_v.elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_parameter_symbol sym_ebp
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_symbol_off_elementary_border_symbol = function
  | Elementary_border_symbol_t.Elementary_border_coordinate_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_parameter_symbol_off_elementary_border_symbol = function
  | Elementary_border_symbol_t.Elementary_border_parameter_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_rho_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_theta_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ebc
    end
;;

let is_elementary_border_parameter_aopef_coefficient_constructor sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_parameter_symbol_v.is_elementary_border_parameter_aopef_coefficient_constructor sym_ebp
    end
;;

let is_elementary_border_parameter_aopef_exponent_constructor sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_parameter_symbol_v.is_elementary_border_parameter_aopef_exponent_constructor sym_ebp
    end
;;

let is_elementary_border_parameter_ecppef_coefficient_constructor sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_parameter_symbol_v.is_elementary_border_parameter_ecppef_coefficient_constructor sym_ebp
    end
;;

let is_elementary_border_parameter_ecppef_exponent_constructor sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
      let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
      Elementary_border_parameter_symbol_v.is_elementary_border_parameter_ecppef_exponent_constructor sym_ebp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebc = elementary_border_coordinate_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_coordinate_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_symbol sym_ebc
    end
;;

let is_elementary_border_parameter_aopef_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;

let is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;

let is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;

let is_elementary_border_parameter_ecppef_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_ecppef_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;

let is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;

let is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_symbol sym_ebo =
  if not (is_elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo)
  then false
  else
    begin
  let sym_ebp = elementary_border_parameter_symbol_off_elementary_border_symbol sym_ebo in
  Elementary_border_parameter_symbol_v.is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_border_parameter_symbol sym_ebp
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc = 
  Elementary_border_symbol_t.Elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp = 
  Elementary_border_symbol_t.Elementary_border_parameter_symbol sym_ebp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_symbol sym_ech in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_polar_symbol sym_ehp in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_epr = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_polar_rho_symbol sym_epr in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ept = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_polar_theta_symbol sym_ept in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_symbol sym_ech in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy = 
  let sym_ebc = Elementary_border_coordinate_symbol_v.elementary_border_coordinate_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy in
    elementary_border_symbol_of_elementary_border_coordinate_symbol sym_ebc
;;

let elementary_border_symbol_of_elementary_border_parameter_aopef_symbol sym_epa = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_aopef_symbol sym_epa in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_symbol_of_elementary_border_parameter_aopef_coefficient_symbol sym_eac = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_aopef_coefficient_symbol sym_eac in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_symbol_of_elementary_border_parameter_aopef_exponent_symbol sym_eae = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_aopef_exponent_symbol sym_eae in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_symbol_of_elementary_border_parameter_ecppef_symbol sym_epe = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_ecppef_symbol sym_epe in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_symbol_of_elementary_border_parameter_ecppef_coefficient_symbol sym_eec = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_ecppef_coefficient_symbol sym_eec in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;

let elementary_border_symbol_of_elementary_border_parameter_ecppef_exponent_symbol sym_eee = 
  let sym_ebp = Elementary_border_parameter_symbol_v.elementary_border_parameter_symbol_of_elementary_border_parameter_ecppef_exponent_symbol sym_eee in
    elementary_border_symbol_of_elementary_border_parameter_symbol sym_ebp
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s);;

let elementary_border_coordinate_heterogeneous_polar_rho_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_polar_theta_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_rho_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_phi_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_theta_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_x_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_y_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_z_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_constructor s);;

let elementary_border_coordinate_homogeneous_linear_x_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_linear_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_x_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_planar_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_y_constructor s = elementary_border_symbol_of_elementary_border_coordinate_symbol (Elementary_border_coordinate_symbol_v.elementary_border_coordinate_homogeneous_planar_y_constructor s);;

let elementary_border_parameter_aopef_coefficient_constructor s = elementary_border_symbol_of_elementary_border_parameter_symbol (Elementary_border_parameter_symbol_v.elementary_border_parameter_aopef_coefficient_constructor s);;

let elementary_border_parameter_aopef_exponent_constructor s = elementary_border_symbol_of_elementary_border_parameter_symbol (Elementary_border_parameter_symbol_v.elementary_border_parameter_aopef_exponent_constructor s);;

let elementary_border_parameter_ecppef_coefficient_constructor s = elementary_border_symbol_of_elementary_border_parameter_symbol (Elementary_border_parameter_symbol_v.elementary_border_parameter_ecppef_coefficient_constructor s);;

let elementary_border_parameter_ecppef_exponent_constructor s = elementary_border_symbol_of_elementary_border_parameter_symbol (Elementary_border_parameter_symbol_v.elementary_border_parameter_ecppef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_border_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_border_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_border_symbol_of_elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_symbol:Elementary_border_coordinate_symbol_v.ml:make" ->
  try elementary_border_symbol_of_elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_parameter_symbol:Elementary_border_parameter_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_border_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_border_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_border_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_border_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_border subtype" nam s)
      "it does not exists"
      "Check file Elementary_border_symbol_v.ml"
    in
    failwith "Not_a_elementary_border_symbol:Elementary_border_symbol_v.ml:make"
;;


(** Elementary_border_symbol_v at 11:52:20 on 9 May 2016. created by version v2.4 of generator *)



