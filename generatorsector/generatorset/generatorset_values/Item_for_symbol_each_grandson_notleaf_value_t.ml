(** {6 Typing} *)

type item_for_symbol_each_grandson_notleaf_value =
  | Extracting_grandson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Querying_grandson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
  | Upgrading_grandson_notleaf_for_symbol of Camlparagraph_value_t.camlparagraph_value list
;;
