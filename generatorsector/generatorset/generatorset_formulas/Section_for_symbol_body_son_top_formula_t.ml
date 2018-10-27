type section_for_symbol_body_son_top_formula =
  | Is_onlyson_bare_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Is_onlyson_notleaf_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Is_onlyson_ofstring_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Is_one_topson_bare_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Is_one_topson_ofstring_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Is_one_topson_notleaf_off_pattern_for_symbol of Group_tag_t.group_tag list
  | Name_topson_pattern_bare_for_symbol of Group_tag_t.group_tag list
  | Name_topson_pattern_notleaf_for_symbol of Group_tag_t.group_tag list
  | Name_topson_pattern_ofstring_for_symbol of Group_tag_t.group_tag list
  | Onlyson_off_pattern_for_symbol of Group_tag_t.group_tag list
  | One_topson_off_pattern_for_symbol of Group_tag_t.group_tag list
  | String_off_topson_pattern_bare_for_symbol of Group_tag_t.group_tag list
  | String_off_topson_pattern_notleaf_for_symbol of Group_tag_t.group_tag list
  | String_off_topson_pattern_ofstring_for_symbol of Group_tag_t.group_tag list
  | Try_make_of_topson_with_failure_arrow of Group_tag_t.group_tag list
  | Try_name_of_topson_with_failure_arrow of Group_tag_t.group_tag list
  | Try_top_of_topson_with_failure_arrow of Group_tag_t.group_tag list
  | Upgrade_topson_symbol of Group_tag_t.group_tag list
  | Try_string_off_of_topson_with_failure_arrow of Group_tag_t.group_tag list
;;
