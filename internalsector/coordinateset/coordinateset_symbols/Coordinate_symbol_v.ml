(** {3 Coordinate_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_symbol_t.Coordinate_context_symbol sym_cco ->
    Coordinate_context_symbol_v.name sym_cco
  | Coordinate_symbol_t.Coordinate_set_symbol sym_cse ->
    Coordinate_set_symbol_v.name sym_cse
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_symbol_t.Coordinate_context_symbol sym_cco ->
  Coordinate_context_symbol_v.string_off sym_cco
  | Coordinate_symbol_t.Coordinate_set_symbol sym_cse ->
  Coordinate_set_symbol_v.string_off sym_cse
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_coo =
  Format.sprintf "Coordinate_symbol_t.%s" (String.capitalize (name sym_coo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_coo =
  Format.sprintf "%s \"%s\"" (longname sym_coo) (string_off sym_coo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_context_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_context_symbol sym_cco -> sym_cco
  | sym_coo -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_context_symbol_off_coordinate_symbol"
      "Coordinate_context_symbol"
      (name sym_coo) "check"
;;

let coordinate_set_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_set_symbol sym_cse -> sym_cse
  | sym_coo -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_symbol_off_coordinate_symbol"
      "Coordinate_set_symbol"
      (name sym_coo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let coordinate_context_database_symbol_off_coordinate_symbol sym_coo = 
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
    Coordinate_context_symbol_v.coordinate_context_database_symbol_off_coordinate_context_symbol sym_cco
;;

let coordinate_context_databox_symbol_off_coordinate_symbol sym_coo = 
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
    Coordinate_context_symbol_v.coordinate_context_databox_symbol_off_coordinate_context_symbol sym_cco
;;

let coordinate_context_domain_symbol_off_coordinate_symbol sym_coo = 
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
    Coordinate_context_symbol_v.coordinate_context_domain_symbol_off_coordinate_context_symbol sym_cco
;;

let coordinate_context_sector_symbol_off_coordinate_symbol sym_coo = 
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
    Coordinate_context_symbol_v.coordinate_context_sector_symbol_off_coordinate_context_symbol sym_cco
;;

let coordinate_set_body_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_symbol sym_cse
;;

let coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol sym_coo = 
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
    Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_symbol sym_cse
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_context_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_context_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_symbol_off_coordinate_symbol = function
  | Coordinate_symbol_t.Coordinate_set_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_context_database_constructor sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
      Coordinate_context_symbol_v.is_coordinate_context_database_constructor sym_cco
    end
;;

let is_coordinate_context_databox_constructor sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
      Coordinate_context_symbol_v.is_coordinate_context_databox_constructor sym_cco
    end
;;

let is_coordinate_context_domain_constructor sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
      Coordinate_context_symbol_v.is_coordinate_context_domain_constructor sym_cco
    end
;;

let is_coordinate_context_sector_constructor sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
      Coordinate_context_symbol_v.is_coordinate_context_sector_constructor sym_cco
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_polar_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_constructor sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_spherical_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_cartesian_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_constructor sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_linear_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_constructor sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_planar_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_rho_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_theta_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_linear_x_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_planar_x_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_constructor sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_planar_y_constructor sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
      let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
      Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_constructor sym_cse
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_coordinate_context_database_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
  Coordinate_context_symbol_v.is_coordinate_context_database_symbol_off_coordinate_context_symbol sym_cco
    end
;;

let is_coordinate_context_databox_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
  Coordinate_context_symbol_v.is_coordinate_context_databox_symbol_off_coordinate_context_symbol sym_cco
    end
;;

let is_coordinate_context_domain_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
  Coordinate_context_symbol_v.is_coordinate_context_domain_symbol_off_coordinate_context_symbol sym_cco
    end
;;

let is_coordinate_context_sector_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_context_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cco = coordinate_context_symbol_off_coordinate_symbol sym_coo in
  Coordinate_context_symbol_v.is_coordinate_context_sector_symbol_off_coordinate_context_symbol sym_cco
    end
;;

let is_coordinate_set_body_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_set_symbol sym_cse
    end
;;

let is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol sym_coo =
  if not (is_coordinate_set_symbol_off_coordinate_symbol sym_coo)
  then false
  else
    begin
  let sym_cse = coordinate_set_symbol_off_coordinate_symbol sym_coo in
  Coordinate_set_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_set_symbol sym_cse
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_symbol_of_coordinate_context_symbol sym_cco = 
  Coordinate_symbol_t.Coordinate_context_symbol sym_cco
;;

let coordinate_symbol_of_coordinate_set_symbol sym_cse = 
  Coordinate_symbol_t.Coordinate_set_symbol sym_cse
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let coordinate_symbol_of_coordinate_context_database_symbol sym_ccd = 
  let sym_cco = Coordinate_context_symbol_v.coordinate_context_symbol_of_coordinate_context_database_symbol sym_ccd in
    coordinate_symbol_of_coordinate_context_symbol sym_cco
;;

let coordinate_symbol_of_coordinate_context_databox_symbol sym_ccd = 
  let sym_cco = Coordinate_context_symbol_v.coordinate_context_symbol_of_coordinate_context_databox_symbol sym_ccd in
    coordinate_symbol_of_coordinate_context_symbol sym_cco
;;

let coordinate_symbol_of_coordinate_context_domain_symbol sym_ccd = 
  let sym_cco = Coordinate_context_symbol_v.coordinate_context_symbol_of_coordinate_context_domain_symbol sym_ccd in
    coordinate_symbol_of_coordinate_context_symbol sym_cco
;;

let coordinate_symbol_of_coordinate_context_sector_symbol sym_ccs = 
  let sym_cco = Coordinate_context_symbol_v.coordinate_context_symbol_of_coordinate_context_sector_symbol sym_ccs in
    coordinate_symbol_of_coordinate_context_symbol sym_cco
;;

let coordinate_symbol_of_coordinate_set_body_symbol sym_csb = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_symbol sym_csb in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_symbol sym_cbt = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_symbol sym_cbt in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_heterogeneous_symbol sym_cth = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_heterogeneous_symbol sym_cth in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol sym_chc = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol sym_chc in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_heterogeneous_polar_symbol sym_chp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_heterogeneous_polar_symbol sym_chp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_heterogeneous_spherical_symbol sym_chs = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_heterogeneous_spherical_symbol sym_chs in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_symbol sym_cth = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_homogeneous_symbol sym_cth in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_symbol sym_csf = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_symbol sym_csf in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_symbol sym_cfh in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_symbol sym_chc = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_symbol sym_chc in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol sym_ccr = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol sym_ccr in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol sym_ccp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol sym_ccp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol sym_ccz = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol sym_ccz in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_polar_symbol sym_chp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_polar_symbol sym_chp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_polar_rho_symbol sym_cpr = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_polar_rho_symbol sym_cpr in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_polar_theta_symbol sym_cpt = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_polar_theta_symbol sym_cpt in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_symbol sym_cfh in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_linear_symbol sym_chl = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_linear_symbol sym_chl in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_linear_x_symbol sym_clx = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_linear_x_symbol sym_clx in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_planar_symbol sym_chp = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_planar_symbol sym_chp in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_planar_x_symbol sym_cpx = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_planar_x_symbol sym_cpx in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;

let coordinate_symbol_of_coordinate_set_fence_homogeneous_planar_y_symbol sym_cpy = 
  let sym_cse = Coordinate_set_symbol_v.coordinate_set_symbol_of_coordinate_set_fence_homogeneous_planar_y_symbol sym_cpy in
    coordinate_symbol_of_coordinate_set_symbol sym_cse
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_context_database_constructor s = coordinate_symbol_of_coordinate_context_symbol (Coordinate_context_symbol_v.coordinate_context_database_constructor s);;

let coordinate_context_databox_constructor s = coordinate_symbol_of_coordinate_context_symbol (Coordinate_context_symbol_v.coordinate_context_databox_constructor s);;

let coordinate_context_domain_constructor s = coordinate_symbol_of_coordinate_context_symbol (Coordinate_context_symbol_v.coordinate_context_domain_constructor s);;

let coordinate_context_sector_constructor s = coordinate_symbol_of_coordinate_context_symbol (Coordinate_context_symbol_v.coordinate_context_sector_constructor s);;

let coordinate_set_body_tuple_heterogeneous_cylindrical_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_constructor s);;

let coordinate_set_body_tuple_heterogeneous_polar_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_constructor s);;

let coordinate_set_body_tuple_heterogeneous_spherical_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_constructor s);;

let coordinate_set_body_tuple_homogeneous_cartesian_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_constructor s);;

let coordinate_set_body_tuple_homogeneous_linear_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_linear_constructor s);;

let coordinate_set_body_tuple_homogeneous_planar_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_body_tuple_homogeneous_planar_constructor s);;

