type camlline_duo_value_formula =
  | Val_eac_off_eat_colon of Entity_tag_t.entity_tag list
  | Val_eat_of_eac_colon of Entity_tag_t.entity_tag list
  | Val_esl_colon_Et_symbol_tdot_et_symbol of Entity_tag_t.entity_tag list
  | Val_is_es_symbol_off_et_symbol_colon of Entity_tag_t.entity_tag list
;;
