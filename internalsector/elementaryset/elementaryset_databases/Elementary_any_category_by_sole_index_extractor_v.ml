(** {6 Elementary_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Elementary_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Elementary_Entity_symbol_by_sole_index_register_v";
   ]
  ;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Elementary_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Elementary_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Elementary_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Elementary_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Elementary_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_elementary_body_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_symbol_off_elementary_symbol
  | "is_elementary_context_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_symbol_off_elementary_symbol
  | "is_elementary_border_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_symbol_off_elementary_symbol
  | "is_elementary_fence_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_symbol_off_elementary_symbol
  | "is_boolean" ->
     Elementary_symbol_v.is_boolean
  | "is_float" ->
     Elementary_symbol_v.is_float
  | "is_integer" ->
     Elementary_symbol_v.is_integer
  | "is_string" ->
     Elementary_symbol_v.is_string
  | "is_black" ->
     Elementary_symbol_v.is_black
  | "is_blue" ->
     Elementary_symbol_v.is_blue
  | "is_green" ->
     Elementary_symbol_v.is_green
  | "is_orange" ->
     Elementary_symbol_v.is_orange
  | "is_pink" ->
     Elementary_symbol_v.is_pink
  | "is_red" ->
     Elementary_symbol_v.is_red
  | "is_white" ->
     Elementary_symbol_v.is_white
  | "is_yellow" ->
     Elementary_symbol_v.is_yellow
  | "is_kilocalorie_second" ->
     Elementary_symbol_v.is_kilocalorie_second
  | "is_kilojoule_second" ->
     Elementary_symbol_v.is_kilojoule_second
  | "is_planck_constant" ->
     Elementary_symbol_v.is_planck_constant
  | "is_degree" ->
     Elementary_symbol_v.is_degree
  | "is_radian" ->
     Elementary_symbol_v.is_radian
  | "is_coulomb" ->
     Elementary_symbol_v.is_coulomb
  | "is_electron_charge" ->
     Elementary_symbol_v.is_electron_charge
  | "is_hartree" ->
     Elementary_symbol_v.is_hartree
  | "is_calorie" ->
     Elementary_symbol_v.is_calorie
  | "is_electron_volt" ->
     Elementary_symbol_v.is_electron_volt
  | "is_joule" ->
     Elementary_symbol_v.is_joule
  | "is_kilocalorie" ->
     Elementary_symbol_v.is_kilocalorie
  | "is_kilojoule" ->
     Elementary_symbol_v.is_kilojoule
  | "is_angstrom" ->
     Elementary_symbol_v.is_angstrom
  | "is_bohr" ->
     Elementary_symbol_v.is_bohr
  | "is_centimeter" ->
     Elementary_symbol_v.is_centimeter
  | "is_decameter" ->
     Elementary_symbol_v.is_decameter
  | "is_decimeter" ->
     Elementary_symbol_v.is_decimeter
  | "is_foot" ->
     Elementary_symbol_v.is_foot
  | "is_inch" ->
     Elementary_symbol_v.is_inch
  | "is_kilometer" ->
     Elementary_symbol_v.is_kilometer
  | "is_light_year" ->
     Elementary_symbol_v.is_light_year
  | "is_meter" ->
     Elementary_symbol_v.is_meter
  | "is_millimeter" ->
     Elementary_symbol_v.is_millimeter
  | "is_nanometer" ->
     Elementary_symbol_v.is_nanometer
  | "is_yard" ->
     Elementary_symbol_v.is_yard
  | "is_electron_mass" ->
     Elementary_symbol_v.is_electron_mass
  | "is_atomic_mass_unit" ->
     Elementary_symbol_v.is_atomic_mass_unit
  | "is_kilogram" ->
     Elementary_symbol_v.is_kilogram
  | "is_celsius" ->
     Elementary_symbol_v.is_celsius
  | "is_kelvin" ->
     Elementary_symbol_v.is_kelvin
  | "is_atomic_time_unit" ->
     Elementary_symbol_v.is_atomic_time_unit
  | "is_femtosecond" ->
     Elementary_symbol_v.is_femtosecond
  | "is_nanosecond" ->
     Elementary_symbol_v.is_nanosecond
  | "is_picosecond" ->
     Elementary_symbol_v.is_picosecond
  | "is_second" ->
     Elementary_symbol_v.is_second
  | "is_unitless" ->
     Elementary_symbol_v.is_unitless
  | "is_canonical_classical_action_kilocalorie_second" ->
     Elementary_symbol_v.is_canonical_classical_action_kilocalorie_second
  | "is_canonical_classical_angle_radian" ->
     Elementary_symbol_v.is_canonical_classical_angle_radian
  | "is_canonical_classical_charge_coulomb" ->
     Elementary_symbol_v.is_canonical_classical_charge_coulomb
  | "is_canonical_classical_energy_kilocalorie" ->
     Elementary_symbol_v.is_canonical_classical_energy_kilocalorie
  | "is_canonical_classical_length_angstrom" ->
     Elementary_symbol_v.is_canonical_classical_length_angstrom
  | "is_canonical_classical_mass_electron_mass" ->
     Elementary_symbol_v.is_canonical_classical_mass_electron_mass
  | "is_canonical_classical_temperature_kelvin" ->
     Elementary_symbol_v.is_canonical_classical_temperature_kelvin
  | "is_canonical_classical_time_femtosecond" ->
     Elementary_symbol_v.is_canonical_classical_time_femtosecond
  | "is_canonical_classical_none" ->
     Elementary_symbol_v.is_canonical_classical_none
  | "is_canonical_quantum_action_planck_constant" ->
     Elementary_symbol_v.is_canonical_quantum_action_planck_constant
  | "is_canonical_quantum_angle_radian" ->
     Elementary_symbol_v.is_canonical_quantum_angle_radian
  | "is_canonical_quantum_charge_electron_charge" ->
     Elementary_symbol_v.is_canonical_quantum_charge_electron_charge
  | "is_canonical_quantum_energy_hartree" ->
     Elementary_symbol_v.is_canonical_quantum_energy_hartree
  | "is_canonical_quantum_length_bohr" ->
     Elementary_symbol_v.is_canonical_quantum_length_bohr
  | "is_canonical_quantum_mass_electron_mass" ->
     Elementary_symbol_v.is_canonical_quantum_mass_electron_mass
  | "is_canonical_quantum_temperature_kelvin" ->
     Elementary_symbol_v.is_canonical_quantum_temperature_kelvin
  | "is_canonical_quantum_time_femtosecond" ->
     Elementary_symbol_v.is_canonical_quantum_time_femtosecond
  | "is_canonical_quantum_none" ->
     Elementary_symbol_v.is_canonical_quantum_none
  | "is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor
  | "is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor
  | "is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
  | "is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
  | "is_elementary_body_coordinate_tuple_homogeneous_linear_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_constructor
  | "is_elementary_body_coordinate_tuple_homogeneous_planar_constructor" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_constructor
  | "is_elementary_body_parameter_tuple_aopef_constructor" ->
     Elementary_symbol_v.is_elementary_body_parameter_tuple_aopef_constructor
  | "is_elementary_body_parameter_tuple_ecppef_constructor" ->
     Elementary_symbol_v.is_elementary_body_parameter_tuple_ecppef_constructor
  | "is_elementary_context_database_constructor" ->
     Elementary_symbol_v.is_elementary_context_database_constructor
  | "is_elementary_context_databox_skeletondata_constructor" ->
     Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor
  | "is_elementary_context_databox_figuredata_constructor" ->
     Elementary_symbol_v.is_elementary_context_databox_figuredata_constructor
  | "is_elementary_context_domain_constructor" ->
     Elementary_symbol_v.is_elementary_context_domain_constructor
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor
  | "is_elementary_border_coordinate_heterogeneous_polar_rho_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_constructor
  | "is_elementary_border_coordinate_heterogeneous_polar_theta_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_constructor
  | "is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor
  | "is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor
  | "is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor
  | "is_elementary_border_coordinate_homogeneous_cartesian_x_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_constructor
  | "is_elementary_border_coordinate_homogeneous_cartesian_y_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_constructor
  | "is_elementary_border_coordinate_homogeneous_cartesian_z_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_constructor
  | "is_elementary_border_coordinate_homogeneous_linear_x_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_constructor
  | "is_elementary_border_coordinate_homogeneous_planar_x_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_constructor
  | "is_elementary_border_coordinate_homogeneous_planar_y_constructor" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_constructor
  | "is_elementary_border_parameter_aopef_coefficient_constructor" ->
     Elementary_symbol_v.is_elementary_border_parameter_aopef_coefficient_constructor
  | "is_elementary_border_parameter_aopef_exponent_constructor" ->
     Elementary_symbol_v.is_elementary_border_parameter_aopef_exponent_constructor
  | "is_elementary_border_parameter_ecppef_coefficient_constructor" ->
     Elementary_symbol_v.is_elementary_border_parameter_ecppef_coefficient_constructor
  | "is_elementary_border_parameter_ecppef_exponent_constructor" ->
     Elementary_symbol_v.is_elementary_border_parameter_ecppef_exponent_constructor
  | "is_elementary_body_coordinate_tuple_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol
  | "is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol
  | "is_elementary_body_parameter_tuple_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_parameter_tuple_symbol_off_elementary_symbol
  | "is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol
  | "is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol
  | "is_elementary_context_database_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_database_symbol_off_elementary_symbol
  | "is_elementary_context_databox_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_databox_symbol_off_elementary_symbol
  | "is_elementary_context_databox_skeletondata_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_databox_skeletondata_symbol_off_elementary_symbol
  | "is_elementary_context_databox_figuredata_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_databox_figuredata_symbol_off_elementary_symbol
  | "is_elementary_context_domain_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_context_domain_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol
  | "is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_aopef_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_ecppef_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_ecppef_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol
  | "is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol
  | "is_elementary_fence_basic_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_basic_symbol_off_elementary_symbol
  | "is_elementary_fence_basic_boolean_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_basic_boolean_symbol_off_elementary_symbol
  | "is_elementary_fence_basic_float_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_basic_float_symbol_off_elementary_symbol
  | "is_elementary_fence_basic_integer_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_basic_integer_symbol_off_elementary_symbol
  | "is_elementary_fence_basic_string_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_basic_string_symbol_off_elementary_symbol
  | "is_elementary_fence_color_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_color_symbol_off_elementary_symbol
  | "is_elementary_fence_units_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_action_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_action_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_angle_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_angle_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_charge_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_charge_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_energy_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_energy_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_length_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_mass_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_mass_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_temperature_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_temperature_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_time_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_time_symbol_off_elementary_symbol
  | "is_elementary_fence_units_actual_none_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_actual_none_symbol_off_elementary_symbol
  | "is_elementary_fence_units_canonical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_canonical_symbol_off_elementary_symbol
  | "is_elementary_fence_units_canonical_classical_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_canonical_classical_symbol_off_elementary_symbol
  | "is_elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol" ->
     Elementary_symbol_v.is_elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol
  | str ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"It is NOT" "Check"
;;

(** {6 Preparing} *)

let sole_index_n_elementary_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Elementary_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let soi_n_des_dol = 
    sole_index_n_elementary_symbol_list_of_string_predicate_of_sole_index
      str_pre 
      soi_any
  in

  if soi_n_des_dol = []
  then
    let nam_fun = "sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index" in
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "an element were stored in register >%s<@.      for Predicate >%s<@.      with a Sole_index included in path %s" 
	 main_register_name
	 str_pre 
	 (Sole_index_v.name soi_any)
      ) 
      (Format.sprintf "NONE@.    Here is a dump of main_register:\
       @. %s@.    Register length =%i" 
		(main_register_dump ()) 
		(Register_v.length main_register) 
      )
      (Format.sprintf "Check whether the Entity defined by Predicate:@.     >%s<@.      has been stored when created" str_pre)
  else
    begin  
      let inc_dol =
	try Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol
	    
	with
	| Failure "Empty_list:List_v.element_off_one_element_list"
	| Failure "Empty_doublet_list:Doublet_list_v.filter_if_left" ->
	    let nam_fun = "sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index" in
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      (Format.sprintf "an element existed for Predicate >%s<@.    with Sole_index inside path %s" 
		 str_pre 
		 (Sole_index_v.name soi_any)
	      ) 
	      (Format.sprintf "it is EMPTY@.    Here is a dump of main_register:\
               @. %s@.    Register length =%i" 
			(main_register_dump ()) 
			(Register_v.length main_register) 
	      )
              "Check that it has been already stored in Elementary_symbol_by_sole_index_register"
         in

       try List_v.element_off_one_element_list inc_dol
       with
       | Failure "Empty_list:List_v.element_off_one_element_list"
       | Failure "Several_elements:List_v.element_off_one_element_list" ->
           let str_l = Register_v.string_list_of_register 
	       main_register_name_of_key
	       main_register_name_of_value 
	       main_register 
        in
	   let nam_fun = "sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index" in

           Error_messages_v.print_fatal_error nam_mod nam_fun
	     (Format.sprintf "One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
		str_pre 
		(Sole_index_v.name soi_any)
	     ) 
	  (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	     (Doublet_list_v.name_with_separator Sole_index_v.name Elementary_symbol_v.fullname ";\n   "
		soi_n_des_dol
	     )
	  )
	  (Format.sprintf "Check Register content :@.    %s"
	     (List_v.name_with_separator (fun s->s) ";\n   " str_l)
	  )
    end
