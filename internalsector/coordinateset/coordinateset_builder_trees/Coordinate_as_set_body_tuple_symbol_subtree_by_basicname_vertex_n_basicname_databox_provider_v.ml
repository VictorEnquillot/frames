(** {3 Coordinate_as_set_body_tuple_symbol_subtree_by_basicname_vertex_n_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_as_set_body_tuple_symbol_subtree_by_basicname_vertex_n_basicname_databox_provider_v";
   "Needs : BCOO:Db1pointsdataas_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Coordinate_body_coordinate_tuple_symbol tree ";
   "Author : François Colonna 11 janvier 2017 at 11:01:01+01:00";
  ]
;;

(* Coordinate_vs_Db1points_Scheme *)
(*    Coordinate_context_databox         Db1pointsdata_context_databox                  *)
(*               |                           |                                          *)
(*               |                          ...                                         *)
(*               |                           |                                          *)
(*               |                       Db1pointsdata_set_body_record_vertex           *)
(*               |                                        "A_A"                         *)
(*               |                                       /  |  \                        *)
(*                                               keyword vertex_name  \                 *)
(*    Coordinate_set_body_tuple                  Db1pointsdata_set_body_record_vertex   *)
(*            "A_A"                 <=>                          "A_A"                  *)
(*          /   |   \                                          /   |   \                *)                         
(*    Coordinate_set_fence_               Db1pointsdata_set_fence_basic_numerical_float *)
(*       /    |    \                      Db1pointsdata_set_fence_basic_numerical_float *)
(*      f     f     f                     Db1pointsdata_set_fence_basic_numerical_float *)
(*      x     y     z                   |-                                              *)
(*      rho   theta z               <=> |-             coordinate kind                  *)
(*      rho   phi   theta               |-                                              *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;

let coordinate_as_set_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind nam_ver sym_dck =

  match sym_dck with
   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol _ ->
	 
	 Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_constructor nam_ver 

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol _ ->

	 Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_constructor nam_ver

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol _ ->

	Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_linear_constructor nam_ver 

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol _ ->

	Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_planar_constructor nam_ver 

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol _ ->

	Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_constructor nam_ver 
	  
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol _ ->
	Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_constructor nam_ver 
;;
 
let coordinate_as_set_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind nam_ver sym_dck =

  match sym_dck with
   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol _ ->

      let sym_coo_x = 
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor 
	  nam_ver 
      in
      let sym_coo_y = 
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor 
	  nam_ver
      in 
      let sym_coo_z =
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor 
	  nam_ver 
      in
      [sym_coo_x; sym_coo_y; sym_coo_z]

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol _ ->

      let sym_coo_rho =
	Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_constructor 
	  nam_ver 
      in
      let sym_coo_phi =
	Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_constructor 
	  nam_ver 
      in
      let sym_coo_zed =
	Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_constructor 
	  nam_ver 
      in
     [sym_coo_rho; sym_coo_phi; sym_coo_zed]

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol _ ->

      let sym_coo_x =
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_linear_x_constructor 
	  nam_ver 
      in

     [sym_coo_x]

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol _ ->

      let sym_coo_x =
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_planar_x_constructor 
	  nam_ver 
      in

      let sym_coo_y =
	Coordinate_symbol_v.coordinate_set_fence_homogeneous_planar_y_constructor 
	  nam_ver 
      in

     [sym_coo_x; sym_coo_y]

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol _ ->

      let sym_coo_rho =
	Coordinate_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_constructor 
	  nam_ver 
in
      let sym_coo_theta =
	Coordinate_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_constructor 
	  nam_ver 
      in

      [sym_coo_rho; sym_coo_theta]
	
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol _ ->

	let sym_coo_rho =
	  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor 
	    nam_ver 
	in
	let sym_coo_phi =
	  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_constructor 
	    nam_ver 
	in
	let sym_coo_theta =
	  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_constructor 
	  nam_ver 
	in
	
	[sym_coo_rho; sym_coo_phi; sym_coo_theta]
;;
 
(** {6 Building} *)
 
let build (nam_ver, nam_dbo) =

  let sym_db1_dck = 
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v.provide
      nam_dbo 
  in
(* Coercing down *)
  let sym_dck = 
    Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
      sym_db1_dck 
  in

  let sym_coo_cbt_l = 
    coordinate_as_set_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind
      nam_ver
      sym_dck 
   in

  let sym_coo_fl = List.map Tree_v.make_of_leaf sym_coo_cbt_l in
  let sym_coo_cbt =
    coordinate_as_set_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind 
      nam_ver 
      sym_dck 
  in
  Tree_v.make sym_coo_cbt sym_coo_fl
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
