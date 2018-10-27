(** {3 Camlline_constant_function_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_constant_function_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Camlline_constant_function_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_ccf =
  match sym_ccf with
  | Camlline_constant_function_symbol_t.Let_documentation_unit_equal
  | Camlline_constant_function_symbol_t.Let_longname_equal_function
  | Camlline_constant_function_symbol_t.Let_make_argument_equal_function
  | Camlline_constant_function_symbol_t.Let_make_equal_function
  | Camlline_constant_function_symbol_t.Let_make_equal_tag_vdot_make_double_semicolon
  | Camlline_constant_function_symbol_t.Let_make_nam_s_equal
  | Camlline_constant_function_symbol_t.Let_make_of_topson_bare_nam_equal
  | Camlline_constant_function_symbol_t.Let_make_of_topson_notleaf_nam_s_equal
  | Camlline_constant_function_symbol_t.Let_make_of_topson_ofstring_nam_s_equal
  | Camlline_constant_function_symbol_t.Let_map_equal_function
  | Camlline_constant_function_symbol_t.Let_nam_cod_equal
  | Camlline_constant_function_symbol_t.Let_name_equal_function
  | Camlline_constant_function_symbol_t.Let_name_of_topson_bare_equal_function
  | Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal_function
  | Camlline_constant_function_symbol_t.Let_name_of_topson_ofstring_equal_function
  | Camlline_constant_function_symbol_t.Let_print_ppf_equal_function
  | Camlline_constant_function_symbol_t.Let_print_ppf_str_equal
  | Camlline_constant_function_symbol_t.Let_string_off_equal_function
  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_bare_equal_function
  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_notleaf_equal_function
  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_ofstring_equal_function
  | Camlline_constant_function_symbol_t.Let_symbol_of_formula_equal_function
  | Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines
  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow
  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false
  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_true
  | Camlline_constant_function_symbol_t.Double_quote_example
  | Camlline_constant_function_symbol_t.Double_quote_how_is_it_done
  | Camlline_constant_function_symbol_t.Double_quote_needed
  | Camlline_constant_function_symbol_t.Double_quote_needs
  | Camlline_constant_function_symbol_t.Double_quote_what_is_it
  | Camlline_constant_function_symbol_t.Let_count_equal_zero
  | Camlline_constant_function_symbol_t.Let_count_increment_in
  | Camlline_constant_function_symbol_t.Let_nam_low_equal_string_lowercase_nam_in
  | Camlline_constant_function_symbol_t.Map
  | Camlline_constant_function_symbol_t.Match_nam_low_with
  | Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index
  | Camlline_constant_function_symbol_t.Try_make_of_topson_bare_nam
  | Camlline_constant_function_symbol_t.Try_make_of_topson_notleaf_nam_s
  | Camlline_constant_function_symbol_t.Try_make_of_topson_ofstring_nam_s ->

      []
;;
