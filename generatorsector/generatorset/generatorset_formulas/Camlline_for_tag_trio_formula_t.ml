type camlline_for_tag_trio_formula =
  | Lpar_a_b_c_tag_rpar of Entity_tag_t.entity_tag list
  | Lpar_a_b_c_tag_rpar_tree_footed_capped of Entity_tag_t.entity_tag list
  | Lpar_a_b_c_tag_rpar_tree_leafed_capped of Entity_tag_t.entity_tag list
  | Lpar_a_b_c_tag_rpar_triplet of Entity_tag_t.entity_tag list
  | Lpar_a_b_c_tag_rpar_triplet_list of Entity_tag_t.entity_tag list
;;
