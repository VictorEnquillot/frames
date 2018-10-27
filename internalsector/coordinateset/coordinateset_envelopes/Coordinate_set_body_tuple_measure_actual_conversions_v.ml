(** {3 Coordinate_set_body_tuple_measure_actual_conversions_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_set_body_tuple_measure_actual_conversions_v";
   "Remark : No conversion for Units_canonical they have well defined canonical units";
   "Remark : Only actual units are converted";
   "Author : François Colonna 28 avril 2017 at 16:38:00+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Checking} *)

let check_are_equal_of_units_actual_of_units_actual uac_1 uac_2 =
  if (uac_1 = uac_2)
  then ()
  else 
    Error_messages_v.print_fatal_error nam_mod "check_are_equal_of_units_actual_of_units_actual"
      "Units_actuals were equal"
      (Format.sprintf "%s and %s" (Units_actual_v.name uac_1) (Units_actual_v.name uac_2))
	 "Check"
;;

let degree_of_units_actual_angle = function
  | Units_actual_angle_t.Degree -> Constants_v.one
  | Units_actual_angle_t.Radian -> Constants_v.degree_of_radian
;;

let radian_of_units_actual_angle = function
  | Units_actual_angle_t.Degree -> Constants_v.radian_of_degree
  | Units_actual_angle_t.Radian -> Constants_v.one
;;

let coordinate_set_body_tuple_cartesian_measure_actual_trio_of_cylindrical_measure_actual_trio mac_cyl_t =

  let ((flo_rho, uac_rho), (flo_phi, uac_phi), (flo_zed, uac_zed)) = mac_cyl_t in
 
(* Conversion to Radian *)
  let uaa_phi = Units_actual_v.units_actual_angle_off_units_actual uac_phi in
  let to_radian = radian_of_units_actual_angle uaa_phi in
  let flo_phi_rad = flo_phi *. to_radian in

  let flo_x_3d = flo_rho *. (cos flo_phi_rad) in
  let flo_y_3d = flo_rho *. (sin flo_phi_rad) in
  let flo_z_3d = flo_zed in

  check_are_equal_of_units_actual_of_units_actual uac_rho uac_zed;

  let mea_cca_x_3d = Measure_actual_v.make flo_x_3d uac_rho in
  let mea_cca_y_3d = Measure_actual_v.make flo_y_3d uac_rho in
  let mea_cca_z_3d = Measure_actual_v.make flo_z_3d uac_rho in

  Trio_v.make mea_cca_x_3d mea_cca_y_3d mea_cca_z_3d 
;;

let coordinate_set_body_tuple_cartesian_measure_actual_trio_of_spherical_measure_actual_trio mea_sph_tri =

  let ((flo_rho, uac_rho), (flo_phi, uac_phi), (flo_the, uac_the)) = mea_sph_tri in
 
(* Conversion to Radian *)
  let uaa_phi = Units_actual_v.units_actual_angle_off_units_actual uac_phi in
  let to_radian = radian_of_units_actual_angle uaa_phi in
  let flo_phi_rad = flo_phi *. to_radian in

  let uaa_the = Units_actual_v.units_actual_angle_off_units_actual uac_the in
  let to_radian = radian_of_units_actual_angle uaa_the in
  let flo_the_rad = flo_the *. to_radian in

  let flo_x_3d = flo_rho *. (sin flo_the_rad) *. (cos flo_phi_rad) in
  let flo_y_3d = flo_rho *. (sin flo_the_rad) *. (sin flo_phi_rad) in
  let flo_z_3d = flo_rho *. (cos flo_the_rad) in

  let mea_sph_x_3d = Measure_actual_v.make flo_x_3d uac_rho in
  let mea_sph_y_3d = Measure_actual_v.make flo_y_3d uac_rho in
  let mea_sph_z_3d = Measure_actual_v.make flo_z_3d uac_rho in

  Trio_v.make mea_sph_x_3d mea_sph_y_3d mea_sph_z_3d 
;;

let coordinate_set_body_tuple_planar_measure_actual_duo_of_polar_measure_actual_duo mea_pol_duo =

  let ((flo_rho, uac_rho), (flo_the, uac_the)) = mea_pol_duo in
 
(* Conversion to Radian *)
  let uaa_the = Units_actual_v.units_actual_angle_off_units_actual uac_the in
  let to_radian = radian_of_units_actual_angle uaa_the in
  let flo_the_rad = flo_the *. to_radian in

  let flo_x_2d = flo_rho *. (cos flo_the_rad) in
  let flo_y_2d = flo_rho *. (sin flo_the_rad) in

  let mea_pol_x_2d = Measure_actual_v.make flo_x_2d uac_rho in
  let mea_pol_y_2d = Measure_actual_v.make flo_y_2d uac_rho in

  Duo_v.make mea_pol_x_2d mea_pol_y_2d 
;;

(** {6 Homogeneous from Heterogeneous } *)

let measure_actual_tuple_homogeneous_of_measure_actual_tuple_heterogeneous mat_het =
  let nam_fun = "measure_actual_tuple_homogeneous_of_measure_actual_tuple_heterogeneous" in

  match mat_het with
  | Tuple_t.Duo mac_d -> 
      let mac_pla_d =
	coordinate_set_body_tuple_planar_measure_actual_duo_of_polar_measure_actual_duo 
	  mac_d
      in
      Tuple_t.Duo mac_pla_d
  | Tuple_t.Trio mac_t ->
      let uni_t = Trio_v.map Doublet_v.right_off_doublet mac_t in
      let uni_3 = Trio_v.right_off_trio uni_t in
      let mac_car_t =
	match uni_3 with 
	| Units_actual_t.Units_actual_angle _ ->
 	    coordinate_set_body_tuple_cartesian_measure_actual_trio_of_spherical_measure_actual_trio 
	      mac_t
	| Units_actual_t.Units_actual_length _ ->
 	    coordinate_set_body_tuple_cartesian_measure_actual_trio_of_cylindrical_measure_actual_trio 
	      mac_t
	| _ ->
	    Error_messages_v.print_fatal_error __LOC__ nam_fun
	      "Third element of Units_actual Trio were either Units_actual_angle or Units_actual_length"
	      (Format.sprintf "%s" (Units_actual_v.name uni_3))
	      "Check"
      in
      Tuple_t.Trio mac_car_t
  | Tuple_t.Empty 
  | Tuple_t.Singlet _ 
  | Tuple_t.Uno _
  | Tuple_t.Quatuor _
  | Tuple_t.Trio_duo _
  | Tuple_t.Duo_trio _ ->
      failwith "Not_a_duo_or_trio"
;;

