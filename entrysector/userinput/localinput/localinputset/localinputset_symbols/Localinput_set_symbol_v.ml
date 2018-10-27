(** {3 Localinput_set_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_symbol_t.Localinput_set_body_symbol sym_lsb ->
    Localinput_set_body_symbol_v.name sym_lsb
  | Localinput_set_symbol_t.Localinput_set_fence_symbol sym_lsf ->
    Localinput_set_fence_symbol_v.name sym_lsf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_symbol_t.Localinput_set_body_symbol sym_lsb ->
  Localinput_set_body_symbol_v.string_off sym_lsb
  | Localinput_set_symbol_t.Localinput_set_fence_symbol sym_lsf ->
  Localinput_set_fence_symbol_v.string_off sym_lsf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lse =
  Format.sprintf "Localinput_set_symbol_t.%s" (String.capitalize (name sym_lse))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lse =
  Format.sprintf "%s \"%s\"" (longname sym_lse) (string_off sym_lse)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_symbol_off_localinput_set_symbol = function
  | Localinput_set_symbol_t.Localinput_set_body_symbol sym_lsb -> sym_lsb
  | sym_lse -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_symbol_off_localinput_set_symbol"
      "Localinput_set_body_symbol"
      (name sym_lse) "check"
;;

let localinput_set_fence_symbol_off_localinput_set_symbol = function
  | Localinput_set_symbol_t.Localinput_set_fence_symbol sym_lsf -> sym_lsf
  | sym_lse -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_symbol_off_localinput_set_symbol"
      "Localinput_set_fence_symbol"
      (name sym_lse) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_set_body_block_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_define_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_define_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_cofactor_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_cofactor_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_print_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_print_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_read_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_read_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_set_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_set_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_set_alternative_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_title_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_title_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_variable_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_variable_context_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_variable_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_variable_external_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_variable_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_variable_target_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_variable_target_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_block_write_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_block_write_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_box_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_box_type_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_box_type_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_box_units_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_box_units_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_cofactor_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_creation_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_tounit_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_variable_kind_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_variable_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_variable_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_variable_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_handle_variable_target_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_list_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_list_variable_name_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_body_list_variable_type_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_body_symbol_v.localinput_set_body_list_variable_type_symbol_off_localinput_set_body_symbol sym_lsb
;;

let localinput_set_fence_basic_numerical_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_numerical_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_float_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_float_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_integer_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_word_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_category_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_category_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_sector_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_database_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_database_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_databox_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_domain_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_external_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_external_name_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_external_variable_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_file_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_file_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_function_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_function_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_module_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_module_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_ondomain_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_operation_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_target_operand_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_cell_target_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_define_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_print_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_read_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_set_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_title_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_command_write_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_category_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_database_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_end_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_file_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_module_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_name_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_type_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_keyword_word_units_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_entity_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_kind_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_operator_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_context_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_context_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_entity_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_fence_variable_name_operator_symbol_off_localinput_set_symbol sym_lse = 
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
    Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_operator_symbol_off_localinput_set_fence_symbol sym_lsf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_symbol_off_localinput_set_symbol = function
  | Localinput_set_symbol_t.Localinput_set_body_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_symbol_off_localinput_set_symbol = function
  | Localinput_set_symbol_t.Localinput_set_fence_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_block_define_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_define_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_cofactor_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_cofactor_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_print_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_print_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_read_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_read_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_set_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_set_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_set_alternative_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_set_alternative_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_title_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_title_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_variable_context_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_context_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_variable_external_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_external_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_variable_operator_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_operator_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_variable_target_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_target_constructor sym_lsb
    end
;;

let is_localinput_set_body_block_write_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_block_write_constructor sym_lsb
    end
;;

let is_localinput_set_body_box_type_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_box_type_constructor sym_lsb
    end
;;

let is_localinput_set_body_box_units_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_box_units_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_cofactor_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_cofactor_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_define_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_read_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_read_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_set_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_set_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_title_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_title_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_tounit_print_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_command_tounit_write_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_write_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_context_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_context_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_external_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_external_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_operator_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_operator_constructor sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_target_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_target_constructor sym_lsb
    end
;;

let is_localinput_set_body_list_variable_name_external_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_list_variable_name_external_constructor sym_lsb
    end
;;

let is_localinput_set_body_list_variable_type_constructor sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_body_symbol_v.is_localinput_set_body_list_variable_type_constructor sym_lsb
    end
;;

let is_localinput_set_fence_basic_float_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_float_constructor sym_lsf
    end
;;

let is_localinput_set_fence_basic_integer_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_integer_constructor sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_anycase_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_anycase_constructor sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_capitalized_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_capitalized_constructor sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_lowercase_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_uppercase_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_uppercase_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_category_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_category_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_cofactor_basic_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_cofactor_basic_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_cofactor_entity_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_cofactor_entity_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_sector_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_sector_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_database_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_database_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_databox_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_databox_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_domain_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_domain_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_name_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_name_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_variable_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_variable_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_file_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_file_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_function_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_function_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_module_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_module_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_ondomain_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_ondomain_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_operation_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_operation_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_target_operand_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_target_operand_constructor sym_lsf
    end
;;

let is_localinput_set_fence_cell_target_operator_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_target_operator_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_define_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_define_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_print_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_print_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_read_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_read_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_set_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_set_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_stop_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_stop_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_title_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_title_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_write_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_write_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_external_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_operator_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_target_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_category_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_category_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_basic_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_entity_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cpu_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cpu_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_database_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_database_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_databox_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_databox_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_debug_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_debug_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_domain_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_domain_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_end_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_end_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_external_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_external_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_file_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_file_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_module_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_module_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_name_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_name_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_ondomain_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_ondomain_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_operation_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_operation_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_operator_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_operator_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_sector_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_sector_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_statistics_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_statistics_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_type_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_type_constructor sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_units_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_units_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_external_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_external_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_implicit_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_implicit_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_target_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_target_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_operator_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_operator_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_context_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_context_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_external_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_external_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_implicit_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_target_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_operator_constructor sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
      let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
      Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_operator_constructor sym_lsf
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_set_body_block_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_define_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_define_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_cofactor_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_cofactor_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_print_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_print_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_read_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_read_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_set_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_set_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_title_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_title_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_variable_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_context_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_variable_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_external_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_variable_target_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_target_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_block_write_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_block_write_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_box_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_box_type_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_box_type_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_box_units_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_box_units_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_list_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_list_variable_name_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_body_list_variable_type_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_body_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsb = localinput_set_body_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_body_symbol_v.is_localinput_set_body_list_variable_type_symbol_off_localinput_set_body_symbol sym_lsb
    end
;;

let is_localinput_set_fence_basic_numerical_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_numerical_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_float_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_float_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_integer_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_category_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_category_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_sector_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_database_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_database_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_databox_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_domain_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_name_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_external_variable_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_file_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_file_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_function_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_function_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_module_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_module_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_ondomain_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_operation_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_target_operand_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_cell_target_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_category_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_database_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_end_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_file_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_module_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_name_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_type_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_keyword_word_units_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_context_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_context_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;

let is_localinput_set_fence_variable_name_operator_symbol_off_localinput_set_symbol sym_lse =
  if not (is_localinput_set_fence_symbol_off_localinput_set_symbol sym_lse)
  then false
  else
    begin
  let sym_lsf = localinput_set_fence_symbol_off_localinput_set_symbol sym_lse in
  Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_operator_symbol_off_localinput_set_fence_symbol sym_lsf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_symbol_of_localinput_set_body_symbol sym_lsb = 
  Localinput_set_symbol_t.Localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf = 
  Localinput_set_symbol_t.Localinput_set_fence_symbol sym_lsf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_set_symbol_of_localinput_set_body_block_symbol sym_lbb = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_define_symbol sym_lbd = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_define_symbol sym_lbd in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_cofactor_symbol sym_lbc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_cofactor_symbol sym_lbc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_print_symbol sym_lbp = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_print_symbol sym_lbp in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_read_symbol sym_lbr = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_read_symbol sym_lbr in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_set_symbol sym_lbs = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_set_symbol sym_lbs in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_set_alternative_symbol sym_lsa = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_set_alternative_symbol sym_lsa in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_title_symbol sym_lbt = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_title_symbol sym_lbt in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_variable_context_symbol sym_lvc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_variable_context_symbol sym_lvc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_variable_external_symbol sym_lve = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_variable_external_symbol sym_lve in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_variable_operator_symbol sym_lvo = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_variable_operator_symbol sym_lvo in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_variable_target_symbol sym_lvt = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_variable_target_symbol sym_lvt in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_block_write_symbol sym_lbw = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_block_write_symbol sym_lbw in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_box_symbol sym_lbb = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_box_symbol sym_lbb in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_box_type_symbol sym_lbt = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_box_type_symbol sym_lbt in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_box_units_symbol sym_lbu = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_box_units_symbol sym_lbu in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_cofactor_symbol sym_lhc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_cofactor_symbol sym_lhc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_symbol sym_lhc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_symbol sym_lhc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_list_symbol sym_lbl = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_list_symbol sym_lbl in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_list_variable_name_external_symbol sym_lne = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_list_variable_name_external_symbol sym_lne in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_body_list_variable_type_symbol sym_lvt = 
  let sym_lsb = Localinput_set_body_symbol_v.localinput_set_body_symbol_of_localinput_set_body_list_variable_type_symbol sym_lvt in
    localinput_set_symbol_of_localinput_set_body_symbol sym_lsb
;;

let localinput_set_symbol_of_localinput_set_fence_basic_numerical_symbol sym_lbn = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_numerical_symbol sym_lbn in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_float_symbol sym_lbf = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_float_symbol sym_lbf in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_integer_symbol sym_lbi = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_integer_symbol sym_lbi in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_word_symbol sym_lbw = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_word_symbol sym_lbw in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_word_anycase_symbol sym_lwa = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_word_anycase_symbol sym_lwa in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_word_capitalized_symbol sym_lwc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_word_capitalized_symbol sym_lwc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_word_lowercase_symbol sym_lwl = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_word_lowercase_symbol sym_lwl in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_basic_word_uppercase_symbol sym_lwu = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_basic_word_uppercase_symbol sym_lwu in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_symbol sym_lfc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_symbol sym_lfc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_category_symbol sym_lcc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_category_symbol sym_lcc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_cofactor_basic_symbol sym_lcb = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_cofactor_basic_symbol sym_lcb in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_cofactor_entity_symbol sym_lce = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_cofactor_entity_symbol sym_lce in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_context_symbol sym_lcc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_context_symbol sym_lcc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_sector_symbol sym_lcs = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_sector_symbol sym_lcs in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_database_symbol sym_lcd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_database_symbol sym_lcd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_databox_symbol sym_lcd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_databox_symbol sym_lcd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_domain_symbol sym_lcd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_domain_symbol sym_lcd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_external_context_symbol sym_lec = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_external_context_symbol sym_lec in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_external_name_symbol sym_len = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_external_name_symbol sym_len in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_external_variable_symbol sym_lev = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_external_variable_symbol sym_lev in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_file_symbol sym_lcf = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_file_symbol sym_lcf in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_function_symbol sym_lcf = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_function_symbol sym_lcf in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_module_symbol sym_lcm = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_module_symbol sym_lcm in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_ondomain_symbol sym_lco = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_ondomain_symbol sym_lco in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_operation_symbol sym_lco = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_operation_symbol sym_lco in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_target_operand_symbol sym_lto = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_target_operand_symbol sym_lto in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_cell_target_operator_symbol sym_lto = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_cell_target_operator_symbol sym_lto in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_symbol sym_lfk in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_define_symbol sym_lcd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_define_symbol sym_lcd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_print_symbol sym_lcp = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_print_symbol sym_lcp in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_read_symbol sym_lcr = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_read_symbol sym_lcr in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_set_symbol sym_lcs = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_set_symbol sym_lcs in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_stop_symbol sym_lcs = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_stop_symbol sym_lcs in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_title_symbol sym_lct = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_title_symbol sym_lct in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_command_write_symbol sym_lcw = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_command_write_symbol sym_lcw in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_variable_kind_context_symbol sym_lkc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_variable_kind_context_symbol sym_lkc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_variable_kind_external_symbol sym_lke = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_variable_kind_external_symbol sym_lke in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_variable_kind_operator_symbol sym_lko = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_variable_kind_operator_symbol sym_lko in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_variable_kind_target_symbol sym_lkt = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_variable_kind_target_symbol sym_lkt in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_category_symbol sym_lwc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_category_symbol sym_lwc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_cofactor_symbol sym_lwc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_cofactor_symbol sym_lwc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_cofactor_basic_symbol sym_lcb = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_cofactor_basic_symbol sym_lcb in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_cofactor_entity_symbol sym_lce = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_cofactor_entity_symbol sym_lce in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_context_symbol sym_lwc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_context_symbol sym_lwc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_cpu_symbol sym_lwc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_cpu_symbol sym_lwc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_database_symbol sym_lwd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_database_symbol sym_lwd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_databox_symbol sym_lwd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_databox_symbol sym_lwd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_debug_symbol sym_lwd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_debug_symbol sym_lwd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_domain_symbol sym_lwd = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_domain_symbol sym_lwd in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_end_symbol sym_lwe = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_end_symbol sym_lwe in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_external_context_symbol sym_lec = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_external_context_symbol sym_lec in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_file_symbol sym_lwf = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_file_symbol sym_lwf in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_module_symbol sym_lwm = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_module_symbol sym_lwm in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_name_symbol sym_lwn = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_name_symbol sym_lwn in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_ondomain_symbol sym_lwo = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_ondomain_symbol sym_lwo in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_operation_symbol sym_lwo = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_operation_symbol sym_lwo in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_operator_symbol sym_lwo = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_operator_symbol sym_lwo in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_sector_symbol sym_lws = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_sector_symbol sym_lws in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_statistics_symbol sym_lws = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_statistics_symbol sym_lws in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_type_symbol sym_lwt = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_type_symbol sym_lwt in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_keyword_word_units_symbol sym_lwu = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_keyword_word_units_symbol sym_lwu in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_symbol sym_lvk = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_symbol sym_lvk in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_context_symbol sym_lkc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_context_symbol sym_lkc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_entity_symbol sym_lke = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_entity_symbol sym_lke in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_entity_external_symbol sym_lee = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_entity_external_symbol sym_lee in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_entity_implicit_symbol sym_lei = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_entity_implicit_symbol sym_lei in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_entity_target_symbol sym_let = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_entity_target_symbol sym_let in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_kind_operator_symbol sym_lko = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_kind_operator_symbol sym_lko in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_symbol sym_lvn = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_symbol sym_lvn in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_context_symbol sym_lnc = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_context_symbol sym_lnc in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_entity_symbol sym_lne = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_entity_symbol sym_lne in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_entity_external_symbol sym_lee = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_entity_external_symbol sym_lee in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol sym_lei = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol sym_lei in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_entity_target_symbol sym_let = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_entity_target_symbol sym_let in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;

let localinput_set_symbol_of_localinput_set_fence_variable_name_operator_symbol sym_lno = 
  let sym_lsf = Localinput_set_fence_symbol_v.localinput_set_fence_symbol_of_localinput_set_fence_variable_name_operator_symbol sym_lno in
    localinput_set_symbol_of_localinput_set_fence_symbol sym_lsf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_block_define_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_define_constructor s);;

let localinput_set_body_block_cofactor_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_cofactor_constructor s);;

