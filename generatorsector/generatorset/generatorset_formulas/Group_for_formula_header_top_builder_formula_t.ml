type group_for_formula_header_top_builder_formula =
  | Let_builder_tag_list_off_top_formula of Camlline_tag_t.camlline_tag list
  | Let_builder_tag_list_off_top_tag of Camlline_tag_t.camlline_tag list
  | Let_iter2_for_formula of Camlline_tag_t.camlline_tag list
  | Let_iter_for_formula of Camlline_tag_t.camlline_tag list
  | Let_map2_for_formula of Camlline_tag_t.camlline_tag list
  | Let_map_for_formula of Camlline_tag_t.camlline_tag list
;;
