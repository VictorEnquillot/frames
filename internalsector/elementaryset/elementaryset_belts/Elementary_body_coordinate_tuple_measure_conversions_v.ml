(** {Elementary_body_coordinate_tuple_measure_conversions_v} *)

let nam_mod = "Elementary_body_coordinate_tuple_measure_conversions_v";;

let elementary_body_coordinate_tuple_cartesian_measure_trio_of_cylindrical_measure_trio mea_ccy_tri =

  let ((flo_rho, sym_uni_rho), (flo_phi, sym_uni_phi), (flo_zed, sym_uni_zed)) = mea_ccy_tri in
 
(* Conversion to Radian *)
  let sym_uan_phi = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_uni_phi in
  let to_radian = Measure_v.radian_of_units_angle_symbol sym_uan_phi in
  let flo_phi_rad = flo_phi *. to_radian in

  let flo_x_3d = flo_rho *. (cos flo_phi_rad) in
  let flo_y_3d = flo_rho *. (sin flo_phi_rad) in
  let flo_z_3d = flo_zed in

  Measure_v.check_are_equal_of_elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_symbol sym_uni_rho sym_uni_zed;

  let mea_cca_x_3d = Measure_v.make flo_x_3d sym_uni_rho in
  let mea_cca_y_3d = Measure_v.make flo_y_3d sym_uni_rho in
  let mea_cca_z_3d = Measure_v.make flo_z_3d sym_uni_rho in

  Trio_v.make mea_cca_x_3d mea_cca_y_3d mea_cca_z_3d 
;;

let elementary_body_coordinate_tuple_cartesian_measure_trio_of_spherical_measure_trio mea_csp_tri =

  let ((flo_rho, sym_uni_rho), (flo_phi, sym_uni_phi), (flo_the, sym_uni_the)) = mea_csp_tri in
 
(* Conversion to Radian *)
  let sym_uan_phi = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_uni_phi in
  let to_radian = Measure_v.radian_of_units_angle_symbol sym_uan_phi in
  let flo_phi_rad = flo_phi *. to_radian in

  let sym_uan_the = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_uni_the in
  let to_radian = Measure_v.radian_of_units_angle_symbol sym_uan_the in
  let flo_the_rad = flo_the *. to_radian in

  let flo_x_3d = flo_rho *. (sin flo_the_rad) *. (cos flo_phi_rad) in
  let flo_y_3d = flo_rho *. (sin flo_the_rad) *. (sin flo_phi_rad) in
  let flo_z_3d = flo_rho *. (cos flo_the_rad) in

  let mea_csp_x_3d = Measure_v.make flo_x_3d sym_uni_rho in
  let mea_csp_y_3d = Measure_v.make flo_y_3d sym_uni_rho in
  let mea_csp_z_3d = Measure_v.make flo_z_3d sym_uni_rho in

  Trio_v.make mea_csp_x_3d mea_csp_y_3d mea_csp_z_3d 
;;

let elementary_body_coordinate_tuple_planar_measure_duo_of_polar_measure_duo mea_cpo_duo =

  let ((flo_rho, sym_uni_rho), (flo_the, sym_uni_the)) = mea_cpo_duo in
 
(* Conversion to Radian *)
  let sym_uan_the = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_uni_the in
  let to_radian = Measure_v.radian_of_units_angle_symbol sym_uan_the in
  let flo_the_rad = flo_the *. to_radian in

  let flo_x_2d = flo_rho *. (cos flo_the_rad) in
  let flo_y_2d = flo_rho *. (sin flo_the_rad) in

  let mea_cpo_x_2d = Measure_v.make flo_x_2d sym_uni_rho in
  let mea_cpo_y_2d = Measure_v.make flo_y_2d sym_uni_rho in

  Duo_v.make mea_cpo_x_2d mea_cpo_y_2d 
;;

let measure_tuple_homogeneous_of_elementary_body_coordinate_tuple_heterogeneous_tag tag_ect_het =
  let soi_ect_het = Tag_v.sole_index_off_tag tag_ect_het in
  let sym_ect_het = Tag_v.entity_off_tag tag_ect_het in
  match sym_ect_het with
  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_cylindrical_symbol sym_ecy ->
      let tag_ecy = Tag_v.make sym_ecy soi_ect_het in
      let mea_ecy_t = Elementary_body_coordinate_tuple_cylindrical_envelope_v.closure_units_as_trio tag_ecy in
      let mea_ect_car_t = 
	elementary_body_coordinate_tuple_cartesian_measure_trio_of_cylindrical_measure_trio 
	  mea_ecy_t 
      in
      Tuple_v.tuple_of_trio mea_ect_car_t

  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_polar_symbol sym_etp ->
      let tag_etp = Tag_v.make sym_etp soi_ect_het in
      let mea_epo_d = Elementary_body_coordinate_tuple_polar_envelope_v.closure_units_as_duo tag_etp in
      let mea_ect_car_d = 
	elementary_body_coordinate_tuple_planar_measure_duo_of_polar_measure_duo 
	  mea_epo_d 
      in
      Tuple_v.tuple_of_duo mea_ect_car_d

  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_spherical_symbol sym_ets ->
      let tag_ets = Tag_v.make sym_ets soi_ect_het in
      let mea_esp_t = Elementary_body_coordinate_tuple_spherical_envelope_v.closure_units_as_trio tag_ets in
      let mea_ets_car_t = 
	elementary_body_coordinate_tuple_cartesian_measure_trio_of_spherical_measure_trio 
	  mea_esp_t 
      in
      Tuple_v.tuple_of_trio mea_ets_car_t