let localinput_set_body_block_print_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_print_constructor s);;

let localinput_set_body_block_read_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_read_constructor s);;

let localinput_set_body_block_set_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_set_constructor s);;

let localinput_set_body_block_set_alternative_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_set_alternative_constructor s);;

let localinput_set_body_block_title_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_title_constructor s);;

let localinput_set_body_block_variable_context_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_variable_context_constructor s);;

let localinput_set_body_block_variable_external_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_variable_external_constructor s);;

let localinput_set_body_block_variable_operator_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_variable_operator_constructor s);;

let localinput_set_body_block_variable_target_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_variable_target_constructor s);;

let localinput_set_body_block_write_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_block_write_constructor s);;

let localinput_set_body_box_type_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_box_type_constructor s);;

let localinput_set_body_box_units_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_box_units_constructor s);;

let localinput_set_body_handle_cofactor_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_cofactor_constructor s);;

let localinput_set_body_handle_command_creation_define_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_define_constructor s);;

let localinput_set_body_handle_command_creation_read_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_read_constructor s);;

let localinput_set_body_handle_command_creation_set_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_set_constructor s);;

let localinput_set_body_handle_command_creation_title_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_creation_title_constructor s);;

let localinput_set_body_handle_command_tounit_print_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_tounit_print_constructor s);;

