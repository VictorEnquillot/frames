type camlparagraph_for_formula_let_argument_formula =
  | Let_build_n_store_basic_sons of Section_tag_t.section_tag list
  | Let_build_n_store_proper_sons of Section_tag_t.section_tag list
  | Let_builder_tag_list_off_top_tag of Section_tag_t.section_tag list
  | Let_data_tag_list_off_top_tag of Section_tag_t.section_tag list
  | Let_documentation_for_formula of Section_tag_t.section_tag list
  | Let_fullname_argument_for_formula of Section_tag_t.section_tag list
  | Let_iter2_for_formula of Section_tag_t.section_tag list
  | Let_iter_for_formula of Section_tag_t.section_tag list
  | Let_longname_argument_for_formula of Section_tag_t.section_tag list
  | Let_make_arguments_for_formula of Section_tag_t.section_tag list
  | Let_map2_for_formula of Section_tag_t.section_tag list
  | Let_map_for_formula of Section_tag_t.section_tag list
  | Let_name_argument_for_formula of Section_tag_t.section_tag list
  | Let_retrieve_for_formula of Section_tag_t.section_tag list
  | Let_string_off_argument_for_formula of Section_tag_t.section_tag list
;;
