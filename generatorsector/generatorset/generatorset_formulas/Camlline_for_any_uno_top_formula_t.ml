type camlline_for_any_uno_top_formula =
  | Format_sprintf_doublequote_et_any_tdot_percents_doublequote of Entity_tag_t.entity_tag list
  | Let_fullname_ac_at_equal of Entity_tag_t.entity_tag list
  | Let_longname_ac_at_equal of Entity_tag_t.entity_tag list
  | Let_name_ac_at_equal of Entity_tag_t.entity_tag list
  | Let_retrieve_tag_top_equal of Entity_tag_t.entity_tag list
  | Let_string_off_ac_at_equal of Entity_tag_t.entity_tag list
  | Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar of Entity_tag_t.entity_tag list
  | Double_quote_current of Entity_tag_t.entity_tag list
  | Sprintf_for_any_fullname of Entity_tag_t.entity_tag list
  | Sprintf_for_any_longname of Entity_tag_t.entity_tag list
  | Try_name_of_topson_bare of Entity_tag_t.entity_tag list
  | Try_name_of_topson_notleaf of Entity_tag_t.entity_tag list
  | Try_name_of_topson_ofstring of Entity_tag_t.entity_tag list
  | Try_string_off_of_topson_bare of Entity_tag_t.entity_tag list
  | Try_string_off_of_topson_notleaf of Entity_tag_t.entity_tag list
  | Try_string_off_of_topson_ofstring of Entity_tag_t.entity_tag list
;;