;;

let sole_index_of_string_predicate_off_sole_index str_pre soi_any =
  let soi_n_fss =
    sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let elementary_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_elementary_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Elementary_context_fence_units_canonical} *)

let elementary_fence_units_canonical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_canonical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_canonical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_canonical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_canonical_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_canonical_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_symbol_v.name sym_ldb
;;

let elementary_fence_units_canonical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_canonical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context_databox_figuredata} *)

let elementary_context_databox_figuredata_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_databox_figuredata_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_databox_figuredata_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_figuredata_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_databox_figuredata_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_databox_figuredata_symbol_off_elementary_symbol des_pre
;;

let elementary_context_databox_figuredata_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_figuredata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_figuredata_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_figuredata_symbol_v.name sym_ldb
;;

let elementary_context_databox_figuredata_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_figuredata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_figuredata_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_figuredata_symbol_v.string_off sym_ldb
;;

let elementary_context_databox_figuredata_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_figuredata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_figuredata_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context_databox_skeletondata} *)

let elementary_context_databox_skeletondata_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_databox_skeletondata_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_databox_skeletondata_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_skeletondata_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_databox_skeletondata_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_databox_skeletondata_symbol_off_elementary_symbol des_pre
;;

let elementary_context_databox_skeletondata_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_skeletondata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_skeletondata_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_skeletondata_symbol_v.name sym_ldb
;;

