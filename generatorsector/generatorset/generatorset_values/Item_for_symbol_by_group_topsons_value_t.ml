(** {6 Typing} *)

type item_for_symbol_by_group_topsons_value =
  | Listing_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Making_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Making_for_symbol_bare of Camlparagraph_value_t.camlparagraph_value list
  | Making_for_symbol_notleaf of Camlparagraph_value_t.camlparagraph_value list
  | Making_for_symbol_ofstring of Camlparagraph_value_t.camlparagraph_value list
  | Naming_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Naming_for_symbol_bare of Camlparagraph_value_t.camlparagraph_value list
  | Naming_for_symbol_notleaf of Camlparagraph_value_t.camlparagraph_value list
  | Naming_for_symbol_ofstring of Camlparagraph_value_t.camlparagraph_value list
  | String_offing_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | String_offing_for_symbol_bare of Camlparagraph_value_t.camlparagraph_value list
  | String_offing_for_symbol_notleaf of Camlparagraph_value_t.camlparagraph_value list
  | String_offing_for_symbol_ofstring of Camlparagraph_value_t.camlparagraph_value list
  | Typing_for_symbol of Camlparagraph_value_t.camlparagraph_value list

;;
