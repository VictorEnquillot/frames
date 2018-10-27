(** {3 Localinput_lexer_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol sym_llb ->
    Localinput_lexer_basic_symbol_v.name sym_llb
  | Localinput_lexer_symbol_t.Localinput_lexer_command_symbol sym_llc ->
    Localinput_lexer_command_symbol_v.name sym_llc
  | Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol sym_llk ->
    Localinput_lexer_keyword_symbol_v.name sym_llk
  | Localinput_lexer_symbol_t.Localinput_lexer_token_symbol sym_llt ->
    Localinput_lexer_token_symbol_v.name sym_llt
  | Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol sym_lvk ->
    Localinput_lexer_variable_kind_symbol_v.name sym_lvk
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol sym_llb ->
  Localinput_lexer_basic_symbol_v.string_off sym_llb
  | Localinput_lexer_symbol_t.Localinput_lexer_command_symbol sym_llc ->
  Localinput_lexer_command_symbol_v.string_off sym_llc
  | Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol sym_llk ->
  Localinput_lexer_keyword_symbol_v.string_off sym_llk
  | Localinput_lexer_symbol_t.Localinput_lexer_token_symbol sym_llt ->
  Localinput_lexer_token_symbol_v.string_off sym_llt
  | Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol sym_lvk ->
  Localinput_lexer_variable_kind_symbol_v.string_off sym_lvk
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lle =
  Format.sprintf "Localinput_lexer_symbol_t.%s" (String.capitalize (name sym_lle))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lle =
  Format.sprintf "%s \"%s\"" (longname sym_lle) (string_off sym_lle)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol sym_llb -> sym_llb
  | sym_lle -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_symbol_off_localinput_lexer_symbol"
      "Localinput_lexer_basic_symbol"
      (name sym_lle) "check"
;;

let localinput_lexer_command_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_command_symbol sym_llc -> sym_llc
  | sym_lle -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_command_symbol_off_localinput_lexer_symbol"
      "Localinput_lexer_command_symbol"
      (name sym_lle) "check"
;;

let localinput_lexer_keyword_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol sym_llk -> sym_llk
  | sym_lle -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_symbol_off_localinput_lexer_symbol"
      "Localinput_lexer_keyword_symbol"
      (name sym_lle) "check"
;;

let localinput_lexer_token_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_token_symbol sym_llt -> sym_llt
  | sym_lle -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_token_symbol_off_localinput_lexer_symbol"
      "Localinput_lexer_token_symbol"
      (name sym_lle) "check"
;;

let localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol sym_lvk -> sym_lvk
  | sym_lle -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol"
      "Localinput_lexer_variable_kind_symbol"
      (name sym_lle) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_lexer_basic_boolean_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_float_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_integer_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_string_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_command_define_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_define_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_print_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_print_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_read_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_read_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_set_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_set_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_stop_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_stop_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_title_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_title_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_command_write_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_command_symbol_v.localinput_lexer_command_write_symbol_off_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_symbol sym_lle = 
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
    Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_command_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_command_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_token_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_token_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol = function
  | Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_localinput_lexer_keyword_unnamed_cpu sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_unnamed_cpu sym_llk
    end
;;

let is_localinput_lexer_keyword_unnamed_debug sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_unnamed_debug sym_llk
    end
;;

let is_localinput_lexer_keyword_unnamed_statistics sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_unnamed_statistics sym_llk
    end
;;

let is_localinput_lexer_keyword_unnamed_trace sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_unnamed_trace sym_llk
    end
;;

let is_localinput_lexer_token_ampersand sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_ampersand sym_llt
    end
;;

let is_localinput_lexer_token_back_quote sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_back_quote sym_llt
    end
;;

let is_localinput_lexer_token_bang sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_bang sym_llt
    end
;;

let is_localinput_lexer_token_colon sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_colon sym_llt
    end
;;

let is_localinput_lexer_token_divide sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_divide sym_llt
    end
;;

let is_localinput_lexer_token_dot sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_dot sym_llt
    end
;;

let is_localinput_lexer_token_doublequote sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_doublequote sym_llt
    end
;;

let is_localinput_lexer_token_exclamation_mark sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_exclamation_mark sym_llt
    end
;;

let is_localinput_lexer_token_l_bracket sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_l_bracket sym_llt
    end
;;

let is_localinput_lexer_token_l_curly sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_l_curly sym_llt
    end
;;

let is_localinput_lexer_token_l_parenthesis sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_l_parenthesis sym_llt
    end
;;

let is_localinput_lexer_token_minus sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_minus sym_llt
    end
;;

let is_localinput_lexer_token_pipe sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_pipe sym_llt
    end
;;

let is_localinput_lexer_token_plus sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_plus sym_llt
    end
;;

let is_localinput_lexer_token_question_mark sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_question_mark sym_llt
    end
;;

let is_localinput_lexer_token_quote sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_quote sym_llt
    end
;;

let is_localinput_lexer_token_r_bracket sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_r_bracket sym_llt
    end
;;

let is_localinput_lexer_token_r_curly sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_r_curly sym_llt
    end
;;

let is_localinput_lexer_token_r_parenthesis sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_r_parenthesis sym_llt
    end
;;

let is_localinput_lexer_token_semicolon sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_semicolon sym_llt
    end
;;

let is_localinput_lexer_token_times sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_times sym_llt
    end
;;

let is_localinput_lexer_token_white_space sym_lle =
  if not (is_localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llt = localinput_lexer_token_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_token_symbol_v.is_localinput_lexer_token_white_space sym_llt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_boolean_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_boolean_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_float_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_float_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_integer_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_integer_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_string_bare_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_string_bare_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_string_doublequoted_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_string_doublequoted_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_anycase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_anycase_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_llb
    end
;;

let is_localinput_lexer_command_define_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_define_constructor sym_llc
    end
;;

let is_localinput_lexer_command_print_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_print_constructor sym_llc
    end
;;

let is_localinput_lexer_command_read_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_read_constructor sym_llc
    end
;;

let is_localinput_lexer_command_set_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_set_constructor sym_llc
    end
;;

let is_localinput_lexer_command_stop_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_stop_constructor sym_llc
    end
;;

let is_localinput_lexer_command_title_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_title_constructor sym_llc
    end
;;

let is_localinput_lexer_command_write_constructor sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_command_symbol_v.is_localinput_lexer_command_write_constructor sym_llc
    end
;;

let is_localinput_lexer_keyword_basiced_cofactor_basic_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_blocknamed_end_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_type_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_units_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_category_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_category_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_database_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_databox_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_domain_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_file_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_file_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_function_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_function_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_module_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_module_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_operation_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_constructor sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_sector_constructor sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_constructor sym_llk
    end
;;

let is_localinput_lexer_variable_kind_context_constructor sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_context_constructor sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_external_constructor sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_external_constructor sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_operator_constructor sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_operator_constructor sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_target_constructor sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
      let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
      Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_target_constructor sym_lvk
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_boolean_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_float_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_integer_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_string_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llb = localinput_lexer_basic_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_basic_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb
    end
;;

let is_localinput_lexer_command_define_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_define_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_print_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_print_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_read_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_read_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_set_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_set_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_stop_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_stop_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_title_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_title_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_command_write_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llc = localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_command_symbol_v.is_localinput_lexer_command_write_symbol_off_localinput_lexer_command_symbol sym_llc
    end
;;

let is_localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_llk = localinput_lexer_keyword_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_keyword_symbol_v.is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk
    end
;;

let is_localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_symbol sym_lle =
  if not (is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle)
  then false
  else
    begin
  let sym_lvk = localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lle in
  Localinput_lexer_variable_kind_symbol_v.is_localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb = 
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc = 
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk = 
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_token_symbol sym_llt = 
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol sym_llt
;;

let localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol sym_lvk = 
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol sym_lvk
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_lexer_symbol_of_localinput_lexer_basic_boolean_symbol sym_lbb = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_boolean_symbol sym_lbb in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_float_symbol sym_lbf = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_float_symbol sym_lbf in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_integer_symbol sym_lbi = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_integer_symbol sym_lbi in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_string_symbol sym_lbs = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol sym_lbs in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_string_bare_symbol sym_lsb = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_bare_symbol sym_lsb in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_string_doublequoted_symbol sym_lsd = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_doublequoted_symbol sym_lsd in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu = 
  let sym_llb = Localinput_lexer_basic_symbol_v.localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu in
    localinput_lexer_symbol_of_localinput_lexer_basic_symbol sym_llb
;;

let localinput_lexer_symbol_of_localinput_lexer_command_define_symbol sym_lcd = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_define_symbol sym_lcd in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_print_symbol sym_lcp = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_print_symbol sym_lcp in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_read_symbol sym_lcr = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_read_symbol sym_lcr in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_set_symbol sym_lcs = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_set_symbol sym_lcs in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_stop_symbol sym_lcs = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_stop_symbol sym_lcs in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_title_symbol sym_lct = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_title_symbol sym_lct in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_command_write_symbol sym_lcw = 
  let sym_llc = Localinput_lexer_command_symbol_v.localinput_lexer_command_symbol_of_localinput_lexer_command_write_symbol sym_lcw in
    localinput_lexer_symbol_of_localinput_lexer_command_symbol sym_llc
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_basiced_symbol sym_lkb = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_symbol sym_lkb in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_basiced_cofactor_basic_symbol sym_lcb = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_cofactor_basic_symbol sym_lcb in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_blocknamed_symbol sym_lkb = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_symbol sym_lkb in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_blocknamed_end_symbol sym_lbe = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_end_symbol sym_lbe in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol sym_lnc = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol sym_lnc in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol sym_lnd = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol sym_lnd in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol sym_len = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol sym_len in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol sym_lnf = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol sym_lnf in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol sym_lnf = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol sym_lnf in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol sym_lnm = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol sym_lnm in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol sym_lno = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol sym_lno in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol sym_lns = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol sym_lns in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_keyword_unnamed_symbol sym_lku = 
  let sym_llk = Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol sym_lku in
    localinput_lexer_symbol_of_localinput_lexer_keyword_symbol sym_llk
;;

let localinput_lexer_symbol_of_localinput_lexer_variable_kind_context_symbol sym_lkc = 
  let sym_lvk = Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_context_symbol sym_lkc in
    localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_symbol_of_localinput_lexer_variable_kind_external_symbol sym_lke = 
  let sym_lvk = Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_external_symbol sym_lke in
    localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_symbol_of_localinput_lexer_variable_kind_operator_symbol sym_lko = 
  let sym_lvk = Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_operator_symbol sym_lko in
    localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol sym_lvk
;;

let localinput_lexer_symbol_of_localinput_lexer_variable_kind_target_symbol sym_lkt = 
  let sym_lvk = Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_target_symbol sym_lkt in
    localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol sym_lvk
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let localinput_lexer_keyword_unnamed_cpu = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_unnamed_cpu;;

let localinput_lexer_keyword_unnamed_debug = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_unnamed_debug;;

let localinput_lexer_keyword_unnamed_statistics = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_unnamed_statistics;;

let localinput_lexer_keyword_unnamed_trace = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_unnamed_trace;;

let localinput_lexer_token_ampersand = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_ampersand;;

let localinput_lexer_token_back_quote = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_back_quote;;

let localinput_lexer_token_bang = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_bang;;

let localinput_lexer_token_colon = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_colon;;

let localinput_lexer_token_divide = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_divide;;

let localinput_lexer_token_dot = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_dot;;

let localinput_lexer_token_doublequote = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_doublequote;;

let localinput_lexer_token_exclamation_mark = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_exclamation_mark;;

let localinput_lexer_token_l_bracket = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_l_bracket;;

let localinput_lexer_token_l_curly = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_l_curly;;

let localinput_lexer_token_l_parenthesis = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_l_parenthesis;;

let localinput_lexer_token_minus = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_minus;;

let localinput_lexer_token_pipe = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_pipe;;

let localinput_lexer_token_plus = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_plus;;

let localinput_lexer_token_question_mark = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_question_mark;;

let localinput_lexer_token_quote = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_quote;;

let localinput_lexer_token_r_bracket = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_r_bracket;;

let localinput_lexer_token_r_curly = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_r_curly;;

let localinput_lexer_token_r_parenthesis = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_r_parenthesis;;

let localinput_lexer_token_semicolon = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_semicolon;;

let localinput_lexer_token_times = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_times;;

let localinput_lexer_token_white_space = localinput_lexer_symbol_of_localinput_lexer_token_symbol Localinput_lexer_token_symbol_v.localinput_lexer_token_white_space;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_boolean_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_boolean_constructor s);;

let localinput_lexer_basic_float_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_float_constructor s);;

let localinput_lexer_basic_integer_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_integer_constructor s);;

