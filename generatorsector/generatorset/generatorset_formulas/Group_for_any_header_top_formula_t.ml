
(** {6 Typing} *)

type group_for_any_header_top_formula =
  | Camlfile_title of Camlline_tag_t.camlline_tag list
  | Item_title of Camlline_tag_t.camlline_tag list
  | Let_fullname_argument_equal of Camlline_tag_t.camlline_tag list
  | Let_longname_argument_equal of Camlline_tag_t.camlline_tag list
  | Let_name_argument_equal of Camlline_tag_t.camlline_tag list
  | Let_retrieve_tag_top_equal of Camlline_tag_t.camlline_tag list
  | Let_string_off_argument_equal of Camlline_tag_t.camlline_tag list
;;

