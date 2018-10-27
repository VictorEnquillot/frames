(** {3 Coordinate_set_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_set_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol sym_cfh ->
    Coordinate_set_fence_heterogeneous_symbol_v.name sym_cfh
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol sym_cfh ->
    Coordinate_set_fence_homogeneous_symbol_v.name sym_cfh
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol sym_cfh ->
  Coordinate_set_fence_heterogeneous_symbol_v.string_off sym_cfh
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol sym_cfh ->
  Coordinate_set_fence_homogeneous_symbol_v.string_off sym_cfh
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_csf =
  Format.sprintf "Coordinate_set_fence_symbol_t.%s" (String.capitalize (name sym_csf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_csf =
  Format.sprintf "%s \"%s\"" (longname sym_csf) (string_off sym_csf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol sym_cfh -> sym_cfh
  | sym_csf -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol"
      "Coordinate_set_fence_heterogeneous_symbol"
      (name sym_csf) "check"
;;

let coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol sym_cfh -> sym_cfh
  | sym_csf -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol"
      "Coordinate_set_fence_homogeneous_symbol"
      (name sym_csf) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_fence_symbol sym_csf = 
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
    Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol = function
  | Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_rho_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_theta_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_linear_x_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_planar_x_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_constructor sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_planar_y_constructor sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
      let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
      Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_constructor sym_cfh
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_heterogeneous_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;

let is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_fence_symbol sym_csf =
  if not (is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf)
  then false
  else
    begin
  let sym_cfh = coordinate_set_fence_homogeneous_symbol_off_coordinate_set_fence_symbol sym_csf in
  Coordinate_set_fence_homogeneous_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_fence_homogeneous_symbol sym_cfh
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh = 
  Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh = 
  Coordinate_set_fence_symbol_t.Coordinate_set_fence_homogeneous_symbol sym_cfh
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_symbol sym_chc = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_symbol sym_chc in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol sym_ccr = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol sym_ccr in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol sym_ccp = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol sym_ccp in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol sym_ccz = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol sym_ccz in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_polar_symbol sym_chp = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_polar_symbol sym_chp in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_polar_rho_symbol sym_cpr = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_polar_rho_symbol sym_cpr in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_polar_theta_symbol sym_cpt = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_polar_theta_symbol sym_cpt in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst = 
  let sym_cfh = Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst in
    coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_linear_symbol sym_chl = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_linear_symbol sym_chl in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_linear_x_symbol sym_clx = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_linear_x_symbol sym_clx in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_planar_symbol sym_chp = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_planar_symbol sym_chp in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_planar_x_symbol sym_cpx = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_planar_x_symbol sym_cpx in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;

let coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_planar_y_symbol sym_cpy = 
  let sym_cfh = Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_symbol_of_coordinate_set_fence_homogeneous_planar_y_symbol sym_cpy in
    coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_set_fence_heterogeneous_cylindrical_rho_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_constructor s);;

let coordinate_set_fence_heterogeneous_cylindrical_phi_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_constructor s);;

let coordinate_set_fence_heterogeneous_cylindrical_zed_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_constructor s);;

let coordinate_set_fence_heterogeneous_polar_rho_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_constructor s);;

let coordinate_set_fence_heterogeneous_polar_theta_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_rho_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_phi_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_theta_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol (Coordinate_set_fence_heterogeneous_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_x_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_y_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_z_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor s);;

let coordinate_set_fence_homogeneous_linear_x_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_linear_x_constructor s);;

let coordinate_set_fence_homogeneous_planar_x_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_planar_x_constructor s);;

let coordinate_set_fence_homogeneous_planar_y_constructor s = coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol (Coordinate_set_fence_homogeneous_symbol_v.coordinate_set_fence_homogeneous_planar_y_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_set_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_set_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_set_fence_symbol_of_coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_heterogeneous_symbol:Coordinate_set_fence_heterogeneous_symbol_v.ml:make" ->
  try coordinate_set_fence_symbol_of_coordinate_set_fence_homogeneous_symbol
      (Coordinate_set_fence_homogeneous_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_homogeneous_symbol:Coordinate_set_fence_homogeneous_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_set_fence_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_set_fence_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_set_fence_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_set_fence_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate_set_fence subtype" nam s)
      "it does not exists"
      "Check file Coordinate_set_fence_symbol_v.ml"
    in
    failwith "Not_a_coordinate_set_fence_symbol:Coordinate_set_fence_symbol_v.ml:make"
;;


(** Coordinate_set_fence_symbol_v at 11:32:48 on 14 Dec 2016. created by version v2.4 of generator *)



