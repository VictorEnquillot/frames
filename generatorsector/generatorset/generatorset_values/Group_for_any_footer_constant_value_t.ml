(** {6 Typing} *)

type group_for_any_footer_constant_value =
  | Ending of Camlline_value_t.camlline_value list
  | Double_semicolon of Camlline_value_t.camlline_value list
;;
