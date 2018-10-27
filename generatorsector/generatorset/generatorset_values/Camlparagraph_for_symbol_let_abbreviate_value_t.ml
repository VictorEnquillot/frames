type camlparagraph_for_symbol_let_abbreviate_value =  
  | Let_abbreviate_grandson_bare of Section_value_t.section_value list
  | Let_abbreviate_grandson_basicnullary of Section_value_t.section_value list
  | Let_abbreviate_grandson_ofstring of Section_value_t.section_value list
  | Let_abbreviate_inancestorself of Section_value_t.section_value list
  | Let_abbreviate_inself of Section_value_t.section_value list
  | Let_abbreviate_topson_bare of Section_value_t.section_value list
  | Let_abbreviate_topson_basicnullary of Section_value_t.section_value list
  | Let_abbreviate_topson_ofstring of Section_value_t.section_value list
;;

