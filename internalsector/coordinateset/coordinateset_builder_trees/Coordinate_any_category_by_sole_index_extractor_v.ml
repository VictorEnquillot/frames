(** {6 Coordinate_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Coordinate_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Coordinate_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Coordinate_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Coordinate_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Coordinate_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Coordinate_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Coordinate_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_coordinate_context_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_context_symbol_off_coordinate_symbol
  | "is_coordinate_set_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_symbol_off_coordinate_symbol
  | "is_coordinate_context_database_constructor" ->
     Coordinate_symbol_v.is_coordinate_context_database_constructor
  | "is_coordinate_context_databox_constructor" ->
     Coordinate_symbol_v.is_coordinate_context_databox_constructor
  | "is_coordinate_context_domain_constructor" ->
     Coordinate_symbol_v.is_coordinate_context_domain_constructor
  | "is_coordinate_context_sector_constructor" ->
     Coordinate_symbol_v.is_coordinate_context_sector_constructor
  | "is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
  | "is_coordinate_set_body_tuple_heterogeneous_polar_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_constructor
  | "is_coordinate_set_body_tuple_heterogeneous_spherical_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor
  | "is_coordinate_set_body_tuple_homogeneous_cartesian_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_constructor
  | "is_coordinate_set_body_tuple_homogeneous_linear_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_constructor
  | "is_coordinate_set_body_tuple_homogeneous_planar_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_constructor
  | "is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
  | "is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
  | "is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
  | "is_coordinate_set_fence_heterogeneous_polar_rho_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_constructor
  | "is_coordinate_set_fence_heterogeneous_polar_theta_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_constructor
  | "is_coordinate_set_fence_heterogeneous_spherical_rho_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor
  | "is_coordinate_set_fence_heterogeneous_spherical_phi_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor
  | "is_coordinate_set_fence_heterogeneous_spherical_theta_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor
  | "is_coordinate_set_fence_homogeneous_cartesian_x_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_constructor
  | "is_coordinate_set_fence_homogeneous_cartesian_y_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_constructor
  | "is_coordinate_set_fence_homogeneous_cartesian_z_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_constructor
  | "is_coordinate_set_fence_homogeneous_linear_x_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_constructor
  | "is_coordinate_set_fence_homogeneous_planar_x_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_constructor
  | "is_coordinate_set_fence_homogeneous_planar_y_constructor" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_constructor
  | "is_coordinate_context_database_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_context_database_symbol_off_coordinate_symbol
  | "is_coordinate_context_databox_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_context_databox_symbol_off_coordinate_symbol
  | "is_coordinate_context_domain_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_context_domain_symbol_off_coordinate_symbol
  | "is_coordinate_context_sector_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_context_sector_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol
  | "is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol
  | "is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol" ->
     Coordinate_symbol_v.is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_coordinate_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Coordinate_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_coordinate_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_coordinate_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_coordinate_symbol_list_of_string_predicate_of_sole_index 
      str_pre soi_any
  in
  
  if soi_n_des_dol = []
  then
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
              "Check that it has been already stored in Coordinate_symbol_by_sole_index_register"
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
          Error_messages_v.print_fatal_error nam_mod nam_fun
	    (Format.sprintf "At least One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
	       str_pre 
	       (Sole_index_v.name soi_any)
	    ) 
	    (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	       (Doublet_list_v.name_with_separator Sole_index_v.name Coordinate_symbol_v.fullname ";\n   "
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
    sole_index_n_coordinate_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let coordinate_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_coordinate_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Coordinate_context_context_database} *)

let coordinate_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_context_database_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_context_database_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_context_database_symbol_off_coordinate_symbol des_pre
;;

let coordinate_context_database_name_off_sole_index soi_any =
  let soi_ldb = coordinate_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_database_symbol_off_sole_index soi_ldb in
  Coordinate_context_database_symbol_v.name sym_ldb
;;

let coordinate_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_database_symbol_off_sole_index soi_ldb in
  Coordinate_context_database_symbol_v.string_off sym_ldb
;;

let coordinate_context_database_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_context_databox} *)

let coordinate_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_context_databox_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_context_databox_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_context_databox_symbol_off_coordinate_symbol des_pre
;;

