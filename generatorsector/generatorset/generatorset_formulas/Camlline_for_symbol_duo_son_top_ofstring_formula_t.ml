(** {6 Typing} *)

type camlline_for_symbol_duo_son_top_ofstring_formula =
  | Et_symbol_tdot_es_sarg of Entity_tag_t.entity_tag list  
  | Let_es_sarg_equal_et_symbol_tdot_es_sarg of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_sarg_arrow of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_sarg_arrow_sarg of Entity_tag_t.entity_tag list  
  | Pipe_et_symbol_tdot_es_underscore_arrow_string of Entity_tag_t.entity_tag list  
;;

