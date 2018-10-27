type camlline_for_formula_duo_son_top_formula =
  | Et_formula_tdot_es_formula of Entity_tag_t.entity_tag list
  | Pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow of Entity_tag_t.entity_tag list
  | Pipe_et_formula_tdot_es_underscore_arrow of Entity_tag_t.entity_tag list
  | Et_formula_tdot_es_for_das of Entity_tag_t.entity_tag list
  | Let_nam_as_equal_es_tag_vdot_name_for_at_in of Entity_tag_t.entity_tag list
  | Let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in of Entity_tag_t.entity_tag list
;;
