(** {6 Typing} *)

type camlline_constant_function_formula = 
  | Let_count_equal_zero of Entity_tag_t.entity_tag list
  | Let_count_increment_in of Entity_tag_t.entity_tag list
  | Let_documentation_unit_equal of Entity_tag_t.entity_tag list
  | Let_longname_equal_function of Entity_tag_t.entity_tag list
  | Let_make_argument_equal_function of Entity_tag_t.entity_tag list
  | Let_make_equal_function of Entity_tag_t.entity_tag list
  | Let_make_equal_tag_vdot_make_double_semicolon of Entity_tag_t.entity_tag list
  | Let_make_nam_s_equal of Entity_tag_t.entity_tag list
  | Let_make_of_topson_bare_nam_equal of Entity_tag_t.entity_tag list
  | Let_make_of_topson_notleaf_nam_s_equal of Entity_tag_t.entity_tag list
  | Let_make_of_topson_ofstring_nam_s_equal of Entity_tag_t.entity_tag list
  | Let_map_equal_function of Entity_tag_t.entity_tag list
  | Let_nam_cod_equal of Entity_tag_t.entity_tag list
  | Let_nam_low_equal_string_lowercase_nam_in of Entity_tag_t.entity_tag list
  | Let_name_equal_function of Entity_tag_t.entity_tag list
  | Let_name_of_topson_bare_equal_function of Entity_tag_t.entity_tag list
  | Let_name_of_topson_notleaf_equal_function of Entity_tag_t.entity_tag list
  | Let_name_of_topson_ofstring_equal_function of Entity_tag_t.entity_tag list
  | Let_print_ppf_equal_function of Entity_tag_t.entity_tag list
  | Let_print_ppf_str_equal of Entity_tag_t.entity_tag list
  | Let_string_off_equal_function of Entity_tag_t.entity_tag list
  | Let_string_off_of_topson_bare_equal_function of Entity_tag_t.entity_tag list
  | Let_string_off_of_topson_notleaf_equal_function of Entity_tag_t.entity_tag list
  | Let_string_off_of_topson_ofstring_equal_function of Entity_tag_t.entity_tag list
  | Let_symbol_of_formula_equal_function of Entity_tag_t.entity_tag list  
  | Match_nam_low_with of Entity_tag_t.entity_tag list
  | Pipe_print_fatal_error_make_4_lines of Entity_tag_t.entity_tag list
  | Pipe_underscore_arrow of Entity_tag_t.entity_tag list
  | Pipe_underscore_arrow_false of Entity_tag_t.entity_tag list
  | Pipe_underscore_arrow_true of Entity_tag_t.entity_tag list
  | Double_quote_example of Entity_tag_t.entity_tag list
  | Double_quote_how_is_it_done of Entity_tag_t.entity_tag list
  | Double_quote_needed of Entity_tag_t.entity_tag list
  | Double_quote_needs of Entity_tag_t.entity_tag list
  | Double_quote_what_is_it of Entity_tag_t.entity_tag list
  | Map of Entity_tag_t.entity_tag list
  | Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index of Entity_tag_t.entity_tag list
  | Try_make_of_topson_bare_nam of Entity_tag_t.entity_tag list
  | Try_make_of_topson_notleaf_nam_s of Entity_tag_t.entity_tag list
  | Try_make_of_topson_ofstring_nam_s of Entity_tag_t.entity_tag list
 ;; 
