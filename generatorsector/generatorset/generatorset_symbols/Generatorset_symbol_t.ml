(** {6 Typing} *)

type generatorset_symbol =
  | Camlline_symbol of Camlline_symbol_t.camlline_symbol
  | Camlparagraph_symbol of Camlparagraph_symbol_t.camlparagraph_symbol
  | Category_symbol of Category_symbol_t.category_symbol
  | Contentfile_symbol of Contentfile_symbol_t.contentfile_symbol
  | Domain_symbol of Domain_symbol_t.domain_symbol
  | Entity_symbol of Entity_symbol_t.entity_symbol
  | Group_symbol of Group_symbol_t.group_symbol
  | Item_symbol of Item_symbol_t.item_symbol
  | Kind_symbol of Kind_symbol_t.kind_symbol
  | Section_symbol of Section_symbol_t.section_symbol
  | Usagefile_symbol of Usagefile_symbol_t.usagefile_symbol
;;

