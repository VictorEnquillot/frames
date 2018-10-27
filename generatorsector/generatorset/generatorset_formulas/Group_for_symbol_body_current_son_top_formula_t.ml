
(** {6 Typing} *)

type group_for_symbol_body_current_son_top_formula =
  | If_not_is_topson_begin_leaf_end of Camlline_tag_t.camlline_tag list
  | If_not_is_topson_begin_notleaf_end of Camlline_tag_t.camlline_tag list
  | Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol of Camlline_tag_t.camlline_tag list
  | Upgrade_grandson_symbol of Camlline_tag_t.camlline_tag list
;;