;;

let measure_tuple_homogeneous_of_elementary_body_coordinate_tuple_tag tag_ect =
  let soi_ect = Tag_v.sole_index_off_tag tag_ect in
  let sym_ect = Tag_v.entity_off_tag tag_ect in
  match sym_ect with
  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol sym_ect_het ->
      let tag_ect_het = Tag_v.make sym_ect_het soi_ect in
      measure_tuple_homogeneous_of_elementary_body_coordinate_tuple_heterogeneous_tag tag_ect_het

  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol sym_ect_hom ->
      let tag_ect_hom = Tag_v.make sym_ect_hom soi_ect in
      Elementary_body_coordinate_tuple_homogeneous_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_homogeneous_tag tag_ect_hom
;;

(* Measure instead of Envelope *)

let measure_tuple_of_elementary_body_coordinate_tuple_heterogeneous_tag tag_ect_het =
  let soi_ect_het = Tag_v.sole_index_off_tag tag_ect_het in
  let sym_ect_het = Tag_v.entity_off_tag tag_ect_het in
  match sym_ect_het with
  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_cylindrical_symbol sym_etc ->
      let tag_etc = Tag_v.make sym_etc soi_ect_het in
      Elementary_body_coordinate_tuple_cylindrical_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_cylindrical_tag tag_etc

  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_polar_symbol sym_etp ->
      let tag_etp = Tag_v.make sym_etp soi_ect_het in
      Elementary_body_coordinate_tuple_polar_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_polar_tag tag_etp

  | Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_spherical_symbol sym_ets ->
      let tag_ets = Tag_v.make sym_ets soi_ect_het in
      Elementary_body_coordinate_tuple_spherical_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_spherical_tag tag_ets
;;

let measure_tuple_of_elementary_body_coordinate_tuple_tag tag_ect =
  let soi_ect = Tag_v.sole_index_off_tag tag_ect in
  let sym_ect = Tag_v.entity_off_tag tag_ect in
  match sym_ect with
  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol sym_ect_het ->
      let tag_ect_het = Tag_v.make sym_ect_het soi_ect in
      measure_tuple_of_elementary_body_coordinate_tuple_heterogeneous_tag tag_ect_het

  | Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol sym_ect_het ->
      let tag_ect_het = Tag_v.make sym_ect_het soi_ect in
      Elementary_body_coordinate_tuple_homogeneous_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_homogeneous_tag tag_ect_het
;;

let measure_canonical_tuple_of_elementary_body_coordinate_tuple_tag tag_ect =
  let mea_ect_t = measure_tuple_of_elementary_body_coordinate_tuple_tag tag_ect in
  Tuple_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_ect_t
;;

(* Conversion from heterogeneous to homogeneous + canonical *)

let measure_canonical_homogeneous_tuple_of_elementary_body_coordinate_tuple_tag tag_ect =
  let mea_hom_t = measure_tuple_homogeneous_of_elementary_body_coordinate_tuple_tag tag_ect in
  Tuple_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_hom_t
;;

let measure_canonical_homogeneous_trio_of_measure_trio mea_tri =
  let ((flo_l, sym_uni_l), (flo_m, sym_uni_m), (flo_r, sym_uni_r)) = mea_tri in
  match (sym_uni_m, sym_uni_r) with 
  | (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_uan_m, 
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_uan_r) ->
       let mho_tri =
	 elementary_body_coordinate_tuple_cartesian_measure_trio_of_spherical_measure_trio 
	   mea_tri
       in
       Trio_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mho_tri 
	 
  | (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_uan_m, 
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_ule_r) ->
       let mho_tri =
	 elementary_body_coordinate_tuple_cartesian_measure_trio_of_cylindrical_measure_trio 
	   mea_tri
       in
       Trio_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mho_tri 
	 
  | _ -> 
      Trio_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_tri 
;;

let measure_canonical_homogeneous_duo_of_measure_duo mea_duo =
  let ((flo_l, sym_uni_l), (flo_r, sym_uni_r)) = mea_duo in
  match sym_uni_r with 
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_uan_r ->
      let mho_duo =
	elementary_body_coordinate_tuple_planar_measure_duo_of_polar_measure_duo 
	  mea_duo
       in
       Duo_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mho_duo 
	 
  | _ -> 
      Duo_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_duo 
;;

let measure_canonical_homogeneous_tuple_of_measure_tuple mea_t =
  match mea_t with
  | Tuple_t.Trio mea_tri -> Tuple_t.Trio (measure_canonical_homogeneous_trio_of_measure_trio mea_tri)
  | Tuple_t.Duo mea_duo -> Tuple_t.Duo (measure_canonical_homogeneous_duo_of_measure_duo mea_duo)
  | Tuple_t.Uno mea_uno -> Tuple_t.Uno (Uno_v.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_uno)
  | _ -> failwith ("Not_tuple:"^nam_mod^".measure_canonical_homogeneous_tuple_of_measure_tuple")
;;