let elementary_context_databox_skeletondata_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_skeletondata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_skeletondata_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_skeletondata_symbol_v.string_off sym_ldb
;;

let elementary_context_databox_skeletondata_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_skeletondata_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_skeletondata_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context_databox} *)

let elementary_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_databox_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_databox_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_databox_symbol_off_elementary_symbol des_pre
;;

let elementary_context_databox_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_symbol_v.name sym_ldb
;;

let elementary_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_symbol_off_sole_index soi_ldb in
  Elementary_context_databox_symbol_v.string_off sym_ldb
;;

let elementary_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context} *)

let elementary_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_symbol_off_elementary_symbol des_pre
;;

let elementary_context_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_symbol_off_sole_index soi_ldb in
  Elementary_context_symbol_v.name sym_ldb
;;

let elementary_context_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_symbol_off_sole_index soi_ldb in
  Elementary_context_symbol_v.string_off sym_ldb
;;

let elementary_context_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_time} *)

let elementary_fence_units_actual_time_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_time_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_time_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_time_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_time_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_time_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_time_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_time_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_time_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_time_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_time_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_time_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_time_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_time_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_time_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_time_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_time_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_heterogeneous_cylindrical} *)

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_heterogeneous_polar} *)

let elementary_body_coordinate_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_polar_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_polar_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_heterogeneous_spherical} *)