let localinput_set_body_handle_command_tounit_write_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_command_tounit_write_constructor s);;

let localinput_set_body_handle_variable_context_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_variable_context_constructor s);;

let localinput_set_body_handle_variable_external_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_variable_external_constructor s);;

let localinput_set_body_handle_variable_operator_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_variable_operator_constructor s);;

let localinput_set_body_handle_variable_target_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_handle_variable_target_constructor s);;

let localinput_set_body_list_variable_name_external_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_list_variable_name_external_constructor s);;

let localinput_set_body_list_variable_type_constructor s = localinput_set_symbol_of_localinput_set_body_symbol (Localinput_set_body_symbol_v.localinput_set_body_list_variable_type_constructor s);;

let localinput_set_fence_basic_float_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_float_constructor s);;

let localinput_set_fence_basic_integer_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_integer_constructor s);;

let localinput_set_fence_basic_word_anycase_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_anycase_constructor s);;

let localinput_set_fence_basic_word_capitalized_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_capitalized_constructor s);;

let localinput_set_fence_basic_word_lowercase_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_lowercase_constructor s);;

let localinput_set_fence_basic_word_uppercase_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_basic_word_uppercase_constructor s);;

let localinput_set_fence_cell_category_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_category_constructor s);;

let localinput_set_fence_cell_cofactor_basic_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_cofactor_basic_constructor s);;

