(** {6 Typing} *)

type camlline_for_symbol_duo_function_formula =
  | Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es of Entity_tag_t.entity_tag list
  | Let_es_equal_et_symbol_tdot_es of Entity_tag_t.entity_tag list
  | Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg of Entity_tag_t.entity_tag list
  | Pipe_ecstring_arrow_et_symbol_tdot_ec_string of Entity_tag_t.entity_tag list
  | Pipe_et_symbol_tdot_es_arrow of Entity_tag_t.entity_tag list
  | Pipe_et_symbol_tdot_es_arrow_string of Entity_tag_t.entity_tag list
  | Pipe_et_symbol_tdot_es_sarg_arrow of Entity_tag_t.entity_tag list
  | Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string of Entity_tag_t.entity_tag list
  | Es_symbol_vdot_name_sym_as of Entity_tag_t.entity_tag list
  | Et_symbol_of_es_symbol_sym_as of Entity_tag_t.entity_tag list
  | Es_symbol_vdot_string_off_sym_as of Entity_tag_t.entity_tag list
  | Et_symbol_tdot_es_symbol_sym_as of Entity_tag_t.entity_tag list
  | Let_sym_at_equal_et_symbol_vdot_es_in of Entity_tag_t.entity_tag list
  | Try_et_symbol_of_es_symbol of Entity_tag_t.entity_tag list
;;

