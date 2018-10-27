(** {6 Typing} *)

type item_for_symbol_only_top_value =
  | Documenting_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Longnaming_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Fullnaming_for_symbol of Camlparagraph_value_t.camlparagraph_value list
;;

