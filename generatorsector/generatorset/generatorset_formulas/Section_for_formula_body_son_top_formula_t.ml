type section_for_formula_body_son_top_formula =
  | Symbol_of_formula_topson_pattern_bare of Group_tag_t.group_tag list
  | Symbol_of_formula_topson_pattern_notleaf of Group_tag_t.group_tag list
  | Symbol_of_formula_topson_pattern_ofstring of Group_tag_t.group_tag list
;;
