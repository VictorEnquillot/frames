(** {3 Group_for_any_value_t.}  *)

(** {6 Typing} *)

type group_for_any_value =
  | Group_for_any_body_value of Group_for_any_body_value_t.group_for_any_body_value
  | Group_for_any_footer_value of Group_for_any_footer_value_t.group_for_any_footer_value
  | Group_for_any_header_value of Group_for_any_header_value_t.group_for_any_header_value
;;
