(** {6 Typing} *)

type section_for_any_body_value =
  | Section_for_any_body_son_value of Section_for_any_body_son_value_t.section_for_any_body_son_value
  | Section_for_any_body_top_value of Section_for_any_body_top_value_t.section_for_any_body_top_value
  | Section_for_any_body_top_main_value of Section_for_any_body_top_main_value_t.section_for_any_body_top_main_value
;;
