(** {6 Db1pointsdata_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_any_category_by_sole_index_extractor_v";
   "Register : BDB1:Db1pointsdata_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Db1pointsdata_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Db1pointsdata_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Db1pointsdata_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Db1pointsdata_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Db1pointsdata_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_context_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_bundle_coordinates_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_constructor
  | "is_db1pointsdata_set_body_bundle_figure_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_figure_constructor
  | "is_db1pointsdata_set_body_cluster_information_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_information_constructor
  | "is_db1pointsdata_set_body_cluster_vertex_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor
  | "is_db1pointsdata_set_body_record_vertex_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor
  | "is_db1pointsdata_set_body_sequence_float_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_float_constructor
  | "is_db1pointsdata_set_body_name_vertex_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_name_vertex_constructor
  | "is_db1pointsdata_context_databox_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_databox_constructor
  | "is_db1pointsdata_context_database_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_database_constructor
  | "is_db1pointsdata_context_domain_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_domain_constructor
  | "is_db1pointsdata_context_sector_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_sector_constructor
  | "is_db1pointsdata_set_fence_basic_numerical_float_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor
  | "is_db1pointsdata_set_fence_basic_numerical_integer_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_constructor
  | "is_db1pointsdata_set_fence_basic_word_anycase_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_constructor
  | "is_db1pointsdata_set_fence_basic_word_capitalized_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_constructor
  | "is_db1pointsdata_set_fence_basic_word_lowercase_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_constructor
  | "is_db1pointsdata_set_fence_basic_word_uppercase_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_constructor
  | "is_db1pointsdata_set_fence_cell_coordinates_kind_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_constructor
  | "is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor
  | "is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor
  | "is_db1pointsdata_set_fence_cell_figure_kind_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_constructor
  | "is_db1pointsdata_set_fence_cell_figure_name_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_constructor
  | "is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor
  | "is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor
  | "is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor
  | "is_db1pointsdata_set_fence_keyword_figure_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_figure_constructor
  | "is_db1pointsdata_set_fence_keyword_vertex_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor
  | "is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor
  | "is_db1pointsdata_set_fence_token_figure_kind_segment_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_constructor
  | "is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor
  | "is_db1pointsdata_set_fence_token_figure_kind_point_constructor" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_constructor
  | "is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_context_database_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_database_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol
  | "is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol" ->
     Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_db1pointsdata_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Db1pointsdata_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_db1pointsdata_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_db1pointsdata_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_db1pointsdata_symbol_list_of_string_predicate_of_sole_index 
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
              "Check that it has been already stored in Db1pointsdata_symbol_by_sole_index_register"
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
	       (Doublet_list_v.name_with_separator Sole_index_v.name Db1pointsdata_symbol_v.fullname ";\n   "
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
    sole_index_n_db1pointsdata_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let db1pointsdata_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_db1pointsdata_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Db1pointsdata_context_body_bundle_coordinates} *)

let db1pointsdata_set_body_bundle_coordinates_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_bundle_coordinates_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_coordinates_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_bundle_coordinates_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_coordinates_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_bundle_coordinates_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_coordinates_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_bundle_coordinates_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_coordinates_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_bundle_figure} *)

let db1pointsdata_set_body_bundle_figure_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_bundle_figure_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_figure_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_bundle_figure_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_figure_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_bundle_figure_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_figure_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_bundle_figure_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_figure_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_bundle} *)

let db1pointsdata_set_body_bundle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_bundle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_bundle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_bundle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_bundle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_bundle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_bundle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_bundle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_cluster_information} *)

let db1pointsdata_set_body_cluster_information_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_cluster_information_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_information_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_cluster_information_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_information_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_information_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_information_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_cluster_information_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_information_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_information_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_information_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_cluster_information_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_information_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_information_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_cluster} *)

let db1pointsdata_set_body_cluster_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_cluster_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_cluster_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_cluster_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_cluster_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_cluster_vertex} *)

let db1pointsdata_set_body_cluster_vertex_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_cluster_vertex_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_vertex_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_cluster_vertex_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_vertex_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_cluster_vertex_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_cluster_vertex_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_cluster_vertex_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_cluster_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_cluster_vertex_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_name} *)

let db1pointsdata_set_body_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_name_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_name_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_name_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_name_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_name_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_name_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_name_vertex} *)

let db1pointsdata_set_body_name_vertex_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_name_vertex_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_vertex_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_name_vertex_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_name_vertex_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_name_vertex_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_name_vertex_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_name_vertex_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_name_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_name_vertex_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_record} *)

