type section_for_formula_body_top_builder_formula =
  | Builder_formula_list of Group_tag_t.group_tag list
  | Builder_tag_list_of_tag_for_formula of Group_tag_t.group_tag list
  | Iter2_on_builder_tag_list of Group_tag_t.group_tag list
  | Iter_on_builder_tag_list of Group_tag_t.group_tag list
  | Map2_on_builder_tag_list of Group_tag_t.group_tag list
  | Map_on_builder_tag_list of Group_tag_t.group_tag list
;;
