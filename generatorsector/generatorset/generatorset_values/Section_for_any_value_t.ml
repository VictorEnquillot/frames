(** {3 Section_for_any_value_t.}  *)

(** {6 Typing} *)

type section_for_any_value =
  | Section_for_any_header_value of Section_for_any_header_value_t.section_for_any_header_value
  | Section_for_any_body_value of Section_for_any_body_value_t.section_for_any_body_value
  | Section_for_any_footer_value of Section_for_any_footer_value_t.section_for_any_footer_value
;;
