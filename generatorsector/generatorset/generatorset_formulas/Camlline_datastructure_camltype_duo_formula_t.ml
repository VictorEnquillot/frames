(** {3 Camlline_datastructure_camltype_duo_formula}  *)

(** {6 Typing} *)

type camlline_datastructure_camltype_duo_formula =
  | Lpar_A_B_tag_rpar_capped_list_formula of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar_capped_tree of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar_doublet_formula of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar_doublet_list of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar_doublet_tree of Entity_tag_t.entity_tag list
  | Lpar_A_B_tag_rpar_tree_leafed of Entity_tag_t.entity_tag list
  | Pipe_A_b_datastructure_of_a_b_datastructure  of Entity_tag_t.entity_tag list 
  | Pipe_constructor_of_a_b_doublet of Entity_tag_t.entity_tag list
;;