let localinput_lexer_basic_string_bare_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_string_bare_constructor s);;

let localinput_lexer_basic_string_doublequoted_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_string_doublequoted_constructor s);;

let localinput_lexer_basic_word_bare_anycase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_anycase_constructor s);;

let localinput_lexer_basic_word_bare_capitalized_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_capitalized_constructor s);;

let localinput_lexer_basic_word_bare_lowercase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor s);;

let localinput_lexer_basic_word_bare_uppercase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_bare_uppercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_anycase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_constructor s);;

let localinput_lexer_basic_word_doublequoted_capitalized_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_constructor s);;

let localinput_lexer_basic_word_doublequoted_lowercase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_uppercase_constructor s = localinput_lexer_symbol_of_localinput_lexer_basic_symbol (Localinput_lexer_basic_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_constructor s);;

let localinput_lexer_command_define_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_define_constructor s);;

let localinput_lexer_command_print_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_print_constructor s);;

let localinput_lexer_command_read_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_read_constructor s);;

let localinput_lexer_command_set_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_set_constructor s);;

let localinput_lexer_command_stop_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_stop_constructor s);;

let localinput_lexer_command_title_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_title_constructor s);;

let localinput_lexer_command_write_constructor s = localinput_lexer_symbol_of_localinput_lexer_command_symbol (Localinput_lexer_command_symbol_v.localinput_lexer_command_write_constructor s);;

