(** {3 Db1pointsdata_set_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol sym_dfb ->
    Db1pointsdata_set_fence_basic_symbol_v.name sym_dfb
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol sym_dfc ->
    Db1pointsdata_set_fence_cell_symbol_v.name sym_dfc
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol sym_dfk ->
    Db1pointsdata_set_fence_keyword_symbol_v.name sym_dfk
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol sym_dft ->
    Db1pointsdata_set_fence_token_symbol_v.name sym_dft
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol sym_dfb ->
  Db1pointsdata_set_fence_basic_symbol_v.string_off sym_dfb
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol sym_dfc ->
  Db1pointsdata_set_fence_cell_symbol_v.string_off sym_dfc
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol sym_dfk ->
  Db1pointsdata_set_fence_keyword_symbol_v.string_off sym_dfk
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol sym_dft ->
  Db1pointsdata_set_fence_token_symbol_v.string_off sym_dft
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dsf =
  Format.sprintf "Db1pointsdata_set_fence_symbol_t.%s" (String.capitalize (name sym_dsf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dsf =
  Format.sprintf "%s \"%s\"" (longname sym_dsf) (string_off sym_dsf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol sym_dfb -> sym_dfb
  | sym_dsf -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol"
      "Db1pointsdata_set_fence_basic_symbol"
      (name sym_dsf) "check"
;;

let db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol sym_dfc -> sym_dfc
  | sym_dsf -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol"
      "Db1pointsdata_set_fence_cell_symbol"
      (name sym_dsf) "check"
;;

let db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol sym_dfk -> sym_dfk
  | sym_dsf -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol"
      "Db1pointsdata_set_fence_keyword_symbol"
      (name sym_dsf) "check"
;;

let db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol sym_dft -> sym_dft
  | sym_dsf -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol"
      "Db1pointsdata_set_fence_token_symbol"
      (name sym_dsf) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_symbol sym_dsf = 
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
    Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol = function
  | Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dfb
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_constructor sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_constructor sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_constructor sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_constructor sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_constructor sym_dfc
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_figure_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_figure_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_vertex_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_constructor sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_constructor sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
      let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
      Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_constructor sym_dft
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfb = db1pointsdata_set_fence_basic_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_basic_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_coordinates_units_length_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_figure_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_figure_kind_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfc = db1pointsdata_set_fence_cell_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_cell_symbol_v.is_db1pointsdata_set_fence_cell_figure_name_symbol_off_db1pointsdata_set_fence_cell_symbol sym_dfc
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_coordinates_kind_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_figure_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dfk = db1pointsdata_set_fence_keyword_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_keyword_symbol_v.is_db1pointsdata_set_fence_keyword_vertex_symbol_off_db1pointsdata_set_fence_keyword_symbol sym_dfk
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_segment_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_triangle_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;

let is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_symbol sym_dsf =
  if not (is_db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf)
  then false
  else
    begin
  let sym_dft = db1pointsdata_set_fence_token_symbol_off_db1pointsdata_set_fence_symbol sym_dsf in
  Db1pointsdata_set_fence_token_symbol_v.is_db1pointsdata_set_fence_token_figure_kind_point_symbol_off_db1pointsdata_set_fence_token_symbol sym_dft
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc = 
  Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk = 
  Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft = 
  Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol sym_dft
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu = 
  let sym_dfb = Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol sym_dfb
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_symbol sym_dcc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_kind_symbol sym_dck in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_symbol sym_dcu in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_coordinates_units_length_symbol sym_dul in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_symbol sym_dcf in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_kind_symbol sym_dfk in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn = 
  let sym_dfc = Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_symbol_of_db1pointsdata_set_fence_cell_figure_name_symbol sym_dfn in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol sym_dfc
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_coordinates_symbol sym_dkc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_symbol sym_dcu in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_coordinates_units_length_symbol sym_dul in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_coordinates_kind_symbol sym_dck in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_figure_symbol sym_dkf = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_figure_symbol sym_dkf in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_vertex_symbol sym_dkv = 
  let sym_dfk = Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_symbol_of_db1pointsdata_set_fence_keyword_vertex_symbol sym_dkv in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol sym_dfk
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_symbol sym_dtc = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_symbol sym_dtc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_symbol sym_dcu = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_symbol sym_dcu in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_symbol sym_dua in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_degree_symbol sym_dad in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_noangle_symbol sym_dan in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol sym_dar in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_figure_symbol sym_dtf = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_figure_symbol sym_dtf in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_figure_kind_symbol sym_dfk in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_figure_kind_segment_symbol sym_dks in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_figure_kind_triangle_symbol sym_dkt in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;

let db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp = 
  let sym_dft = Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_symbol_of_db1pointsdata_set_fence_token_figure_kind_point_symbol sym_dkp in
    db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol sym_dft
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_basic_numerical_float_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor s);;

let db1pointsdata_set_fence_basic_numerical_integer_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_constructor s);;

let db1pointsdata_set_fence_basic_word_anycase_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_anycase_constructor s);;

let db1pointsdata_set_fence_basic_word_capitalized_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_constructor s);;

let db1pointsdata_set_fence_basic_word_lowercase_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_constructor s);;

let db1pointsdata_set_fence_basic_word_uppercase_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol (Db1pointsdata_set_fence_basic_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_kind_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol (Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_kind_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol (Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_cell_coordinates_units_length_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol (Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_cell_figure_kind_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol (Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_figure_kind_constructor s);;

let db1pointsdata_set_fence_cell_figure_name_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol (Db1pointsdata_set_fence_cell_symbol_v.db1pointsdata_set_fence_cell_figure_name_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol (Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_angle_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol (Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_units_length_constructor s);;

let db1pointsdata_set_fence_keyword_coordinates_kind_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol (Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_coordinates_kind_constructor s);;

let db1pointsdata_set_fence_keyword_figure_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol (Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_figure_constructor s);;

let db1pointsdata_set_fence_keyword_vertex_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol (Db1pointsdata_set_fence_keyword_symbol_v.db1pointsdata_set_fence_keyword_vertex_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_degree_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_noangle_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_segment_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_segment_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_triangle_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_triangle_constructor s);;

let db1pointsdata_set_fence_token_figure_kind_point_constructor s = db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol (Db1pointsdata_set_fence_token_symbol_v.db1pointsdata_set_fence_token_figure_kind_point_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_basic_symbol
      (Db1pointsdata_set_fence_basic_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_symbol:Db1pointsdata_set_fence_basic_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_cell_symbol
      (Db1pointsdata_set_fence_cell_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_cell_symbol:Db1pointsdata_set_fence_cell_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_keyword_symbol
      (Db1pointsdata_set_fence_keyword_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_keyword_symbol:Db1pointsdata_set_fence_keyword_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_symbol_of_db1pointsdata_set_fence_token_symbol
      (Db1pointsdata_set_fence_token_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_symbol:Db1pointsdata_set_fence_token_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_symbol:Db1pointsdata_set_fence_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_symbol_v at 12:40:38 on 4 Jun 2017. created by version v2.4 of generator *)



