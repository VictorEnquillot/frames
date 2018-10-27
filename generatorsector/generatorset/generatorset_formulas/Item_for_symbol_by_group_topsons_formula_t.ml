(** {3 Item_for_symbol_by_group_topsons_formula_t} *)

(** {6 Typing} *)

type item_for_symbol_by_group_topsons_formula =
  | Listing_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Making_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Making_for_symbol_bare of Camlparagraph_tag_t.camlparagraph_tag list
  | Making_for_symbol_notleaf of Camlparagraph_tag_t.camlparagraph_tag list
  | Making_for_symbol_ofstring of Camlparagraph_tag_t.camlparagraph_tag list
  | Naming_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Naming_for_symbol_bare of Camlparagraph_tag_t.camlparagraph_tag list
  | Naming_for_symbol_notleaf of Camlparagraph_tag_t.camlparagraph_tag list
  | Naming_for_symbol_ofstring of Camlparagraph_tag_t.camlparagraph_tag list
  | String_offing_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | String_offing_for_symbol_bare of Camlparagraph_tag_t.camlparagraph_tag list
  | String_offing_for_symbol_notleaf of Camlparagraph_tag_t.camlparagraph_tag list
  | String_offing_for_symbol_ofstring of Camlparagraph_tag_t.camlparagraph_tag list
  | Typing_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list

;;


