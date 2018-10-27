(** {6 Typing} *)

type section_for_any_footer_value =
  | Ending of Group_value_t.group_value list
  | Double_semicolon of Group_value_t.group_value list
;;

