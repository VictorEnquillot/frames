(** {3 Section_for_symbol_value_t.}  *)

(** {6 Typing} *)

type section_for_symbol_value = 
  | Section_for_symbol_body_value of Section_for_symbol_body_value_t.section_for_symbol_body_value
  | Section_for_symbol_footer_value of Section_for_symbol_footer_value_t.section_for_symbol_footer_value
  | Section_for_symbol_header_value of Section_for_symbol_header_value_t.section_for_symbol_header_value
;;

