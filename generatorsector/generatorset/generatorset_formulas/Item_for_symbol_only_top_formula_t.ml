(** {6 Typing} *)

type item_for_symbol_only_top_formula =
  | Documenting_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Longnaming_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Fullnaming_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
;;
