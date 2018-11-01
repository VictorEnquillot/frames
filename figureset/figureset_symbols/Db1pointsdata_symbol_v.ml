(** {3 Db1pointsdata_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_symbol_t.Db1pointsdata_context_symbol sym_dco ->
    Db1pointsdata_context_symbol_v.name sym_dco
  | Db1pointsdata_symbol_t.Db1pointsdata_set_symbol sym_dse ->
    Db1pointsdata_set_symbol_v.name sym_dse
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_symbol_t.Db1pointsdata_context_symbol sym_dco ->
  Db1pointsdata_context_symbol_v.string_off sym_dco
  | Db1pointsdata_symbol_t.Db1pointsdata_set_symbol sym_dse ->
  Db1pointsdata_set_symbol_v.string_off sym_dse
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_db1 =
  Format.sprintf "Db1pointsdata_symbol_t.%s" (String.capitalize_ascii (name sym_db1))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_db1 =
  Format.sprintf "%s \"%s\"" (longname sym_db1) (string_off sym_db1)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_context_symbol_off_db1pointsdata_symbol = function
  | Db1pointsdata_symbol_t.Db1pointsdata_context_symbol sym_dco -> sym_dco
  | sym_db1 -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_context_symbol_off_db1pointsdata_symbol"
      "Db1pointsdata_context_symbol"
      (name sym_db1) "check"
;;

let db1pointsdata_set_symbol_off_db1pointsdata_symbol = function
  | Db1pointsdata_symbol_t.Db1pointsdata_set_symbol sym_dse -> sym_dse
  | sym_db1 -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_symbol_off_db1pointsdata_symbol"
      "Db1pointsdata_set_symbol"
      (name sym_db1) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_context_symbol_v.db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_context_database_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_context_symbol_v.db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_context_symbol_v.db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_context_symbol_v.db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_set_body_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol sym_db1 = 
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
    Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_symbol sym_dse
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_context_symbol_off_db1pointsdata_symbol = function
  | Db1pointsdata_symbol_t.Db1pointsdata_context_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_symbol_off_db1pointsdata_symbol = function
  | Db1pointsdata_symbol_t.Db1pointsdata_set_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_context_databox_constructor sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_context_symbol_v.is_db1pointsdata_context_databox_constructor sym_dco
    end
;;

let is_db1pointsdata_context_database_constructor sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_context_symbol_v.is_db1pointsdata_context_database_constructor sym_dco
    end
;;

let is_db1pointsdata_context_domain_constructor sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_context_symbol_v.is_db1pointsdata_context_domain_constructor sym_dco
    end
;;

let is_db1pointsdata_context_sector_constructor sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_context_symbol_v.is_db1pointsdata_context_sector_constructor sym_dco
    end
;;

let is_db1pointsdata_set_body_bundle_coordinates_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_bundle_figure_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_bundle_figure_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_cluster_information_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_cluster_information_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_cluster_vertex_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_record_vertex_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_sequence_float_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_sequence_float_constructor sym_dse
    end
;;

let is_db1pointsdata_set_body_name_vertex_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_name_vertex_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_figure_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_figure_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_vertex_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
      let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
      Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_dse
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_context_databox_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_context_symbol_v.is_db1pointsdata_context_databox_symbol_off_db1pointsdata_context_symbol sym_dco
    end
;;

let is_db1pointsdata_context_database_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_context_symbol_v.is_db1pointsdata_context_database_symbol_off_db1pointsdata_context_symbol sym_dco
    end
;;

let is_db1pointsdata_context_domain_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_context_symbol_v.is_db1pointsdata_context_domain_symbol_off_db1pointsdata_context_symbol sym_dco
    end
;;

let is_db1pointsdata_context_sector_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dco = db1pointsdata_context_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_context_symbol_v.is_db1pointsdata_context_sector_symbol_off_db1pointsdata_context_symbol sym_dco
    end
;;

let is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_bundle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_bundle_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_cluster_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_cluster_information_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_record_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_record_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_sequence_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_name_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_body_name_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_symbol sym_db1 =
  if not (is_db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1)
  then false
  else
    begin
  let sym_dse = db1pointsdata_set_symbol_off_db1pointsdata_symbol sym_db1 in
  Db1pointsdata_set_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_symbol sym_dse
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_symbol_of_db1pointsdata_context_symbol sym_dco = 
  Db1pointsdata_symbol_t.Db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse = 
  Db1pointsdata_symbol_t.Db1pointsdata_set_symbol sym_dse
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_symbol_of_db1pointsdata_context_databox_symbol sym_dcd = 
  let sym_dco = Db1pointsdata_context_symbol_v.db1pointsdata_context_symbol_of_db1pointsdata_context_databox_symbol sym_dcd in
    db1pointsdata_symbol_of_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_symbol_of_db1pointsdata_context_database_symbol sym_dcd = 
  let sym_dco = Db1pointsdata_context_symbol_v.db1pointsdata_context_symbol_of_db1pointsdata_context_database_symbol sym_dcd in
    db1pointsdata_symbol_of_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_symbol_of_db1pointsdata_context_domain_symbol sym_dcd = 
  let sym_dco = Db1pointsdata_context_symbol_v.db1pointsdata_context_symbol_of_db1pointsdata_context_domain_symbol sym_dcd in
    db1pointsdata_symbol_of_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_symbol_of_db1pointsdata_context_sector_symbol sym_dcs = 
  let sym_dco = Db1pointsdata_context_symbol_v.db1pointsdata_context_symbol_of_db1pointsdata_context_sector_symbol sym_dcs in
    db1pointsdata_symbol_of_db1pointsdata_context_symbol sym_dco
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_symbol sym_dsb = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_symbol sym_dsb in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_bundle_symbol sym_dbb = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_bundle_symbol sym_dbb in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_bundle_coordinates_symbol sym_dbc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_bundle_coordinates_symbol sym_dbc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_bundle_figure_symbol sym_dbf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_bundle_figure_symbol sym_dbf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_cluster_symbol sym_dbc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_cluster_symbol sym_dbc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_cluster_information_symbol sym_dci = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_cluster_information_symbol sym_dci in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_cluster_vertex_symbol sym_dcv = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_cluster_vertex_symbol sym_dcv in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_record_symbol sym_dbr = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_record_symbol sym_dbr in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_record_vertex_symbol sym_drv = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_record_vertex_symbol sym_drv in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_sequence_symbol sym_dbs = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_sequence_symbol sym_dbs in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_sequence_float_symbol sym_dsf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_sequence_float_symbol sym_dsf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_name_symbol sym_dbn = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_name_symbol sym_dbn in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_body_name_vertex_symbol sym_dnv = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_body_name_vertex_symbol sym_dnv in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_symbol sym_dsf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_figure_symbol sym_dkf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_figure_symbol sym_dkf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_keyword_vertex_symbol sym_dkv = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_keyword_vertex_symbol sym_dkv in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_symbol sym_dtc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_symbol sym_dtc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_symbol sym_dcu = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_symbol sym_dcu in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_figure_symbol sym_dtf = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;

let db1pointsdata_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp = 
  let sym_dse = Db1pointsdata_set_symbol_v.db1pointsdata_set_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp in
    db1pointsdata_symbol_of_db1pointsdata_set_symbol sym_dse
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_context_databox_constructor s = db1pointsdata_symbol_of_db1pointsdata_context_symbol (Db1pointsdata_context_symbol_v.db1pointsdata_context_databox_constructor s);;

let db1pointsdata_context_database_constructor s = db1pointsdata_symbol_of_db1pointsdata_context_symbol (Db1pointsdata_context_symbol_v.db1pointsdata_context_database_constructor s);;

let db1pointsdata_context_domain_constructor s = db1pointsdata_symbol_of_db1pointsdata_context_symbol (Db1pointsdata_context_symbol_v.db1pointsdata_context_domain_constructor s);;

let db1pointsdata_context_sector_constructor s = db1pointsdata_symbol_of_db1pointsdata_context_symbol (Db1pointsdata_context_symbol_v.db1pointsdata_context_sector_constructor s);;

let db1pointsdata_set_body_bundle_coordinates_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_bundle_coordinates_constructor s);;

let db1pointsdata_set_body_bundle_figure_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_bundle_figure_constructor s);;