let localinput_lexer_keyword_basiced_cofactor_basic_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_basiced_cofactor_basic_constructor s);;

let localinput_lexer_keyword_blocknamed_end_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_blocknamed_end_constructor s);;

let localinput_lexer_keyword_defvarnamed_cofactor_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_cofactor_constructor s);;

let localinput_lexer_keyword_defvarnamed_type_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_type_constructor s);;

let localinput_lexer_keyword_defvarnamed_units_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_defvarnamed_units_constructor s);;

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_context_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_external_context_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_variable_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_external_variable_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operand_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operand_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operator_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operator_constructor s);;

let localinput_lexer_keyword_nextstringed_category_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_category_constructor s);;

let localinput_lexer_keyword_nextstringed_database_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_database_constructor s);;

let localinput_lexer_keyword_nextstringed_databox_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_databox_constructor s);;

let localinput_lexer_keyword_nextstringed_domain_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_domain_constructor s);;

let localinput_lexer_keyword_nextstringed_external_name_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_external_name_constructor s);;

let localinput_lexer_keyword_nextstringed_file_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_file_constructor s);;

let localinput_lexer_keyword_nextstringed_function_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_function_constructor s);;

let localinput_lexer_keyword_nextstringed_module_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_module_constructor s);;

let localinput_lexer_keyword_nextstringed_ondomain_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_ondomain_constructor s);;

