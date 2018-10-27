(** {6 Typing} *)

type item_for_symbol_each_topson_notleaf_value =
  | Extracting_topson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Querying_topson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Upgrading_topson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
;;
