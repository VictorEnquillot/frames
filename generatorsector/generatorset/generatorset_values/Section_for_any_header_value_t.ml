(** {6 Typing} *)

type section_for_any_header_value =
  | Section_for_any_header_constant_value of Section_for_any_header_constant_value_t.section_for_any_header_constant_value
  | Section_for_any_header_top_value of Section_for_any_header_top_value_t.section_for_any_header_top_value
;;

