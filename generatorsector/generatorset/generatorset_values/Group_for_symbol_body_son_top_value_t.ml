type group_for_symbol_body_son_top_value =
  | Pipe_is_onlyson_bare_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_is_onlyson_notleaf_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_is_onlyson_ofstring_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_is_topson_bare_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_is_topson_notleaf_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_is_topson_ofstring_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_onlyson_notleaf_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_topson_notleaf_symbol_off_top_symbol of Camlline_value_t.camlline_value list
  | Pipe_upgrade_name_bare_function of Camlline_value_t.camlline_value list
  | Pipe_upgrade_name_notleaf_function of Camlline_value_t.camlline_value list
  | Pipe_upgrade_name_ofstring_function of Camlline_value_t.camlline_value list
  | Pipe_upgrade_string_off_bare_function of Camlline_value_t.camlline_value list
  | Pipe_upgrade_string_off_notleaf_function of Camlline_value_t.camlline_value list
  | Pipe_upgrade_string_off_ofstring_function of Camlline_value_t.camlline_value list
  | Try_top_of_topson_with_failure_arrow of Camlline_value_t.camlline_value list
  | Upgrade_topson_symbol of Camlline_value_t.camlline_value list
;;
