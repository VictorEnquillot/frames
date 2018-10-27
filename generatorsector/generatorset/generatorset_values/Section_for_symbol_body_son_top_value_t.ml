(** {6 Typing} *)

type section_for_symbol_body_son_top_value = 
  | Is_onlyson_bare_off_pattern_for_symbol of Group_value_t.group_value list
  | Is_onlyson_notleaf_off_pattern_for_symbol of Group_value_t.group_value list
  | Is_onlyson_ofstring_off_pattern_for_symbol of Group_value_t.group_value list
  | Is_one_topson_bare_off_pattern_for_symbol of Group_value_t.group_value list
  | Is_one_topson_notleaf_off_pattern_for_symbol of Group_value_t.group_value list
  | Is_one_topson_ofstring_off_pattern_for_symbol of Group_value_t.group_value list
  | Name_topson_pattern_bare_for_symbol of Group_value_t.group_value list
  | Name_topson_pattern_notleaf_for_symbol of Group_value_t.group_value list
  | Name_topson_pattern_ofstring_for_symbol of Group_value_t.group_value list
  | Onlyson_off_pattern_for_symbol of Group_value_t.group_value list
  | One_topson_off_pattern_for_symbol of Group_value_t.group_value list
  | String_off_topson_pattern_bare_for_symbol of Group_value_t.group_value list
  | String_off_topson_pattern_notleaf_for_symbol of Group_value_t.group_value list
  | String_off_topson_pattern_ofstring_for_symbol of Group_value_t.group_value list
  | Try_make_of_topson_with_failure_arrow of Group_value_t.group_value list
  | Try_name_of_topson_with_failure_arrow of Group_value_t.group_value list
  | Try_string_off_of_topson_with_failure_arrow of Group_value_t.group_value list
  | Try_top_of_topson_with_failure_arrow of Group_value_t.group_value list
  | Upgrade_topson_symbol of Group_value_t.group_value list

;;
