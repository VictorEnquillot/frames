
(** {6 Typing} *)

type camlline_for_symbol_duo_son_top_bare_formula =
  | Et_symbol_tdot_es of Entity_tag_t.entity_tag list
  | Let_es_equal_et_symbol_tdot_es of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_arrow of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_arrow_emptystring of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_arrow_string of Entity_tag_t.entity_tag list  
  | Let_sym_at_equal_et_symbol_vdot_es_in of Entity_tag_t.entity_tag list  
;;