let elementary_body_coordinate_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_heterogeneous} *)

let elementary_body_coordinate_tuple_heterogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_heterogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_heterogeneous_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_heterogeneous_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_heterogeneous_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_homogeneous_cartesian} *)

let elementary_body_coordinate_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_homogeneous_linear} *)

let elementary_body_coordinate_tuple_homogeneous_linear_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_homogeneous_linear_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_linear_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_linear_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_linear_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_linear_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_homogeneous_planar} *)

let elementary_body_coordinate_tuple_homogeneous_planar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_homogeneous_planar_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_planar_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_planar_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_planar_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_planar_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple_homogeneous} *)

let elementary_body_coordinate_tuple_homogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_homogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_homogeneous_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_homogeneous_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_homogeneous_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_coordinate_tuple} *)

let elementary_body_coordinate_tuple_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_coordinate_tuple_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_coordinate_tuple_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_coordinate_tuple_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_coordinate_tuple_symbol_off_elementary_symbol des_pre
;;

let elementary_body_coordinate_tuple_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_symbol_v.name sym_ldb
;;

let elementary_body_coordinate_tuple_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_symbol_off_sole_index soi_ldb in
  Elementary_body_coordinate_tuple_symbol_v.string_off sym_ldb
;;

let elementary_body_coordinate_tuple_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_coordinate_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_coordinate_tuple_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_parameter_tuple_aopef} *)

