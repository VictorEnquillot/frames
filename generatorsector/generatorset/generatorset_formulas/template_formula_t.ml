(** {3 Top_formula_t} *)

(* item_for_formula_by_group_topsons : typing_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Typing_for_formula} *)

(* camlparagraph_for_formula_symbol : camlparagraph_for_formula_type *)
(* section_for_any_header_constant : type_et_any_equal *)
(* group_for_any_header_constant : type_et_any_equal *)
type top_formula = 

(* section_for_any_body_son : pipe_topson_any_type_notleaf_constructors *) 

(* group_for_any_body_son : pipe_topson_any_type_notleaf_one_constructor *) 
  | Son_formula of Son_formula_t.son_formula
  | .... repeat


(* section_for_formula_body_son_builder : pipe_topson_formula_type_ofstring_constructors *) 

(* group_for_formula_body_son_builder : pipe_topson_formula_type_ofstring_one_constructor *) 
  | Son of (string, Builder_tag_t.builder_tag list)
  | .... repeat

(* section_for_formula_body_son_builder : pipe_topson_formula_type_bare_constructors *) 
(* group_for_formula_body_son_builder : pipe_topson_formula_type_bare_one_constructor *) 
  | Son of Builder_tag_t.builder_tag list
  | .... repeat
;;
