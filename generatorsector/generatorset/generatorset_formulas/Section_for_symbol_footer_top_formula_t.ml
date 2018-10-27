(** {6 Typing} *)

type section_for_symbol_footer_top_formula =
  | Failwith_not_a_topson_notleaf of Group_tag_t.group_tag list
  | Let_underscore_print_error_failwith_make of Group_tag_t.group_tag list
  | Let_underscore_print_error_failwith_name of Group_tag_t.group_tag list
  | Let_underscore_print_error_failwith_string_off of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_bare_make of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_bare_name of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_bare_string_off of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_notleaf_make of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_notleaf_name of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_notleaf_string_off of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_ofstring_make of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_ofstring_name of Group_tag_t.group_tag list
  | Pipe_underscore_failwith_not_a_topson_ofstring_string_off of Group_tag_t.group_tag list
  | Print_fatal_error_make of Group_tag_t.group_tag list
  | Print_fatal_error_name of Group_tag_t.group_tag list
  | Print_fatal_error_string_off of Group_tag_t.group_tag list
;;