let elementary_body_parameter_tuple_aopef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_parameter_tuple_aopef_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_aopef_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_parameter_tuple_aopef_symbol_off_elementary_symbol des_pre
;;

let elementary_body_parameter_tuple_aopef_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_aopef_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_aopef_symbol_v.name sym_ldb
;;

let elementary_body_parameter_tuple_aopef_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_aopef_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_aopef_symbol_v.string_off sym_ldb
;;

let elementary_body_parameter_tuple_aopef_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_aopef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_parameter_tuple_ecppef} *)

let elementary_body_parameter_tuple_ecppef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_parameter_tuple_ecppef_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_ecppef_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_parameter_tuple_ecppef_symbol_off_elementary_symbol des_pre
;;

let elementary_body_parameter_tuple_ecppef_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_ecppef_symbol_v.name sym_ldb
;;

let elementary_body_parameter_tuple_ecppef_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_ecppef_symbol_v.string_off sym_ldb
;;

let elementary_body_parameter_tuple_ecppef_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body_parameter_tuple} *)

let elementary_body_parameter_tuple_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_parameter_tuple_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_parameter_tuple_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_parameter_tuple_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_parameter_tuple_symbol_off_elementary_symbol des_pre
;;

let elementary_body_parameter_tuple_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_symbol_v.name sym_ldb
;;

let elementary_body_parameter_tuple_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_symbol_off_sole_index soi_ldb in
  Elementary_body_parameter_tuple_symbol_v.string_off sym_ldb
;;

let elementary_body_parameter_tuple_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_parameter_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_parameter_tuple_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_body} *)

let elementary_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_body_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_body_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_body_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_body_symbol_off_elementary_symbol des_pre
;;

let elementary_body_name_off_sole_index soi_any =
  let soi_ldb = elementary_body_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_symbol_off_sole_index soi_ldb in
  Elementary_body_symbol_v.name sym_ldb
;;

let elementary_body_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_body_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_symbol_off_sole_index soi_ldb in
  Elementary_body_symbol_v.string_off sym_ldb
;;

let elementary_body_tag_off_sole_index soi_any =
  let soi_ldb = elementary_body_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_cylindrical_phi} *)

let elementary_border_coordinate_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_cylindrical_rho} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_rho_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_cylindrical} *)

let elementary_border_coordinate_heterogeneous_cylindrical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_cylindrical_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_cylindrical_zed} *)

let elementary_border_coordinate_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_polar_rho} *)

let elementary_border_coordinate_heterogeneous_polar_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_polar_rho_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_rho_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_rho_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_rho_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_rho_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_polar} *)

let elementary_border_coordinate_heterogeneous_polar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_polar_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_polar_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_polar_theta} *)

let elementary_border_coordinate_heterogeneous_polar_theta_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_polar_theta_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_theta_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_theta_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_polar_theta_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_polar_theta_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_spherical_phi} *)

let elementary_border_coordinate_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_spherical_rho} *)

let elementary_border_coordinate_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_rho_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_spherical} *)

let elementary_border_coordinate_heterogeneous_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_spherical_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous_spherical_theta} *)

let elementary_border_coordinate_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_heterogeneous} *)

