(** {6 Typing} *)

type group_for_any_footer_formula =
  | Ending of Camlline_tag_t.camlline_tag list
  | Double_semicolon of Camlline_tag_t.camlline_tag list
;;