let localinput_set_fence_cell_cofactor_entity_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_cofactor_entity_constructor s);;

let localinput_set_fence_cell_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_context_constructor s);;

let localinput_set_fence_cell_sector_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_sector_constructor s);;

let localinput_set_fence_cell_database_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_database_constructor s);;

let localinput_set_fence_cell_databox_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_databox_constructor s);;

let localinput_set_fence_cell_domain_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_domain_constructor s);;

let localinput_set_fence_cell_external_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_context_constructor s);;

let localinput_set_fence_cell_external_name_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_name_constructor s);;

let localinput_set_fence_cell_external_variable_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_external_variable_constructor s);;

let localinput_set_fence_cell_file_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_file_constructor s);;

let localinput_set_fence_cell_function_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_function_constructor s);;

let localinput_set_fence_cell_module_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_module_constructor s);;

let localinput_set_fence_cell_ondomain_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_ondomain_constructor s);;

let localinput_set_fence_cell_operation_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_operation_constructor s);;

let localinput_set_fence_cell_target_operand_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_target_operand_constructor s);;

let localinput_set_fence_cell_target_operator_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_cell_target_operator_constructor s);;

let localinput_set_fence_keyword_command_define_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_define_constructor s);;

let localinput_set_fence_keyword_command_print_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_print_constructor s);;

