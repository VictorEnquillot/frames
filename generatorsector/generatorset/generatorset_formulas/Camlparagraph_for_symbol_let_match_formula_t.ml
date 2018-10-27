type camlparagraph_for_symbol_let_match_formula =
  | Let_is_onlyson_bare of Section_tag_t.section_tag list
  | Let_is_onlyson_ofstring of Section_tag_t.section_tag list
  | Let_is_onlyson_notleaf_symbol_off_top_symbol of Section_tag_t.section_tag list
  | Let_is_topson_bare of Section_tag_t.section_tag list
  | Let_is_topson_ofstring of Section_tag_t.section_tag list
  | Let_is_topson_notleaf_symbol_off_top_symbol of Section_tag_t.section_tag list
  | Let_longname_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_make_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_name_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_name_of_topson_bare_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_name_of_topson_notleaf_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_name_of_topson_ofstring_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_onlyson_notleaf_symbol_off_top_symbol of Section_tag_t.section_tag list
  | Let_print_function_for_symbol of Section_tag_t.section_tag list
  | Let_string_off_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_string_off_of_topson_bare_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_string_off_of_topson_notleaf_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_string_off_of_topson_ofstring_equal_function_for_symbol of Section_tag_t.section_tag list
  | Let_topson_notleaf_symbol_off_top_symbol of Section_tag_t.section_tag list
;;