let elementary_border_coordinate_heterogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_heterogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_heterogeneous_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_heterogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_heterogeneous_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_heterogeneous_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_heterogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_cartesian} *)

let elementary_border_coordinate_homogeneous_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_cartesian_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_cartesian_x} *)

let elementary_border_coordinate_homogeneous_cartesian_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_cartesian_x_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_x_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_x_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_x_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_x_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_cartesian_y} *)

let elementary_border_coordinate_homogeneous_cartesian_y_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_cartesian_y_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_y_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_y_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_y_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_y_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_cartesian_z} *)

let elementary_border_coordinate_homogeneous_cartesian_z_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_cartesian_z_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_z_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_z_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_cartesian_z_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_cartesian_z_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_linear} *)

let elementary_border_coordinate_homogeneous_linear_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_linear_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_linear_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_linear_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_linear_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_linear_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_linear_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_linear_x} *)

let elementary_border_coordinate_homogeneous_linear_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_linear_x_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_linear_x_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_linear_x_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_linear_x_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_linear_x_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_linear_x_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_planar} *)

let elementary_border_coordinate_homogeneous_planar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_planar_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_planar_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_planar_x} *)

let elementary_border_coordinate_homogeneous_planar_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_planar_x_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_planar_x_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_x_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_x_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_x_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_x_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous_planar_y} *)

let elementary_border_coordinate_homogeneous_planar_y_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_planar_y_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_planar_y_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_y_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_y_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_planar_y_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_planar_y_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate_homogeneous} *)

let elementary_border_coordinate_homogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_homogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_homogeneous_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_homogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_homogeneous_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_homogeneous_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_homogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_coordinate} *)

let elementary_border_coordinate_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_coordinate_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_coordinate_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_coordinate_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_coordinate_symbol_off_elementary_symbol des_pre
;;

let elementary_border_coordinate_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_symbol_v.name sym_ldb
;;

let elementary_border_coordinate_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_symbol_off_sole_index soi_ldb in
  Elementary_border_coordinate_symbol_v.string_off sym_ldb
;;

let elementary_border_coordinate_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_coordinate_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_coordinate_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_aopef_coefficient} *)

let elementary_border_parameter_aopef_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_aopef_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_aopef_coefficient_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_coefficient_symbol_v.name sym_ldb
;;

let elementary_border_parameter_aopef_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_coefficient_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_aopef_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_aopef_exponent} *)

let elementary_border_parameter_aopef_exponent_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_aopef_exponent_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_exponent_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_aopef_exponent_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_exponent_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_exponent_symbol_v.name sym_ldb
;;

let elementary_border_parameter_aopef_exponent_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_exponent_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_exponent_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_aopef_exponent_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_exponent_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_aopef} *)

let elementary_border_parameter_aopef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_aopef_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_aopef_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_aopef_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_aopef_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_aopef_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_symbol_v.name sym_ldb
;;

let elementary_border_parameter_aopef_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_aopef_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_aopef_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_aopef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_ecppef_coefficient} *)

let elementary_border_parameter_ecppef_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_ecppef_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_ecppef_coefficient_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_ecppef_coefficient_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_coefficient_symbol_v.name sym_ldb
;;

let elementary_border_parameter_ecppef_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_coefficient_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_ecppef_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_ecppef_exponent} *)

let elementary_border_parameter_ecppef_exponent_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_ecppef_exponent_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_exponent_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_ecppef_exponent_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_ecppef_exponent_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_exponent_symbol_v.name sym_ldb
;;

let elementary_border_parameter_ecppef_exponent_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_exponent_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_ecppef_exponent_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter_ecppef} *)

let elementary_border_parameter_ecppef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_ecppef_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_ecppef_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_ecppef_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_ecppef_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_ecppef_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_symbol_v.name sym_ldb
;;

let elementary_border_parameter_ecppef_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_ecppef_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_ecppef_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_ecppef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border_parameter} *)

let elementary_border_parameter_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_parameter_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_parameter_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_parameter_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_parameter_symbol_off_elementary_symbol des_pre
;;

let elementary_border_parameter_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_symbol_v.name sym_ldb
;;