let coordinate_context_databox_name_off_sole_index soi_any =
  let soi_ldb = coordinate_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_databox_symbol_off_sole_index soi_ldb in
  Coordinate_context_databox_symbol_v.name sym_ldb
;;

let coordinate_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_databox_symbol_off_sole_index soi_ldb in
  Coordinate_context_databox_symbol_v.string_off sym_ldb
;;

let coordinate_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_context_domain} *)

let coordinate_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_context_domain_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_context_domain_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_context_domain_symbol_off_coordinate_symbol des_pre
;;

let coordinate_context_domain_name_off_sole_index soi_any =
  let soi_ldb = coordinate_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_domain_symbol_off_sole_index soi_ldb in
  Coordinate_context_domain_symbol_v.name sym_ldb
;;

let coordinate_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_domain_symbol_off_sole_index soi_ldb in
  Coordinate_context_domain_symbol_v.string_off sym_ldb
;;

let coordinate_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_context_sector} *)

let coordinate_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_context_sector_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_context_sector_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_context_sector_symbol_off_coordinate_symbol des_pre
;;

let coordinate_context_sector_name_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_sector_symbol_off_sole_index soi_ldb in
  Coordinate_context_sector_symbol_v.name sym_ldb
;;

let coordinate_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_sector_symbol_off_sole_index soi_ldb in
  Coordinate_context_sector_symbol_v.string_off sym_ldb
;;

let coordinate_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_context} *)

let coordinate_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_context_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_context_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_context_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_context_symbol_off_coordinate_symbol des_pre
;;

let coordinate_context_name_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_symbol_off_sole_index soi_ldb in
  Coordinate_context_symbol_v.name sym_ldb
;;

let coordinate_context_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_symbol_off_sole_index soi_ldb in
  Coordinate_context_symbol_v.string_off sym_ldb
;;

let coordinate_context_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_context_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body} *)

let coordinate_set_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_symbol_v.name sym_ldb
;;

let coordinate_set_body_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_heterogeneous_cylindrical} *)

let coordinate_set_body_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_heterogeneous_polar} *)

let coordinate_set_body_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_heterogeneous_polar_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_heterogeneous_polar_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_polar_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_polar_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_polar_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_polar_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_heterogeneous_spherical} *)

let coordinate_set_body_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_heterogeneous_spherical_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_spherical_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_spherical_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_spherical_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_heterogeneous} *)

let coordinate_set_body_tuple_heterogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_heterogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_heterogeneous_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_heterogeneous_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_heterogeneous_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_heterogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_homogeneous_cartesian} *)

let coordinate_set_body_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_homogeneous_cartesian_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_cartesian_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_cartesian_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_homogeneous_linear} *)

let coordinate_set_body_tuple_homogeneous_linear_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_homogeneous_linear_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_homogeneous_linear_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_linear_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_linear_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_linear_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_linear_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_homogeneous_planar} *)

let coordinate_set_body_tuple_homogeneous_planar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_homogeneous_planar_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_homogeneous_planar_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_planar_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_planar_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_planar_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_planar_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple_homogeneous} *)

let coordinate_set_body_tuple_homogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_homogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_homogeneous_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_homogeneous_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_homogeneous_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_homogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_body_tuple} *)

let coordinate_set_body_tuple_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_body_tuple_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_body_tuple_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_body_tuple_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_body_tuple_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_body_tuple_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_symbol_v.name sym_ldb
;;

let coordinate_set_body_tuple_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_symbol_off_sole_index soi_ldb in
  Coordinate_set_body_tuple_symbol_v.string_off sym_ldb
;;

let coordinate_set_body_tuple_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_body_tuple_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_cylindrical_phi} *)

let coordinate_set_fence_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_phi_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_cylindrical_rho} *)

let coordinate_set_fence_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_rho_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_cylindrical} *)

let coordinate_set_fence_heterogeneous_cylindrical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_cylindrical_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_cylindrical_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_cylindrical_zed} *)

let coordinate_set_fence_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_cylindrical_zed_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_polar_rho} *)

let coordinate_set_fence_heterogeneous_polar_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_polar_rho_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_polar_rho_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_polar_rho_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_rho_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_rho_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_rho_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_rho_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_polar} *)

let coordinate_set_fence_heterogeneous_polar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_polar_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_polar_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_polar_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_polar_theta} *)