let coordinate_set_fence_heterogeneous_cylindrical_rho_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_constructor s);;

let coordinate_set_fence_heterogeneous_cylindrical_phi_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_constructor s);;

let coordinate_set_fence_heterogeneous_cylindrical_zed_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_constructor s);;

let coordinate_set_fence_heterogeneous_polar_rho_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_constructor s);;

let coordinate_set_fence_heterogeneous_polar_theta_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_rho_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_phi_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_theta_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_x_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_y_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_z_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor s);;

let coordinate_set_fence_homogeneous_linear_x_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_linear_x_constructor s);;

let coordinate_set_fence_homogeneous_planar_x_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_planar_x_constructor s);;

let coordinate_set_fence_homogeneous_planar_y_constructor s = coordinate_symbol_of_coordinate_set_symbol (Coordinate_set_symbol_v.coordinate_set_fence_homogeneous_planar_y_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_symbol_of_coordinate_context_symbol
      (Coordinate_context_symbol_v.make nam s)
  with Failure "Not_a_coordinate_context_symbol:Coordinate_context_symbol_v.ml:make" ->
  try coordinate_symbol_of_coordinate_set_symbol
      (Coordinate_set_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_symbol:Coordinate_set_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate subtype" nam s)
      "it does not exists"
      "Check file Coordinate_symbol_v.ml"
    in
    failwith "Not_a_coordinate_symbol:Coordinate_symbol_v.ml:make"
;;


(** Coordinate_symbol_v at 11:32:45 on 14 Dec 2016. created by version v2.4 of generator *)