let elementary_border_parameter_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_symbol_off_sole_index soi_ldb in
  Elementary_border_parameter_symbol_v.string_off sym_ldb
;;

let elementary_border_parameter_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_parameter_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_parameter_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_border} *)

let elementary_border_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_border_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_border_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_border_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_border_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_border_symbol_off_elementary_symbol des_pre
;;

let elementary_border_name_off_sole_index soi_any =
  let soi_ldb = elementary_border_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_symbol_off_sole_index soi_ldb in
  Elementary_border_symbol_v.name sym_ldb
;;

let elementary_border_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_border_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_symbol_off_sole_index soi_ldb in
  Elementary_border_symbol_v.string_off sym_ldb
;;

let elementary_border_tag_off_sole_index soi_any =
  let soi_ldb = elementary_border_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_border_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context_database} *)

let elementary_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_database_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_database_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_database_symbol_off_elementary_symbol des_pre
;;

let elementary_context_database_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_database_symbol_off_sole_index soi_ldb in
  Elementary_context_database_symbol_v.name sym_ldb
;;

let elementary_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_database_symbol_off_sole_index soi_ldb in
  Elementary_context_database_symbol_v.string_off sym_ldb
;;

let elementary_context_database_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_context_domain} *)

let elementary_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_context_domain_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_context_domain_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_context_domain_symbol_off_elementary_symbol des_pre
;;

let elementary_context_domain_name_off_sole_index soi_any =
  let soi_ldb = elementary_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_domain_symbol_off_sole_index soi_ldb in
  Elementary_context_domain_symbol_v.name sym_ldb
;;

let elementary_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_domain_symbol_off_sole_index soi_ldb in
  Elementary_context_domain_symbol_v.string_off sym_ldb
;;

let elementary_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = elementary_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_basic_boolean} *)

let elementary_fence_basic_boolean_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_basic_boolean_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_basic_boolean_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_boolean_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_basic_boolean_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_basic_boolean_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_basic_boolean_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_boolean_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_boolean_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_boolean_symbol_v.name sym_ldb
;;

let elementary_fence_basic_boolean_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_boolean_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_boolean_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_boolean_symbol_v.string_off sym_ldb
;;

let elementary_fence_basic_boolean_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_boolean_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_boolean_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_basic_float} *)

let elementary_fence_basic_float_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_basic_float_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_basic_float_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_float_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_basic_float_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_basic_float_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_basic_float_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_float_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_float_symbol_v.name sym_ldb
;;

let elementary_fence_basic_float_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_float_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_float_symbol_v.string_off sym_ldb
;;

let elementary_fence_basic_float_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_float_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_basic_integer} *)

let elementary_fence_basic_integer_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_basic_integer_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_basic_integer_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_integer_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_basic_integer_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_basic_integer_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_basic_integer_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_integer_symbol_v.name sym_ldb
;;

let elementary_fence_basic_integer_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_integer_symbol_v.string_off sym_ldb
;;

let elementary_fence_basic_integer_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_basic_string} *)

let elementary_fence_basic_string_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_basic_string_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_basic_string_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_string_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_basic_string_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_basic_string_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_basic_string_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_string_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_string_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_string_symbol_v.name sym_ldb
;;

let elementary_fence_basic_string_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_string_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_string_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_string_symbol_v.string_off sym_ldb
;;

let elementary_fence_basic_string_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_string_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_string_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_basic} *)

let elementary_fence_basic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_basic_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_basic_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_basic_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_basic_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_basic_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_symbol_v.name sym_ldb
;;

let elementary_fence_basic_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_symbol_off_sole_index soi_ldb in
  Elementary_fence_basic_symbol_v.string_off sym_ldb
;;

let elementary_fence_basic_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_basic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_color} *)

let elementary_fence_color_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_color_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_color_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_color_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_color_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_color_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_color_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_color_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_color_symbol_off_sole_index soi_ldb in
  Elementary_fence_color_symbol_v.name sym_ldb
;;

let elementary_fence_color_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_color_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_color_symbol_off_sole_index soi_ldb in
  Elementary_fence_color_symbol_v.string_off sym_ldb
;;

let elementary_fence_color_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_color_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_color_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence} *)

