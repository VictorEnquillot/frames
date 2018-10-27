(** {6 Typing} *)

(** {6 Typing} *)

type item_for_symbol_each_grandson_notleaf_formula =
  | Extracting_grandson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Querying_grandson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
  | Upgrading_grandson_notleaf_for_symbol of Camlparagraph_tag_t.camlparagraph_tag list
;;

(************
type camlparagraph_tag_n_entity_tag_capped_doublet_list = Camlparagraph_tag_t.camlparagraph_tag * (Camlparagraph_tag_t.camlparagraph_tag * Entity_tag) list;;

type item_for_symbol_each_grandson_notleaf_formula =
  | Extracting_grandson_notleaf_for_symbol of camlparagraph_tag_n_entity_tag_capped_doublet_list
  | Querying_grandson_notleaf_for_symbol of camlparagraph_tag_n_entity_tag_capped_doublet_list
  | Upgrading_grandson_notleaf_for_symbol of camlparagraph_tag_n_entity_tag_capped_doublet_list
;;

(* capped_doublet_list *)
**********)
