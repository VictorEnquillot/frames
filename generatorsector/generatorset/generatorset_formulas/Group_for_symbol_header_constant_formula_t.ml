
type group_for_symbol_header_constant_formula =
  | Let_make_equal_function of Camlline_tag_t.camlline_tag list
  | Let_make_nam_s_equal of Camlline_tag_t.camlline_tag list
  | Let_make_of_topson_bare_nam_equal of Camlline_tag_t.camlline_tag list
  | Let_make_of_topson_notleaf_nam_s_equal of Camlline_tag_t.camlline_tag list
  | Let_make_of_topson_ofstring_nam_s_equal of Camlline_tag_t.camlline_tag list
  | Let_name_equal_function of Camlline_tag_t.camlline_tag list
  | Let_name_of_topson_bare_equal_function of Camlline_tag_t.camlline_tag list
  | Let_name_of_topson_notleaf_equal_function of Camlline_tag_t.camlline_tag list
  | Let_name_of_topson_ofstring_equal_function of Camlline_tag_t.camlline_tag list
  | Let_string_off_equal_function of Camlline_tag_t.camlline_tag list
  | Let_string_off_of_topson_bare_equal_function of Camlline_tag_t.camlline_tag list
  | Let_string_off_of_topson_notleaf_equal_function of Camlline_tag_t.camlline_tag list
  | Let_string_off_of_topson_ofstring_equal_function of Camlline_tag_t.camlline_tag list
;;