let db1pointsdata_set_body_cluster_information_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_cluster_information_constructor s);;

let db1pointsdata_set_body_cluster_vertex_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_cluster_vertex_constructor s);;

let db1pointsdata_set_body_record_vertex_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_record_vertex_constructor s);;

let db1pointsdata_set_body_sequence_float_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_sequence_float_constructor s);;

let db1pointsdata_set_body_name_vertex_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_body_name_vertex_constructor s);;

let db1pointsdata_set_fence_basic_numerical_float_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor s);;

let db1pointsdata_set_fence_basic_numerical_integer_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_constructor s);;

let db1pointsdata_set_fence_basic_word_anycase_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_anycase_constructor s);;

let db1pointsdata_set_fence_basic_word_capitalized_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_constructor s);;

let db1pointsdata_set_fence_basic_word_lowercase_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_constructor s);;

let db1pointsdata_set_fence_basic_word_uppercase_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_kind_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_length_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_cell_figure_kind_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_figure_kind_constructor s);;

let db1pointsdata_set_fence_cell_figure_name_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_cell_figure_name_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_kind_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_constructor s);;

let db1pointsdata_set_fence_keyword_figure_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_figure_constructor s);;

let db1pointsdata_set_fence_keyword_vertex_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_keyword_vertex_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_segment_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_triangle_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_point_constructor s = db1pointsdata_symbol_of_db1pointsdata_set_symbol (Db1pointsdata_set_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_symbol_of_db1pointsdata_context_symbol
      (Db1pointsdata_context_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_context_symbol:Db1pointsdata_context_symbol_v.ml:make" ->
  try db1pointsdata_symbol_of_db1pointsdata_set_symbol
      (Db1pointsdata_set_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_symbol:Db1pointsdata_set_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_symbol:Db1pointsdata_symbol_v.ml:make"
;;


(** Db1pointsdata_symbol_v at 15:7:18 on 31 Oct 2018. created by version v2.5 of generator *)