let db1pointsdata_set_body_record_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_record_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_record_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_record_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_record_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_record_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_record_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_record_vertex} *)

let db1pointsdata_set_body_record_vertex_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_record_vertex_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_vertex_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_record_vertex_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_record_vertex_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_record_vertex_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_record_vertex_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_record_vertex_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_record_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_record_vertex_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_sequence_float} *)

let db1pointsdata_set_body_sequence_float_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_sequence_float_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_float_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_sequence_float_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_float_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_sequence_float_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_sequence_float_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_float_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_sequence_float_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_sequence_float_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_float_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body_sequence} *)

let db1pointsdata_set_body_sequence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_sequence_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_sequence_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_sequence_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_sequence_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_sequence_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_sequence_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sequence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_sequence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_body} *)

let db1pointsdata_set_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_body_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_body_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_body_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_symbol_v.name sym_ldb
;;

let db1pointsdata_set_body_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_body_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_body_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_context_database} *)

let db1pointsdata_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_context_database_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_context_database_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_context_database_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_context_database_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_database_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_database_symbol_v.name sym_ldb
;;

let db1pointsdata_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_database_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_database_symbol_v.string_off sym_ldb
;;

let db1pointsdata_context_database_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_context_databox} *)

let db1pointsdata_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_context_databox_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_databox_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_databox_symbol_v.name sym_ldb
;;

let db1pointsdata_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_databox_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_databox_symbol_v.string_off sym_ldb
;;

let db1pointsdata_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_context_domain} *)

let db1pointsdata_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_context_domain_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_domain_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_domain_symbol_v.name sym_ldb
;;

let db1pointsdata_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_domain_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_domain_symbol_v.string_off sym_ldb
;;

let db1pointsdata_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_context_sector} *)

let db1pointsdata_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_context_sector_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_sector_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_sector_symbol_v.name sym_ldb
;;

let db1pointsdata_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_sector_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_sector_symbol_v.string_off sym_ldb
;;

let db1pointsdata_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_context} *)

let db1pointsdata_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_context_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_context_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_context_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_context_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_context_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_symbol_v.name sym_ldb
;;

let db1pointsdata_context_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_symbol_off_sole_index soi_ldb in
  Db1pointsdata_context_symbol_v.string_off sym_ldb
;;

let db1pointsdata_context_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_context_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_numerical_float} *)

let db1pointsdata_set_fence_basic_numerical_float_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_numerical_float_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_float_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_numerical_float_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_float_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_float_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_float_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_float_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_float_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_float_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_float_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_float_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_numerical_integer} *)

let db1pointsdata_set_fence_basic_numerical_integer_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_numerical_integer_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_integer_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_numerical_integer_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_integer_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_integer_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_integer_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_integer_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_integer_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_integer_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_integer_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_numerical} *)

let db1pointsdata_set_fence_basic_numerical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_numerical_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_numerical_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_numerical_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_numerical_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic} *)

let db1pointsdata_set_fence_basic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_word_anycase} *)

let db1pointsdata_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_word_anycase_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_word_anycase_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_anycase_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_word_anycase_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_anycase_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_word_anycase_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_word_capitalized} *)

let db1pointsdata_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_word_capitalized_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_word_capitalized_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_word_capitalized_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_word_capitalized_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_word_lowercase} *)

let db1pointsdata_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_word_lowercase_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_word_lowercase_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_word_lowercase_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_word_lowercase_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_word} *)

let db1pointsdata_set_fence_basic_word_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_word_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_word_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_word_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_word_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_basic_word_uppercase} *)

let db1pointsdata_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_basic_word_uppercase_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_basic_word_uppercase_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_basic_word_uppercase_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_basic_word_uppercase_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_coordinates_kind} *)

let db1pointsdata_set_fence_cell_coordinates_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_coordinates_kind_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_kind_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_kind_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_kind_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_kind_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_coordinates} *)

let db1pointsdata_set_fence_cell_coordinates_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_coordinates_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_coordinates_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_coordinates_units_angle} *)

let db1pointsdata_set_fence_cell_coordinates_units_angle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_coordinates_units_length} *)

let db1pointsdata_set_fence_cell_coordinates_units_length_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_length_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_length_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_coordinates_units} *)

let db1pointsdata_set_fence_cell_coordinates_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_coordinates_units_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_coordinates_units_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_coordinates_units_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_coordinates_units_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_coordinates_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_figure_kind} *)

let db1pointsdata_set_fence_cell_figure_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_figure_kind_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_figure_kind_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_kind_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_kind_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_kind_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_kind_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_figure_name} *)

