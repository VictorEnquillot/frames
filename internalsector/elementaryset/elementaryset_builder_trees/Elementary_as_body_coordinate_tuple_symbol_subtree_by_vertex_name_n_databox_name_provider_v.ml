(** {3 Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v";
   "Needs : BELE:Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_body_coordinate_tuple_symbol tree ";
   "Author : François Colonna 04 octobre 2016 at 09:06:22+02:00";
  ]
;;

(*    Elementary_context_databox                       Db1pointsdata_context_databox        *)
(*               |                                 |                                        *)
(*               |                                ...                                       *)
(*               |                                 |                                        *)
(*    Elementary_body_coordinate_tuple                 Db1pointsdata_set_body_record_vertex     *)
(*              "A_A"                             <=>          "A_A"                        *)
(*          /         \                                       /  |  \                       *)
(*    Elementary_border_coordinate                     keyword name sequence_float          *)
(*       /   |    \                                                      |                  *)
(*      x    y     z                                                     |                  *)
(*      rho  theta z                              <=>               float tuple             *)
(*      rho  phi   theta                                            coordinate kind         *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

let elementary_as_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind nam_ver sym_dck =

  match sym_dck with
   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol
       (Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor _) ->
	 
	 Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_constructor nam_ver 

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol
       (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor _ )->

	 Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor nam_ver

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_constructor _) ->

	Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_constructor nam_ver 
	  
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor _ )->
	Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_constructor nam_ver 
;;
 
let elementary_as_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind nam_ver sym_dck =

  match sym_dck with
   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol
       (Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor _) ->

      let sym_ele_x = 
	Elementary_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_x_constructor 
	  nam_ver 
      in
      let sym_ele_y = 
	Elementary_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_y_constructor 
	  nam_ver
      in 
      let sym_ele_z =
	Elementary_symbol_v.elementary_fence_coordinate_homogeneous_cartesian_z_constructor 
	  nam_ver 
      in
      [sym_ele_x; sym_ele_y; sym_ele_z]

   | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol
       (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor _ )->
      let sym_ele_rho =
	Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor 
	  nam_ver 
      in
      let sym_ele_phi =
	Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor 
	  nam_ver 
      in
      let sym_ele_zed =
	Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor 
	  nam_ver 
      in
     [sym_ele_rho; sym_ele_phi; sym_ele_zed]

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_constructor _) ->
      let sym_ele_rho =
	Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_polar_rho_constructor 
	  nam_ver 
in
      let sym_ele_theta =
	Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_polar_theta_constructor 
	  nam_ver 
      in

      [sym_ele_rho; sym_ele_theta]
	
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor _ )->
	let sym_ele_rho =
	  Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_rho_constructor 
	    nam_ver 
	in
	let sym_ele_phi =
	  Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_phi_constructor 
	    nam_ver 
	in
	let sym_ele_theta =
	  Elementary_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_theta_constructor 
	  nam_ver 
	in
	
	[sym_ele_rho; sym_ele_phi; sym_ele_theta]
;;
 
(** {6 Building} *)
 
let build (nam_ver, nam_dbo) =

  let sym_db1_dck = 
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_databox_name_provider_v.provide
      nam_dbo 
  in
(* Coercing down *)
  let sym_dck = 
    Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
      sym_db1_dck 
  in

  let sym_ele_ect_l = 
    elementary_as_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind
      nam_ver
      sym_dck 
   in

  let sym_ele_fl = List.map Tree_v.make_of_leaf sym_ele_ect_l in
  let sym_ele_ect =
    elementary_as_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind 
      nam_ver 
      sym_dck 
  in
  Tree_v.make sym_ele_ect sym_ele_fl
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v.ml force on lundi 10 octobre 2016, 09:12:59 (UTC+0200) *)
