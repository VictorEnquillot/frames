type camlparagraph_for_formula_let_argument_value =
  | Let_build_n_store_basic_sons of Section_value_t.section_value list
  | Let_build_n_store_proper_sons of Section_value_t.section_value list
  | Let_builder_tag_list_off_top_tag of Section_value_t.section_value list
  | Let_data_tag_list_off_top_tag of Section_value_t.section_value list
  | Let_documentation_for_formula of Section_value_t.section_value list
  | Let_fullname_argument_for_formula of Section_value_t.section_value list
  | Let_iter2_for_formula of Section_value_t.section_value list
  | Let_iter_for_formula of Section_value_t.section_value list
  | Let_longname_argument_for_formula of Section_value_t.section_value list
  | Let_make_arguments_for_formula of Section_value_t.section_value list
  | Let_map2_for_formula of Section_value_t.section_value list
  | Let_map_for_formula of Section_value_t.section_value list
  | Let_name_argument_for_formula of Section_value_t.section_value list
  | Let_retrieve_for_formula of Section_value_t.section_value list
  | Let_string_off_argument_for_formula of Section_value_t.section_value list
;;
