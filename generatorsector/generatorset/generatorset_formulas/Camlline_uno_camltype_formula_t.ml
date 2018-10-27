  (** {6 Typing} *)

type camlline_uno_camltype_formula =
  | Type_etc_equal of Entity_tag_t.entity_tag list 

  | Type_etc_equal_private of Entity_tag_t.entity_tag list 

  | Type_etc_equal_Et of Entity_tag_t.entity_tag list 

  | Pipe_Etc_bof_Etc_tdot_etc of Entity_tag_t.entity_tag list 

  | Pipe_Es_bof_string of Entity_tag_t.entity_tag list 

  | Pipe_Esl of Entity_tag_t.entity_tag list 

  | Type_et_tag_equal_Et_symbol_tdot_et_symbol_tag of Entity_tag_t.entity_tag list 
;;
