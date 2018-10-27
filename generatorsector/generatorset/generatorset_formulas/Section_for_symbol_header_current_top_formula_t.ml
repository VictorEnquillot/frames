(** {6 Typing} *)

type section_for_symbol_header_current_top_formula =
  | Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal of Group_tag_t.group_tag list
  | Let_is_grandson_bare of Group_tag_t.group_tag list
  | Let_is_grandson_ofstring of Group_tag_t.group_tag list
  | Let_grandson_notleaf_symbol_off_top_symbol_argument_equal of Group_tag_t.group_tag list
  | Let_top_symbol_of_grandson_notleaf_symbol_argument_equal of Group_tag_t.group_tag list
;;

