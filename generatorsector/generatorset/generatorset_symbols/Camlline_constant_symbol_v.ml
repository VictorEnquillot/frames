(** {3 Camlline_constant_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_constant_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf ->
    Camlline_constant_function_symbol_v.name sym_ccf
  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp ->
    Camlline_constant_pervasive_symbol_v.name sym_ccp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf ->
  Camlline_constant_function_symbol_v.string_off sym_ccf
  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp ->
  Camlline_constant_pervasive_symbol_v.string_off sym_ccp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cac =
  Format.sprintf "Camlline_constant_symbol_t.%s" (String.capitalize_ascii (name sym_cac))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cac =
  Format.sprintf "%s \"%s\"" (longname sym_cac) (string_off sym_cac)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_constant_function_symbol_off_camlline_constant_symbol = function
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf -> sym_ccf
  | sym_cac -> Error_messages_v.print_fatal_error
      nam_cod "camlline_constant_function_symbol_off_camlline_constant_symbol"
      "Camlline_constant_function_symbol"
      (name sym_cac) "check"
;;

let camlline_constant_pervasive_symbol_off_camlline_constant_symbol = function
  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp -> sym_ccp
  | sym_cac -> Error_messages_v.print_fatal_error
      nam_cod "camlline_constant_pervasive_symbol_off_camlline_constant_symbol"
      "Camlline_constant_pervasive_symbol"
      (name sym_cac) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_constant_function_symbol_off_camlline_constant_symbol = function
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol _ -> true
  | _ -> false
;;

let is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol = function
  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_count_equal_zero sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_count_equal_zero sym_ccf
    end
;;

let is_let_count_increment_in sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_count_increment_in sym_ccf
    end
;;

let is_let_documentation_unit_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_documentation_unit_equal sym_ccf
    end
;;

let is_let_longname_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_longname_equal_function sym_ccf
    end
;;

let is_let_make_argument_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_argument_equal_function sym_ccf
    end
;;

let is_let_make_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_equal_function sym_ccf
    end
;;

let is_let_make_equal_tag_vdot_make_double_semicolon sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_equal_tag_vdot_make_double_semicolon sym_ccf
    end
;;

let is_let_make_nam_s_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_nam_s_equal sym_ccf
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_of_topson_bare_nam_equal sym_ccf
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_ccf
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_ccf
    end
;;

let is_let_map_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_map_equal_function sym_ccf
    end
;;

let is_let_nam_cod_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_nam_cod_equal sym_ccf
    end
;;

let is_let_nam_low_equal_string_lowercase_nam_in sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_nam_low_equal_string_lowercase_nam_in sym_ccf
    end
;;

let is_let_name_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_name_equal_function sym_ccf
    end
;;

let is_let_name_of_topson_bare_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_name_of_topson_bare_equal_function sym_ccf
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_ccf
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_ccf
    end
;;

let is_let_print_ppf_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_print_ppf_equal_function sym_ccf
    end
;;

let is_let_print_ppf_str_equal sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_print_ppf_str_equal sym_ccf
    end
;;

let is_let_string_off_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_string_off_equal_function sym_ccf
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_ccf
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_ccf
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_ccf
    end
;;

let is_let_symbol_of_formula_equal_function sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_let_symbol_of_formula_equal_function sym_ccf
    end
;;

let is_match_nam_low_with sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_match_nam_low_with sym_ccf
    end
;;

let is_pipe_print_fatal_error_make_4_lines sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_pipe_print_fatal_error_make_4_lines sym_ccf
    end
;;

let is_pipe_underscore_arrow sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_pipe_underscore_arrow sym_ccf
    end
;;

let is_pipe_underscore_arrow_false sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_pipe_underscore_arrow_false sym_ccf
    end
;;

let is_pipe_underscore_arrow_true sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_pipe_underscore_arrow_true sym_ccf
    end
;;

let is_double_quote_example sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_double_quote_example sym_ccf
    end
;;

let is_double_quote_how_is_it_done sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_double_quote_how_is_it_done sym_ccf
    end
;;

let is_double_quote_needed sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_double_quote_needed sym_ccf
    end
;;

let is_double_quote_needs sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_double_quote_needs sym_ccf
    end
;;

let is_double_quote_what_is_it sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_double_quote_what_is_it sym_ccf
    end
;;

let is_map sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_map sym_ccf
    end
;;

let is_sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index sym_ccf
    end
;;

let is_try_make_of_topson_bare_nam sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_try_make_of_topson_bare_nam sym_ccf
    end
;;

let is_try_make_of_topson_notleaf_nam_s sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_try_make_of_topson_notleaf_nam_s sym_ccf
    end
;;

let is_try_make_of_topson_ofstring_nam_s sym_cac =
  if not (is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccf = camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_function_symbol_v.is_try_make_of_topson_ofstring_nam_s sym_ccf
    end
;;

let is_basic_type sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_basic_type sym_ccp
    end
;;

let is_begin_line sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_begin_line sym_ccp
    end
;;

let is_bracket_left sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_bracket_left sym_ccp
    end
;;

let is_bracket_right sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_bracket_right sym_ccp
    end
;;

let is_curly_bracket_left sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_curly_bracket_left sym_ccp
    end
;;

let is_curly_bracket_right sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_curly_bracket_right sym_ccp
    end
;;

let is_double_semicolon sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_double_semicolon sym_ccp
    end
;;

let is_else_line sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_else_line sym_ccp
    end
;;

let is_empty_line sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_empty_line sym_ccp
    end
;;

let is_end_line sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_end_line sym_ccp
    end
;;

let is_item_title sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_item_title sym_ccp
    end
;;

let is_parenthesis_left sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_parenthesis_left sym_ccp
    end
;;

let is_parenthesis_right sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_parenthesis_right sym_ccp
    end
;;

let is_semicolon sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_semicolon sym_ccp
    end
;;

let is_then_false sym_cac =
  if not (is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac)
  then false
  else
    begin
      let sym_ccp = camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac in
      Camlline_constant_pervasive_symbol_v.is_then_false sym_ccp
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_constant_symbol_of_camlline_constant_function_symbol sym_ccf = 
  Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf
;;

let camlline_constant_symbol_of_camlline_constant_pervasive_symbol sym_ccp = 
  Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_count_equal_zero = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_count_equal_zero;;

let let_count_increment_in = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_count_increment_in;;

let let_documentation_unit_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_documentation_unit_equal;;

let let_longname_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_longname_equal_function;;

let let_make_argument_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_argument_equal_function;;

let let_make_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_equal_function;;

let let_make_equal_tag_vdot_make_double_semicolon = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_equal_tag_vdot_make_double_semicolon;;

let let_make_nam_s_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_map_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_map_equal_function;;

let let_nam_cod_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_nam_cod_equal;;

let let_nam_low_equal_string_lowercase_nam_in = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_nam_low_equal_string_lowercase_nam_in;;

let let_name_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_print_ppf_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_print_ppf_equal_function;;

let let_print_ppf_str_equal = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_print_ppf_str_equal;;

let let_string_off_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_symbol_of_formula_equal_function = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.let_symbol_of_formula_equal_function;;

let match_nam_low_with = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.match_nam_low_with;;

let pipe_print_fatal_error_make_4_lines = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.pipe_print_fatal_error_make_4_lines;;

let pipe_underscore_arrow = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.pipe_underscore_arrow;;

let pipe_underscore_arrow_false = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.pipe_underscore_arrow_false;;

let pipe_underscore_arrow_true = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.pipe_underscore_arrow_true;;

let double_quote_example = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.double_quote_example;;

let double_quote_how_is_it_done = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.double_quote_how_is_it_done;;

let double_quote_needed = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.double_quote_needed;;

let double_quote_needs = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.double_quote_needs;;

let double_quote_what_is_it = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.double_quote_what_is_it;;

let map = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.map;;

let sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index;;

let try_make_of_topson_bare_nam = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.try_make_of_topson_bare_nam;;

let try_make_of_topson_notleaf_nam_s = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.try_make_of_topson_notleaf_nam_s;;

let try_make_of_topson_ofstring_nam_s = camlline_constant_symbol_of_camlline_constant_function_symbol Camlline_constant_function_symbol_v.try_make_of_topson_ofstring_nam_s;;

let basic_type = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.basic_type;;

let begin_line = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.begin_line;;

let bracket_left = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.bracket_left;;

let bracket_right = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.bracket_right;;

let curly_bracket_left = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.curly_bracket_left;;

let curly_bracket_right = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.curly_bracket_right;;

let double_semicolon = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.double_semicolon;;

let else_line = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.else_line;;

let empty_line = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.empty_line;;

let end_line = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.end_line;;

let item_title = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.item_title;;

let parenthesis_left = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.parenthesis_left;;

let parenthesis_right = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.parenthesis_right;;

let semicolon = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.semicolon;;

let then_false = camlline_constant_symbol_of_camlline_constant_pervasive_symbol Camlline_constant_pervasive_symbol_v.then_false;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_constant_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_constant_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_constant_symbol_of_camlline_constant_function_symbol
      (Camlline_constant_function_symbol_v.make nam s)
  with Failure "Not_Camlline_constant_function_symbol:Camlline_constant_function_symbol_v:make" ->
  try camlline_constant_symbol_of_camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_v.make nam s)
  with Failure "Not_Camlline_constant_pervasive_symbol:Camlline_constant_pervasive_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_constant_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_constant_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_constant_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_constant_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_constant subtype" nam s)
      "it does not exists"
      "Check file camlline_constant_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_constant_symbol:Camlline_constant_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_constant implementation_for_symbol symbol at 9:15 6 May 2013. *)



