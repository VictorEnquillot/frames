type section_for_any_header_top_value =
  | Camlfile_title of Group_value_t.group_value list
  | Item_title of Group_value_t.group_value list
  | Let_name_argument_equal of Group_value_t.group_value list
  | Let_longname_argument_equal of Group_value_t.group_value list
  | Let_fullname_argument_equal of Group_value_t.group_value list
  | Let_retrieve_tag_top_equal of Group_value_t.group_value list
  | Let_string_off_argument_equal of Group_value_t.group_value list
;;


