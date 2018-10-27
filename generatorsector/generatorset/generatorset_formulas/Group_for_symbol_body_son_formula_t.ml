(** {6 Typing} *)

type group_for_symbol_body_son_formula =
  | Pipe_esstring_arrow_es of Camlline_tag_t.camlline_tag list
  | Pipe_esstring_arrow_es_sarg of Camlline_tag_t.camlline_tag list
  | Pipe_es_symbol_bare_type_constructor of Camlline_tag_t.camlline_tag list
  | Pipe_es_symbol_ofstring_type_constructor of Camlline_tag_t.camlline_tag list
;;