let localinput_set_fence_keyword_command_read_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_read_constructor s);;

let localinput_set_fence_keyword_command_set_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_set_constructor s);;

let localinput_set_fence_keyword_command_stop_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_stop_constructor s);;

let localinput_set_fence_keyword_command_title_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_title_constructor s);;

let localinput_set_fence_keyword_command_write_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_command_write_constructor s);;

let localinput_set_fence_keyword_variable_kind_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_context_constructor s);;

let localinput_set_fence_keyword_variable_kind_external_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_external_constructor s);;

let localinput_set_fence_keyword_variable_kind_operator_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_operator_constructor s);;

let localinput_set_fence_keyword_variable_kind_target_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_variable_kind_target_constructor s);;

let localinput_set_fence_keyword_word_category_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_category_constructor s);;

let localinput_set_fence_keyword_word_cofactor_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_constructor s);;

let localinput_set_fence_keyword_word_cofactor_basic_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_basic_constructor s);;

let localinput_set_fence_keyword_word_cofactor_entity_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cofactor_entity_constructor s);;

let localinput_set_fence_keyword_word_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_context_constructor s);;

let localinput_set_fence_keyword_word_cpu_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_cpu_constructor s);;

let localinput_set_fence_keyword_word_database_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_database_constructor s);;

let localinput_set_fence_keyword_word_databox_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_databox_constructor s);;