let localinput_lexer_keyword_nextstringed_operation_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_operation_constructor s);;

let localinput_lexer_keyword_nextstringed_sector_constructor s = localinput_lexer_symbol_of_localinput_lexer_keyword_symbol (Localinput_lexer_keyword_symbol_v.localinput_lexer_keyword_nextstringed_sector_constructor s);;

let localinput_lexer_variable_kind_context_constructor s = localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol (Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_context_constructor s);;

let localinput_lexer_variable_kind_external_constructor s = localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol (Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_external_constructor s);;

let localinput_lexer_variable_kind_operator_constructor s = localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol (Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_operator_constructor s);;

let localinput_lexer_variable_kind_target_constructor s = localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol (Localinput_lexer_variable_kind_symbol_v.localinput_lexer_variable_kind_target_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_symbol_of_localinput_lexer_basic_symbol
      (Localinput_lexer_basic_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_symbol:Localinput_lexer_basic_symbol_v.ml:make" ->
  try localinput_lexer_symbol_of_localinput_lexer_command_symbol
      (Localinput_lexer_command_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_command_symbol:Localinput_lexer_command_symbol_v.ml:make" ->
  try localinput_lexer_symbol_of_localinput_lexer_keyword_symbol
      (Localinput_lexer_keyword_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_symbol:Localinput_lexer_keyword_symbol_v.ml:make" ->
  try localinput_lexer_symbol_of_localinput_lexer_token_symbol
      (Localinput_lexer_token_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_token_symbol:Localinput_lexer_token_symbol_v.ml:make" ->
  try localinput_lexer_symbol_of_localinput_lexer_variable_kind_symbol
      (Localinput_lexer_variable_kind_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_variable_kind_symbol:Localinput_lexer_variable_kind_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_symbol:Localinput_lexer_symbol_v.ml:make"
;;


(** Localinput_lexer_symbol_v at 12:10:40 on 22 Mar 2017. created by version v2.4 of generator *)



