(** {6 Typing} *)

type section_for_symbol_body_current_son_top_formula =
  | Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol of Group_tag_t.group_tag list
  | If_not_is_topson_begin_bare_end of Group_tag_t.group_tag list
  | If_not_is_topson_begin_notleaf_end of Group_tag_t.group_tag list
  | If_not_is_topson_begin_ofstring_end of Group_tag_t.group_tag list
  | Upgrade_grandson_symbol of Group_tag_t.group_tag list
;;

