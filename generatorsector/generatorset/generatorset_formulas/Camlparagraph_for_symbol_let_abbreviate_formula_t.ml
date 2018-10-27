type camlparagraph_for_symbol_let_abbreviate_formula =  
  | Let_abbreviate_grandson_bare of Section_tag_t.section_tag list
  | Let_abbreviate_grandson_basicnullary of Section_tag_t.section_tag list
  | Let_abbreviate_grandson_ofstring of Section_tag_t.section_tag list
  | Let_abbreviate_inancestorself of Section_tag_t.section_tag list
  | Let_abbreviate_inself of Section_tag_t.section_tag list
  | Let_abbreviate_topson_bare of Section_tag_t.section_tag list
  | Let_abbreviate_topson_basicnullary of Section_tag_t.section_tag list
  | Let_abbreviate_topson_ofstring of Section_tag_t.section_tag list
;;
