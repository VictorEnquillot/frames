(** {3 Camlline_duo_function_formula_t} *)

(** {6 Typing} *)

type camlline_duo_function_formula = 
  | Es_any_vdot_ec_any_off_es_any_ac_as of Entity_tag_t.entity_tag list
  | Es_any_vdot_is_ec_any_off_es_any_ac_as of Entity_tag_t.entity_tag list
  | If_not_is_es_any_off_et_any_ac_at of Entity_tag_t.entity_tag list
  | Let_ac_as_equal_es_any_off_et_any_ac_at_in of Entity_tag_t.entity_tag list
  | Let_ac_as_equal_Es_any_vdot_es_any_of_ec_any_ac_ac_in of Entity_tag_t.entity_tag list
  | Let_ec_any_off_et_any_ac_at_equal of Entity_tag_t.entity_tag list
  | Let_es_any_off_et_any_equal_function of Entity_tag_t.entity_tag list
  | Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es of Entity_tag_t.entity_tag list
  | Let_es_equal_Et_symbol_tdot_Es of Entity_tag_t.entity_tag list
  | Let_es_symbol_arg_equal_Et_symbol_tdot_Es_symbol_arg of Entity_tag_t.entity_tag list
  | Let_et_any_of_ec_any_ac_ac_equal of Entity_tag_t.entity_tag list
  | Let_et_any_of_es_any_ac_as_equal of Entity_tag_t.entity_tag list
  | Let_is_ec_any_off_et_any_ac_at_equal of Entity_tag_t.entity_tag list
  | Let_is_es_any_off_et_any_equal_function of Entity_tag_t.entity_tag list
  | Let_make_sym_as_soi_at_equal of Entity_tag_t.entity_tag list
  | Let_make_sym_at_soi_am_equal of Entity_tag_t.entity_tag list
  | Let_tag_ec_equal_Tag_vdot_make_ec_symbol_sym_ac_soi_ac_in of Entity_tag_t.entity_tag list
  | Pipe_ecstring_arrow_Et_symbol_tdot_Ec_string of Entity_tag_t.entity_tag list
  | Pipe_Et_any_tdot_Es_any_ac_as_arrow of Entity_tag_t.entity_tag list
  | Pipe_Et_any_tdot_Es_any_ac_as_arrow_ac_as of Entity_tag_t.entity_tag list
  | Pipe_Et_any_tdot_Es_any_arrow of Entity_tag_t.entity_tag list
  | Pipe_Et_any_tdot_Es_any_underscore_arrow_true of Entity_tag_t.entity_tag list
  | Pipe_Et_symbol_tdot_Es_arrow of Entity_tag_t.entity_tag list
  | Pipe_Et_symbol_tdot_Es_arrow_string of Entity_tag_t.entity_tag list
  | Pipe_Et_symbol_tdot_Es_sarg_arrow of Entity_tag_t.entity_tag list
  | Pipe_Et_symbol_tdot_Es_symbol_underscore_arrow_string of Entity_tag_t.entity_tag list
  | Pipe_print_fatal_error_es_any_off_et_any_4_lines of Entity_tag_t.entity_tag list
  | Space2_Es_symbol_vdot_name_sym_as of Entity_tag_t.entity_tag list
  | Et_symbol_of_es_symbol_sym_as of Entity_tag_t.entity_tag list
  | Space_Es_formula_vdot_make_sym_as_soi_at of Entity_tag_t.entity_tag list
  | Space_Es_symbol_vdot_string_off_sym_as of Entity_tag_t.entity_tag list
  | Et_any_of_es_any_ac_as of Entity_tag_t.entity_tag list
  | Space_Et_formula_tdot_Es_for_das of Entity_tag_t.entity_tag list
  | Space_Et_symbol_tdot_Es_symbol_sym_as of Entity_tag_t.entity_tag list
  | Let_ac_at_equal_Et_symbol_vdot_es_in of Entity_tag_t.entity_tag list
  | Let_dos_of_ste_equal_Dos_vdot_fun_in of Entity_tag_t.entity_tag list
  | Let_nam_as_equal_Es_tag_vdot_name_for_at_in of Entity_tag_t.entity_tag list
  | Let_nam_as_equal_Tag_vdot_name_Et_symbol_vdot_name_in of Entity_tag_t.entity_tag list
  | Let_soi_as_equal_Sole_index_vdot_make_count_soi_at_in of Entity_tag_t.entity_tag list
  | Space_Tag_vdot_map_left_Et_symbol_vdot_ec_symbol_off_et_symbol_tag_at of Entity_tag_t.entity_tag list
  | Space_Tag_vdot_map_left_Et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac of Entity_tag_t.entity_tag list
  | Space_Tag_vdot_map_left_Et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at of Entity_tag_t.entity_tag list
  | Try_et_symbol_of_es_symbol of Entity_tag_t.entity_tag list
;;
