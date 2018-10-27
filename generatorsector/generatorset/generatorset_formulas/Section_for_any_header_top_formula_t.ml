(** {6 Typing} *)

type section_for_any_header_top_formula =
  | Camlfile_title of Group_tag_t.group_tag list
  | Item_title of Group_tag_t.group_tag list
  | Let_name_argument_equal of Group_tag_t.group_tag list
  | Let_longname_argument_equal of Group_tag_t.group_tag list
  | Let_fullname_argument_equal of Group_tag_t.group_tag list
  | Let_retrieve_tag_top_equal of Group_tag_t.group_tag list
  | Let_string_off_argument_equal of Group_tag_t.group_tag list
;;

