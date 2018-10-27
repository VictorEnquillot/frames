(** {6 Typing} *)

type section_for_symbol_header_son_top_value = 
  | Let_abbreviate_topson_bare of Group_value_t.group_value list
  | Let_abbreviate_topson_ofstring of Group_value_t.group_value list
  | Let_is_topson_notleaf_symbol_off_top_symbol_equal_function of Group_value_t.group_value list
  | Let_topson_notleaf_symbol_off_top_symbol_equal_function of Group_value_t.group_value list
  | Let_top_symbol_of_topson_notleaf_symbol_argument_equal of Group_value_t.group_value list
;;

