(** {6 Typing} *)

type camlline_for_any_uno_value =
  | Camlline_for_any_uno_camlfile_value of Camlline_for_any_uno_camlfile_value_t.camlline_for_any_uno_camlfile_value
  | Camlline_for_any_uno_camltype_value of Camlline_for_any_uno_camltype_value_t.camlline_for_any_uno_camltype_value
  | Camlline_for_any_uno_son_value of Camlline_for_any_uno_son_value_t.camlline_for_any_uno_son_value
  | Camlline_for_any_uno_top_value of Camlline_for_any_uno_top_value_t.camlline_for_any_uno_top_value
;;