let db1pointsdata_set_fence_cell_figure_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_figure_name_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_figure_name_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_name_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_name_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_name_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_name_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_name_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_name_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_name_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell_figure} *)

let db1pointsdata_set_fence_cell_figure_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_figure_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_figure_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_figure_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_figure_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_figure_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_cell} *)

let db1pointsdata_set_fence_cell_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_cell_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_cell_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_cell_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_cell_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_cell_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_cell_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_coordinates_kind} *)

let db1pointsdata_set_fence_keyword_coordinates_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_kind_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_coordinates} *)

let db1pointsdata_set_fence_keyword_coordinates_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_coordinates_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_coordinates_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_coordinates_units_angle} *)

let db1pointsdata_set_fence_keyword_coordinates_units_angle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_coordinates_units_length} *)

let db1pointsdata_set_fence_keyword_coordinates_units_length_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_coordinates_units} *)

let db1pointsdata_set_fence_keyword_coordinates_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_coordinates_units_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_coordinates_units_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_coordinates_units_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_figure} *)

let db1pointsdata_set_fence_keyword_figure_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_figure_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_figure_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_figure_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_figure_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_figure_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_figure_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_figure_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_figure_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword} *)

let db1pointsdata_set_fence_keyword_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_keyword_vertex} *)

let db1pointsdata_set_fence_keyword_vertex_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_keyword_vertex_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_vertex_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_keyword_vertex_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_vertex_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_keyword_vertex_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_vertex_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_keyword_vertex_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_keyword_vertex_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_keyword_vertex_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_keyword_vertex_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence} *)

let db1pointsdata_set_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_kind_cartesian} *)

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_kind_cylindrical} *)

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_kind_polar} *)

let db1pointsdata_set_fence_token_coordinates_kind_polar_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_kind_spherical} *)

let db1pointsdata_set_fence_token_coordinates_kind_spherical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_kind} *)

let db1pointsdata_set_fence_token_coordinates_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_kind_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_kind_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates} *)

let db1pointsdata_set_fence_token_coordinates_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_angle_degree} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_angle_noangle} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_angle_radian} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_angle} *)

let db1pointsdata_set_fence_token_coordinates_units_angle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_length_angstrom} *)

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_length_bohr} *)

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_length_meter} *)

let db1pointsdata_set_fence_token_coordinates_units_length_meter_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units_length} *)

let db1pointsdata_set_fence_token_coordinates_units_length_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_length_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_length_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_coordinates_units} *)

let db1pointsdata_set_fence_token_coordinates_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_coordinates_units_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_coordinates_units_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_coordinates_units_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_coordinates_units_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_coordinates_units_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_coordinates_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_figure_kind_point} *)

let db1pointsdata_set_fence_token_figure_kind_point_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_figure_kind_point_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_point_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_figure_kind_point_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_point_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_point_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_point_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_point_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_point_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_point_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_point_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_point_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_point_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_point_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_figure_kind_segment} *)

let db1pointsdata_set_fence_token_figure_kind_segment_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_segment_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_figure_kind_segment_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_segment_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_segment_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_segment_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_segment_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_segment_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_figure_kind} *)

let db1pointsdata_set_fence_token_figure_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_figure_kind_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_figure_kind_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_figure_kind_triangle} *)

let db1pointsdata_set_fence_token_figure_kind_triangle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_triangle_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_kind_triangle_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token_figure} *)

let db1pointsdata_set_fence_token_figure_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_figure_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_figure_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_figure_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_figure_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_figure_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_figure_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_figure_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Db1pointsdata_context_fence_token} *)

let db1pointsdata_set_fence_token_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol"
    soi_any
;;

let db1pointsdata_set_fence_token_symbol_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_sole_index_off_sole_index soi_any in
  let des_pre = 
    db1pointsdata_symbol_of_string_predicate_off_sole_index 
      "is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol"
      soi_ldb
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol des_pre
;;

let db1pointsdata_set_fence_token_name_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_symbol_v.name sym_ldb
;;

let db1pointsdata_set_fence_token_string_off_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_symbol_off_sole_index soi_ldb in
  Db1pointsdata_set_fence_token_symbol_v.string_off sym_ldb
;;

let db1pointsdata_set_fence_token_tag_off_sole_index soi_any =
  let soi_ldb = db1pointsdata_set_fence_token_sole_index_off_sole_index soi_any in
  let sym_ldb = db1pointsdata_set_fence_token_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on lundi 26 septembre 2016, 07:27:06 (UTC+0200) *)
