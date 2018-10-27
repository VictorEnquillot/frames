(** {6 Typing} *)

type section_for_any_footer_formula =
  | Ending of Group_tag_t.group_tag list
  | Double_semicolon of Group_tag_t.group_tag list
;;

