type group_for_formula_body_top_builder_formula =
  | Builder_formula_list of Camlline_tag_t.camlline_tag list
  | Builder_tag_list of Camlline_tag_t.camlline_tag list
  | Builder_tag_list_of_tag_for_formula of Camlline_tag_t.camlline_tag list
  | Iter2_on_builder_tag_list of Camlline_tag_t.camlline_tag list
  | Iter_on_builder_tag_list of Camlline_tag_t.camlline_tag list
  | Map2_on_builder_tag_list of Camlline_tag_t.camlline_tag list
  | Map_on_builder_tag_list of Camlline_tag_t.camlline_tag list
;;