let localinput_set_fence_keyword_word_debug_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_debug_constructor s);;

let localinput_set_fence_keyword_word_domain_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_domain_constructor s);;

let localinput_set_fence_keyword_word_end_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_end_constructor s);;

let localinput_set_fence_keyword_word_external_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_external_context_constructor s);;

let localinput_set_fence_keyword_word_file_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_file_constructor s);;

let localinput_set_fence_keyword_word_module_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_module_constructor s);;

let localinput_set_fence_keyword_word_name_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_name_constructor s);;

let localinput_set_fence_keyword_word_ondomain_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_ondomain_constructor s);;

let localinput_set_fence_keyword_word_operation_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_operation_constructor s);;

let localinput_set_fence_keyword_word_operator_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_operator_constructor s);;

let localinput_set_fence_keyword_word_sector_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_sector_constructor s);;

let localinput_set_fence_keyword_word_statistics_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_statistics_constructor s);;

let localinput_set_fence_keyword_word_type_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_type_constructor s);;

let localinput_set_fence_keyword_word_units_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_keyword_word_units_constructor s);;

let localinput_set_fence_variable_kind_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_context_constructor s);;

let localinput_set_fence_variable_kind_entity_external_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_external_constructor s);;

let localinput_set_fence_variable_kind_entity_implicit_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_implicit_constructor s);;

let localinput_set_fence_variable_kind_entity_target_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_entity_target_constructor s);;

let localinput_set_fence_variable_kind_operator_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_kind_operator_constructor s);;

let localinput_set_fence_variable_name_context_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_context_constructor s);;

let localinput_set_fence_variable_name_entity_external_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_external_constructor s);;

let localinput_set_fence_variable_name_entity_implicit_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor s);;

let localinput_set_fence_variable_name_entity_target_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_entity_target_constructor s);;

let localinput_set_fence_variable_name_operator_constructor s = localinput_set_symbol_of_localinput_set_fence_symbol (Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_operator_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_symbol_of_localinput_set_body_symbol
      (Localinput_set_body_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_symbol:Localinput_set_body_symbol_v.ml:make" ->
  try localinput_set_symbol_of_localinput_set_fence_symbol
      (Localinput_set_fence_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_symbol:Localinput_set_fence_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_symbol:Localinput_set_symbol_v.ml:make"
;;


(** Localinput_set_symbol_v at 11:16:48 on 15 May 2017. created by version v2.4 of generator *)