let coordinate_set_fence_heterogeneous_polar_theta_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_polar_theta_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_polar_theta_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_polar_theta_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_theta_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_theta_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_polar_theta_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_polar_theta_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_polar_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_polar_theta_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_spherical_phi} *)

let coordinate_set_fence_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_spherical_phi_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_phi_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_phi_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_phi_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_spherical_rho} *)

let coordinate_set_fence_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_spherical_rho_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_rho_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_rho_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_rho_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_spherical} *)

let coordinate_set_fence_heterogeneous_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_spherical_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous_spherical_theta} *)

let coordinate_set_fence_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_spherical_theta_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_theta_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_spherical_theta_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_spherical_theta_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_heterogeneous} *)

let coordinate_set_fence_heterogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_heterogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_heterogeneous_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_heterogeneous_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_symbol_v.name sym_ldb
;;

let coordinate_set_fence_heterogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_heterogeneous_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_heterogeneous_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_heterogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_heterogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_cartesian} *)

let coordinate_set_fence_homogeneous_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_cartesian_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_cartesian_x} *)

let coordinate_set_fence_homogeneous_cartesian_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_cartesian_x_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_cartesian_x_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_x_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_x_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_cartesian_y} *)

let coordinate_set_fence_homogeneous_cartesian_y_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_cartesian_y_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_cartesian_y_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_y_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_y_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_y_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_cartesian_z} *)

let coordinate_set_fence_homogeneous_cartesian_z_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_cartesian_z_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_cartesian_z_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_z_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_cartesian_z_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_cartesian_z_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_cartesian_z_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_linear} *)

let coordinate_set_fence_homogeneous_linear_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_linear_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_linear_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_linear_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_linear_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_linear_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_linear_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_linear_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_linear_x} *)

let coordinate_set_fence_homogeneous_linear_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_linear_x_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_linear_x_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_linear_x_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_linear_x_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_linear_x_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_linear_x_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_linear_x_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_linear_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_linear_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_planar} *)

let coordinate_set_fence_homogeneous_planar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_planar_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_planar_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_planar_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_planar_x} *)

let coordinate_set_fence_homogeneous_planar_x_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_planar_x_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_planar_x_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_planar_x_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_x_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_x_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_x_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_x_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_x_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_x_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous_planar_y} *)

let coordinate_set_fence_homogeneous_planar_y_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_planar_y_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_planar_y_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_planar_y_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_y_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_y_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_planar_y_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_planar_y_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_planar_y_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_planar_y_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence_homogeneous} *)

let coordinate_set_fence_homogeneous_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_homogeneous_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_homogeneous_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_homogeneous_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_symbol_v.name sym_ldb
;;

let coordinate_set_fence_homogeneous_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_homogeneous_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_homogeneous_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_homogeneous_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_homogeneous_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set_fence} *)

let coordinate_set_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_fence_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_fence_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_fence_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_fence_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_fence_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_symbol_v.name sym_ldb
;;

let coordinate_set_fence_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_symbol_off_sole_index soi_ldb in
  Coordinate_set_fence_symbol_v.string_off sym_ldb
;;

let coordinate_set_fence_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Coordinate_context_set} *)

let coordinate_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_coordinate_set_symbol_off_coordinate_symbol"
    soi_any
;;

let coordinate_set_symbol_off_sole_index soi_any =
  let soi_ldb = coordinate_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    coordinate_symbol_of_string_predicate_off_sole_index 
      "is_coordinate_set_symbol_off_coordinate_symbol"
      soi_ldb
  in
  Coordinate_symbol_v.coordinate_set_symbol_off_coordinate_symbol des_pre
;;

let coordinate_set_name_off_sole_index soi_any =
  let soi_ldb = coordinate_set_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_symbol_off_sole_index soi_ldb in
  Coordinate_set_symbol_v.name sym_ldb
;;

let coordinate_set_string_off_off_sole_index soi_any =
  let soi_ldb = coordinate_set_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_symbol_off_sole_index soi_ldb in
  Coordinate_set_symbol_v.string_off sym_ldb
;;

let coordinate_set_tag_off_sole_index soi_any =
  let soi_ldb = coordinate_set_sole_index_off_sole_index soi_any in
  let sym_ldb = coordinate_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on lundi 3 avril 2017, 09:52:56 (UTC+0200) *)