let elementary_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_symbol_off_sole_index soi_ldb in
  Elementary_fence_symbol_v.name sym_ldb
;;

let elementary_fence_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_symbol_off_sole_index soi_ldb in
  Elementary_fence_symbol_v.string_off sym_ldb
;;

let elementary_fence_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_action} *)

let elementary_fence_units_actual_action_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_action_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_action_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_action_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_action_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_action_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_action_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_action_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_action_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_action_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_action_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_action_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_action_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_action_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_action_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_action_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_action_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_angle} *)

let elementary_fence_units_actual_angle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_angle_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_angle_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_angle_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_angle_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_angle_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_angle_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_angle_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_angle_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_angle_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_angle_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_angle_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_angle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_charge} *)

let elementary_fence_units_actual_charge_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_charge_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_charge_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_charge_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_charge_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_charge_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_charge_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_charge_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_charge_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_charge_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_charge_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_charge_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_charge_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_charge_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_charge_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_charge_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_charge_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_energy} *)

let elementary_fence_units_actual_energy_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_energy_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_energy_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_energy_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_energy_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_energy_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_energy_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_energy_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_energy_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_energy_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_energy_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_energy_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_energy_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_energy_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_energy_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_energy_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_energy_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_length} *)

let elementary_fence_units_actual_length_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_length_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_length_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_length_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_length_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_length_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_length_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_length_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_length_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_length_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_length_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_length_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_length_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_length_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_length_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_length_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_mass} *)

let elementary_fence_units_actual_mass_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_mass_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_mass_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_mass_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_mass_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_mass_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_mass_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_mass_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_mass_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_mass_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_mass_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_mass_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_mass_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_mass_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_mass_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_mass_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_mass_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_none} *)

let elementary_fence_units_actual_none_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_none_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_none_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_none_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_none_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_none_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_none_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_none_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_none_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_none_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_none_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_none_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_none_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_none_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_none_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_none_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_none_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual} *)

let elementary_fence_units_actual_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_actual_temperature} *)

let elementary_fence_units_actual_temperature_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_actual_temperature_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_actual_temperature_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_temperature_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_actual_temperature_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_actual_temperature_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_actual_temperature_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_temperature_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_temperature_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_temperature_symbol_v.name sym_ldb
;;

let elementary_fence_units_actual_temperature_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_temperature_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_temperature_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_actual_temperature_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_actual_temperature_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_actual_temperature_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_actual_temperature_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_canonical_classical} *)

let elementary_fence_units_canonical_classical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_canonical_classical_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_canonical_classical_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_classical_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_canonical_classical_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_canonical_classical_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_canonical_classical_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_classical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_classical_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_classical_symbol_v.name sym_ldb
;;

let elementary_fence_units_canonical_classical_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_classical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_classical_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_classical_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_canonical_classical_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_classical_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_classical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units_canonical_quantum} *)

let elementary_fence_units_canonical_quantum_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_canonical_quantum_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_quantum_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_canonical_quantum_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_canonical_quantum_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_quantum_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_quantum_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_quantum_symbol_v.name sym_ldb
;;

let elementary_fence_units_canonical_quantum_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_quantum_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_quantum_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_canonical_quantum_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_canonical_quantum_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_canonical_quantum_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_canonical_quantum_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Elementary_context_fence_units} *)

let elementary_fence_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_elementary_fence_units_symbol_off_elementary_symbol"
    soi_any
;;

let elementary_fence_units_symbol_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    elementary_symbol_of_string_predicate_off_sole_index 
      "is_elementary_fence_units_symbol_off_elementary_symbol"
      soi_ldb
  in
  Elementary_symbol_v.elementary_fence_units_symbol_off_elementary_symbol des_pre
;;

let elementary_fence_units_name_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_symbol_v.name sym_ldb
;;

let elementary_fence_units_string_off_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_symbol_off_sole_index soi_ldb in
  Elementary_fence_units_symbol_v.string_off sym_ldb
;;

let elementary_fence_units_tag_off_sole_index soi_any =
  let soi_ldb = elementary_fence_units_sole_index_off_sole_index soi_any in
  let sym_ldb = elementary_fence_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* done with do_extractor.sh on mardi 7 juin 2016, 16:12:57 (UTC+0200) *)
