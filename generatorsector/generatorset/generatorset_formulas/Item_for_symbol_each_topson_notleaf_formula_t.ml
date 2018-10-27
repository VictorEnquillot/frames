(** {6 Typing} *)

type item_for_symbol_each_topson_notleaf_formula =
  | Extracting_topson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Querying_topson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Upgrading_topson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
;;
