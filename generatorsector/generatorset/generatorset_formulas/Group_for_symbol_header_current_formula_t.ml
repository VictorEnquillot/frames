
(** {6 Typing} *)

type group_for_symbol_header_current_formula =
  | Let_abbreviate_grandson_bare of Camlline_tag_t.camlline_tag list
  | Let_abbreviate_grandson_ofstring of Camlline_tag_t.camlline_tag list
  | Let_is_grandson_bare of Camlline_tag_t.camlline_tag list
  | Let_is_grandson_ofstring of Camlline_tag_t.camlline_tag list
;;
