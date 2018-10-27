type group_for_formula_body_top_builder_value =
  | Builder_formula_list of Camlline_value_t.camlline_value list
  | Builder_tag_list of Camlline_value_t.camlline_value list
  | Builder_tag_list_of_tag_for_formula of Camlline_value_t.camlline_value list
  | Iter2_on_builder_tag_list of Camlline_value_t.camlline_value list
  | Iter_on_builder_tag_list of Camlline_value_t.camlline_value list
  | Map2_on_builder_tag_list of Camlline_value_t.camlline_value list
  | Map_on_builder_tag_list of Camlline_value_t.camlline_value list
;;
