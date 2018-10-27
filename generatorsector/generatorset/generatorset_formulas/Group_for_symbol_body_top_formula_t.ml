type group_for_symbol_body_top_formula =
  | Documentation_list_for_symbol of Camlline_tag_t.camlline_tag list
  | Try_make_of_topson_bare_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_make_of_topson_ofstring_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_make_of_topson_notleaf_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_name_of_topson_bare_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_name_of_topson_ofstring_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_name_of_topson_notleaf_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_string_off_of_topson_bare_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_string_off_of_topson_notleaf_with_failure_arrow of Camlline_tag_t.camlline_tag list
  | Try_string_off_of_topson_ofstring_with_failure_arrow of Camlline_tag_t.camlline_tag list
;;



