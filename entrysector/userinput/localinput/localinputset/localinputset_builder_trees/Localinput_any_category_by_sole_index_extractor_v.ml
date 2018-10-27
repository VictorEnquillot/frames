(** {6 Localinput_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Localinput_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Localinput_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Localinput_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Localinput_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Localinput_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Localinput_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Localinput_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_localinput_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_context_symbol_off_localinput_symbol
  | "is_localinput_set_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_symbol_off_localinput_symbol
  | "is_localinput_context_domain_constructor" ->
     Localinput_symbol_v.is_localinput_context_domain_constructor
  | "is_localinput_context_inputbase_constructor" ->
     Localinput_symbol_v.is_localinput_context_inputbase_constructor
  | "is_localinput_context_inputbox_constructor" ->
     Localinput_symbol_v.is_localinput_context_inputbox_constructor
  | "is_localinput_context_sector_constructor" ->
     Localinput_symbol_v.is_localinput_context_sector_constructor
  | "is_localinput_set_body_block_define_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_define_constructor
  | "is_localinput_set_body_block_cofactor_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_cofactor_constructor
  | "is_localinput_set_body_block_print_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_print_constructor
  | "is_localinput_set_body_block_read_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_read_constructor
  | "is_localinput_set_body_block_set_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_set_constructor
  | "is_localinput_set_body_block_set_alternative_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_set_alternative_constructor
  | "is_localinput_set_body_block_title_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_title_constructor
  | "is_localinput_set_body_block_variable_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_context_constructor
  | "is_localinput_set_body_block_variable_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_external_constructor
  | "is_localinput_set_body_block_variable_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_operator_constructor
  | "is_localinput_set_body_block_variable_target_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_target_constructor
  | "is_localinput_set_body_block_write_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_block_write_constructor
  | "is_localinput_set_body_box_type_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_box_type_constructor
  | "is_localinput_set_body_box_units_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_box_units_constructor
  | "is_localinput_set_body_handle_cofactor_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_cofactor_constructor
  | "is_localinput_set_body_handle_command_creation_define_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor
  | "is_localinput_set_body_handle_command_creation_read_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_read_constructor
  | "is_localinput_set_body_handle_command_creation_set_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_set_constructor
  | "is_localinput_set_body_handle_command_creation_title_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_title_constructor
  | "is_localinput_set_body_handle_command_tounit_print_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor
  | "is_localinput_set_body_handle_command_tounit_write_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_write_constructor
  | "is_localinput_set_body_handle_variable_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_context_constructor
  | "is_localinput_set_body_handle_variable_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_external_constructor
  | "is_localinput_set_body_handle_variable_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_operator_constructor
  | "is_localinput_set_body_handle_variable_target_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_target_constructor
  | "is_localinput_set_body_list_variable_name_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_list_variable_name_external_constructor
  | "is_localinput_set_body_list_variable_type_constructor" ->
     Localinput_symbol_v.is_localinput_set_body_list_variable_type_constructor
  | "is_localinput_set_fence_basic_float_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_float_constructor
  | "is_localinput_set_fence_basic_integer_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_integer_constructor
  | "is_localinput_set_fence_basic_word_anycase_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_anycase_constructor
  | "is_localinput_set_fence_basic_word_capitalized_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_capitalized_constructor
  | "is_localinput_set_fence_basic_word_lowercase_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor
  | "is_localinput_set_fence_basic_word_uppercase_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_uppercase_constructor
  | "is_localinput_set_fence_cell_category_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_category_constructor
  | "is_localinput_set_fence_cell_cofactor_basic_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_basic_constructor
  | "is_localinput_set_fence_cell_cofactor_entity_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_entity_constructor
  | "is_localinput_set_fence_cell_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_context_constructor
  | "is_localinput_set_fence_cell_sector_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_sector_constructor
  | "is_localinput_set_fence_cell_database_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_database_constructor
  | "is_localinput_set_fence_cell_databox_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_databox_constructor
  | "is_localinput_set_fence_cell_domain_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_domain_constructor
  | "is_localinput_set_fence_cell_external_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_context_constructor
  | "is_localinput_set_fence_cell_external_name_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_name_constructor
  | "is_localinput_set_fence_cell_external_variable_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_variable_constructor
  | "is_localinput_set_fence_cell_file_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_file_constructor
  | "is_localinput_set_fence_cell_function_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_function_constructor
  | "is_localinput_set_fence_cell_module_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_module_constructor
  | "is_localinput_set_fence_cell_ondomain_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_ondomain_constructor
  | "is_localinput_set_fence_cell_operation_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_operation_constructor
  | "is_localinput_set_fence_cell_target_operand_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_target_operand_constructor
  | "is_localinput_set_fence_cell_target_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_target_operator_constructor
  | "is_localinput_set_fence_keyword_command_define_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_define_constructor
  | "is_localinput_set_fence_keyword_command_print_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_print_constructor
  | "is_localinput_set_fence_keyword_command_read_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_read_constructor
  | "is_localinput_set_fence_keyword_command_set_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_set_constructor
  | "is_localinput_set_fence_keyword_command_stop_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_stop_constructor
  | "is_localinput_set_fence_keyword_command_title_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_title_constructor
  | "is_localinput_set_fence_keyword_command_write_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_write_constructor
  | "is_localinput_set_fence_keyword_variable_kind_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_constructor
  | "is_localinput_set_fence_keyword_variable_kind_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_constructor
  | "is_localinput_set_fence_keyword_variable_kind_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_constructor
  | "is_localinput_set_fence_keyword_variable_kind_target_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_constructor
  | "is_localinput_set_fence_keyword_word_category_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_category_constructor
  | "is_localinput_set_fence_keyword_word_cofactor_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_constructor
  | "is_localinput_set_fence_keyword_word_cofactor_basic_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_constructor
  | "is_localinput_set_fence_keyword_word_cofactor_entity_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_constructor
  | "is_localinput_set_fence_keyword_word_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_context_constructor
  | "is_localinput_set_fence_keyword_word_cpu_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cpu_constructor
  | "is_localinput_set_fence_keyword_word_database_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_database_constructor
  | "is_localinput_set_fence_keyword_word_databox_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_databox_constructor
  | "is_localinput_set_fence_keyword_word_debug_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_debug_constructor
  | "is_localinput_set_fence_keyword_word_domain_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_domain_constructor
  | "is_localinput_set_fence_keyword_word_end_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_end_constructor
  | "is_localinput_set_fence_keyword_word_external_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_external_context_constructor
  | "is_localinput_set_fence_keyword_word_file_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_file_constructor
  | "is_localinput_set_fence_keyword_word_module_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_module_constructor
  | "is_localinput_set_fence_keyword_word_name_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_name_constructor
  | "is_localinput_set_fence_keyword_word_ondomain_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_ondomain_constructor
  | "is_localinput_set_fence_keyword_word_operation_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_operation_constructor
  | "is_localinput_set_fence_keyword_word_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_operator_constructor
  | "is_localinput_set_fence_keyword_word_sector_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_sector_constructor
  | "is_localinput_set_fence_keyword_word_statistics_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_statistics_constructor
  | "is_localinput_set_fence_keyword_word_type_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_type_constructor
  | "is_localinput_set_fence_keyword_word_units_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_units_constructor
  | "is_localinput_set_fence_variable_kind_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_context_constructor
  | "is_localinput_set_fence_variable_kind_entity_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_external_constructor
  | "is_localinput_set_fence_variable_kind_entity_implicit_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_implicit_constructor
  | "is_localinput_set_fence_variable_kind_entity_target_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_target_constructor
  | "is_localinput_set_fence_variable_kind_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_operator_constructor
  | "is_localinput_set_fence_variable_name_context_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_context_constructor
  | "is_localinput_set_fence_variable_name_entity_external_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_external_constructor
  | "is_localinput_set_fence_variable_name_entity_implicit_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_constructor
  | "is_localinput_set_fence_variable_name_entity_target_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor
  | "is_localinput_set_fence_variable_name_operator_constructor" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_operator_constructor
  | "is_localinput_context_domain_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_context_domain_symbol_off_localinput_symbol
  | "is_localinput_context_inputbase_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_context_inputbase_symbol_off_localinput_symbol
  | "is_localinput_context_inputbox_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_context_inputbox_symbol_off_localinput_symbol
  | "is_localinput_context_sector_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_context_sector_symbol_off_localinput_symbol
  | "is_localinput_set_body_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_define_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_define_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_cofactor_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_cofactor_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_print_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_print_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_read_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_read_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_set_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_set_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_set_alternative_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_set_alternative_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_title_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_title_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_variable_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_context_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_variable_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_external_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_variable_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_operator_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_variable_target_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_variable_target_symbol_off_localinput_symbol
  | "is_localinput_set_body_block_write_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_block_write_symbol_off_localinput_symbol
  | "is_localinput_set_body_box_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_box_symbol_off_localinput_symbol
  | "is_localinput_set_body_box_type_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_box_type_symbol_off_localinput_symbol
  | "is_localinput_set_body_box_units_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_box_units_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_cofactor_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_cofactor_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_creation_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_variable_kind_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_kind_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_variable_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_context_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_variable_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_external_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_variable_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_operator_symbol_off_localinput_symbol
  | "is_localinput_set_body_handle_variable_target_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_handle_variable_target_symbol_off_localinput_symbol
  | "is_localinput_set_body_list_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_list_symbol_off_localinput_symbol
  | "is_localinput_set_body_list_variable_name_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_list_variable_name_external_symbol_off_localinput_symbol
  | "is_localinput_set_body_list_variable_type_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_body_list_variable_type_symbol_off_localinput_symbol
  | "is_localinput_set_fence_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_numerical_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_numerical_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_float_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_float_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_integer_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_integer_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_word_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol
  | "is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_category_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_category_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_sector_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_sector_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_database_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_database_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_databox_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_databox_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_domain_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_domain_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_external_name_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_name_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_external_variable_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_external_variable_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_file_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_file_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_function_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_function_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_module_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_module_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_ondomain_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_ondomain_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_target_operand_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_target_operand_symbol_off_localinput_symbol
  | "is_localinput_set_fence_cell_target_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_cell_target_operator_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_define_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_define_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_print_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_print_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_read_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_read_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_set_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_set_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_title_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_title_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_command_write_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_command_write_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_category_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_category_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_database_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_database_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_end_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_end_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_file_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_file_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_module_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_module_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_name_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_name_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_type_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_type_symbol_off_localinput_symbol
  | "is_localinput_set_fence_keyword_word_units_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_keyword_word_units_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_context_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_context_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_symbol
  | "is_localinput_set_fence_variable_name_operator_symbol_off_localinput_symbol" ->
     Localinput_symbol_v.is_localinput_set_fence_variable_name_operator_symbol_off_localinput_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_localinput_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Localinput_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_localinput_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_localinput_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_localinput_symbol_list_of_string_predicate_of_sole_index 
      str_pre soi_any
  in
  
  if soi_n_des_dol = []
  then
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "an element were stored in register >%s<@.      for Predicate >%s<@.      with a Sole_index included in path %s" 
	 main_register_name
	 str_pre 
	 (Sole_index_v.name soi_any)
      ) 
      (Format.sprintf "NONE@.    Here is a dump of main_register:\
       @. %s@.    Register length =%i" 
		(main_register_dump ()) 
		(Register_v.length main_register) 
      )
      (Format.sprintf "Check whether the Entity defined by Predicate:@.     >%s<@.      has been stored when created" str_pre)
  else
    begin  
      let inc_dol =
	try Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol
	    
	with
	| Failure "Empty_list:List_v.element_off_one_element_list"
	| Failure "Empty_doublet_list:Doublet_list_v.filter_if_left" ->
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      (Format.sprintf "an element existed for Predicate >%s<@.    with Sole_index inside path %s" 
		 str_pre 
		 (Sole_index_v.name soi_any)
	      ) 
	      (Format.sprintf "it is EMPTY@.    Here is a dump of main_register:\
               @. %s@.    Register length =%i" 
			(main_register_dump ()) 
			(Register_v.length main_register) 
	      )
              "Check that it has been already stored in Localinput_symbol_by_sole_index_register"
      in
      
      try List_v.element_off_one_element_list inc_dol
      with
      | Failure "Empty_list:List_v.element_off_one_element_list"
      | Failure "Several_elements:List_v.element_off_one_element_list" ->
          let str_l = Register_v.string_list_of_register 
	      main_register_name_of_key
	      main_register_name_of_value 
	      main_register 
          in
          Error_messages_v.print_fatal_error nam_mod nam_fun
	    (Format.sprintf "At least One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
	       str_pre 
	       (Sole_index_v.name soi_any)
	    ) 
	    (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	       (Doublet_list_v.name_with_separator Sole_index_v.name Localinput_symbol_v.fullname ";\n   "
		  soi_n_des_dol
	       )
	    )
	    (Format.sprintf "Check Register content :@.    %s"
	       (List_v.name_with_separator (fun s->s) ";\n   " str_l)
	    )
    end
;;

let sole_index_of_string_predicate_off_sole_index str_pre soi_any =
  let soi_n_fss =
    sole_index_n_localinput_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let localinput_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_localinput_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Localinput_context_context_domain} *)

let localinput_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_context_domain_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_context_domain_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_context_domain_symbol_off_localinput_symbol des_pre
;;

let localinput_context_domain_name_off_sole_index soi_any =
  let soi_ldb = localinput_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_domain_symbol_off_sole_index soi_ldb in
  Localinput_context_domain_symbol_v.name sym_ldb
;;

let localinput_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_domain_symbol_off_sole_index soi_ldb in
  Localinput_context_domain_symbol_v.string_off sym_ldb
;;

let localinput_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = localinput_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_context_inputbase} *)

let localinput_context_inputbase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_context_inputbase_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_context_inputbase_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbase_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_context_inputbase_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_context_inputbase_symbol_off_localinput_symbol des_pre
;;

let localinput_context_inputbase_name_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbase_symbol_off_sole_index soi_ldb in
  Localinput_context_inputbase_symbol_v.name sym_ldb
;;

let localinput_context_inputbase_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbase_symbol_off_sole_index soi_ldb in
  Localinput_context_inputbase_symbol_v.string_off sym_ldb
;;

let localinput_context_inputbase_tag_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_context_inputbox} *)

let localinput_context_inputbox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_context_inputbox_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_context_inputbox_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbox_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_context_inputbox_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_context_inputbox_symbol_off_localinput_symbol des_pre
;;

let localinput_context_inputbox_name_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbox_symbol_off_sole_index soi_ldb in
  Localinput_context_inputbox_symbol_v.name sym_ldb
;;

let localinput_context_inputbox_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbox_symbol_off_sole_index soi_ldb in
  Localinput_context_inputbox_symbol_v.string_off sym_ldb
;;

let localinput_context_inputbox_tag_off_sole_index soi_any =
  let soi_ldb = localinput_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_inputbox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_context_sector} *)

let localinput_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_context_sector_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_context_sector_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_context_sector_symbol_off_localinput_symbol des_pre
;;

let localinput_context_sector_name_off_sole_index soi_any =
  let soi_ldb = localinput_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_sector_symbol_off_sole_index soi_ldb in
  Localinput_context_sector_symbol_v.name sym_ldb
;;

let localinput_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_sector_symbol_off_sole_index soi_ldb in
  Localinput_context_sector_symbol_v.string_off sym_ldb
;;

let localinput_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = localinput_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_context} *)

let localinput_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_context_symbol_off_localinput_symbol des_pre
;;

let localinput_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_symbol_off_sole_index soi_ldb in
  Localinput_context_symbol_v.name sym_ldb
;;

let localinput_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_symbol_off_sole_index soi_ldb in
  Localinput_context_symbol_v.string_off sym_ldb
;;

let localinput_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_cofactor} *)

let localinput_set_body_block_cofactor_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_cofactor_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_cofactor_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_cofactor_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_cofactor_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_cofactor_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_cofactor_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_cofactor_symbol_v.name sym_ldb
;;

let localinput_set_body_block_cofactor_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_cofactor_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_cofactor_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_cofactor_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_define} *)

let localinput_set_body_block_define_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_define_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_define_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_define_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_define_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_define_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_define_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_define_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_define_symbol_v.name sym_ldb
;;

let localinput_set_body_block_define_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_define_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_define_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_define_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_define_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_print} *)

let localinput_set_body_block_print_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_print_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_print_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_print_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_print_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_print_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_print_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_print_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_print_symbol_v.name sym_ldb
;;

let localinput_set_body_block_print_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_print_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_print_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_print_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_print_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_read} *)

let localinput_set_body_block_read_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_read_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_read_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_read_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_read_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_read_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_read_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_read_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_read_symbol_v.name sym_ldb
;;

let localinput_set_body_block_read_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_read_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_read_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_read_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_read_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_set_alternative} *)

let localinput_set_body_block_set_alternative_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_set_alternative_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_set_alternative_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_alternative_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_set_alternative_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_set_alternative_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_set_alternative_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_alternative_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_alternative_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_set_alternative_symbol_v.name sym_ldb
;;

let localinput_set_body_block_set_alternative_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_alternative_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_alternative_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_set_alternative_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_set_alternative_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_alternative_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_alternative_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_set} *)

let localinput_set_body_block_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_set_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_set_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_set_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_set_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_set_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_set_symbol_v.name sym_ldb
;;

let localinput_set_body_block_set_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_set_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_set_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block} *)

let localinput_set_body_block_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_symbol_v.name sym_ldb
;;

let localinput_set_body_block_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_title} *)

let localinput_set_body_block_title_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_title_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_title_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_title_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_title_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_title_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_title_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_title_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_title_symbol_v.name sym_ldb
;;

let localinput_set_body_block_title_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_title_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_title_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_title_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_title_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_variable_context} *)

let localinput_set_body_block_variable_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_variable_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_variable_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_variable_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_variable_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_variable_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_context_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_context_symbol_v.name sym_ldb
;;

let localinput_set_body_block_variable_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_context_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_context_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_variable_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_variable_external} *)

let localinput_set_body_block_variable_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_variable_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_variable_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_variable_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_variable_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_variable_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_external_symbol_v.name sym_ldb
;;

let localinput_set_body_block_variable_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_external_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_variable_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_variable_operator} *)

let localinput_set_body_block_variable_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_variable_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_variable_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_variable_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_variable_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_variable_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_operator_symbol_v.name sym_ldb
;;

let localinput_set_body_block_variable_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_variable_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_variable_target} *)

let localinput_set_body_block_variable_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_variable_target_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_variable_target_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_variable_target_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_variable_target_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_variable_target_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_target_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_target_symbol_v.name sym_ldb
;;

let localinput_set_body_block_variable_target_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_target_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_variable_target_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_variable_target_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_variable_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_block_write} *)

let localinput_set_body_block_write_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_block_write_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_block_write_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_write_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_block_write_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_block_write_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_block_write_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_write_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_write_symbol_v.name sym_ldb
;;

let localinput_set_body_block_write_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_write_symbol_off_sole_index soi_ldb in
  Localinput_set_body_block_write_symbol_v.string_off sym_ldb
;;

let localinput_set_body_block_write_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_block_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_block_write_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_box} *)

let localinput_set_body_box_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_box_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_box_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_box_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_box_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_box_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_symbol_v.name sym_ldb
;;

let localinput_set_body_box_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_symbol_v.string_off sym_ldb
;;

let localinput_set_body_box_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_box_type} *)

let localinput_set_body_box_type_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_box_type_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_box_type_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_type_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_box_type_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_box_type_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_box_type_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_type_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_type_symbol_v.name sym_ldb
;;

let localinput_set_body_box_type_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_type_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_type_symbol_v.string_off sym_ldb
;;

let localinput_set_body_box_type_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_type_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_box_units} *)

let localinput_set_body_box_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_box_units_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_box_units_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_box_units_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_box_units_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_box_units_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_units_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_units_symbol_v.name sym_ldb
;;

let localinput_set_body_box_units_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_units_symbol_off_sole_index soi_ldb in
  Localinput_set_body_box_units_symbol_v.string_off sym_ldb
;;

let localinput_set_body_box_units_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_box_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_box_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_cofactor} *)

let localinput_set_body_handle_cofactor_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_cofactor_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_cofactor_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_cofactor_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_cofactor_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_cofactor_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_cofactor_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_cofactor_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_cofactor_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_cofactor_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_cofactor_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_cofactor_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_creation_define} *)

let localinput_set_body_handle_command_creation_define_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_creation_define_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_define_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_creation_define_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_define_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_define_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_creation_define_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_define_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_define_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_creation_define_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_define_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_creation_read} *)

let localinput_set_body_handle_command_creation_read_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_creation_read_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_read_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_creation_read_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_creation_read_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_read_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_read_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_creation_read_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_read_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_read_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_creation_read_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_read_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_creation_set} *)

let localinput_set_body_handle_command_creation_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_creation_set_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_creation_set_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_creation_set_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_set_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_set_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_creation_set_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_set_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_set_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_creation_set_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_creation} *)

let localinput_set_body_handle_command_creation_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_creation_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_creation_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_creation_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_creation_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_creation_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_creation_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_creation_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_creation_title} *)

let localinput_set_body_handle_command_creation_title_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_creation_title_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_title_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_creation_title_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_creation_title_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_title_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_title_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_creation_title_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_title_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_creation_title_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_creation_title_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_creation_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_creation_title_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command} *)

let localinput_set_body_handle_command_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_tounit_print} *)

let localinput_set_body_handle_command_tounit_print_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_tounit_print_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_print_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_tounit_print_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_tounit_print_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_print_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_print_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_tounit_print_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_print_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_print_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_tounit_print_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_print_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_tounit} *)

let localinput_set_body_handle_command_tounit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_tounit_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_tounit_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_tounit_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_tounit_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_command_tounit_write} *)

let localinput_set_body_handle_command_tounit_write_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_command_tounit_write_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_write_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_command_tounit_write_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_command_tounit_write_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_write_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_write_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_command_tounit_write_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_write_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_command_tounit_write_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_command_tounit_write_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_command_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_command_tounit_write_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle} *)

let localinput_set_body_handle_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_variable_context} *)

let localinput_set_body_handle_variable_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_variable_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_variable_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_variable_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_variable_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_variable_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_context_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_context_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_variable_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_context_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_context_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_variable_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_variable_external} *)

let localinput_set_body_handle_variable_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_variable_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_variable_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_variable_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_variable_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_variable_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_external_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_variable_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_external_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_variable_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_variable_kind} *)

let localinput_set_body_handle_variable_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_variable_kind_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_variable_kind_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_variable_kind_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_variable_kind_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_variable_kind_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_kind_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_variable_kind_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_kind_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_variable_kind_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_variable_operator} *)

let localinput_set_body_handle_variable_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_variable_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_variable_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_variable_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_variable_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_variable_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_operator_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_variable_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_variable_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_handle_variable_target} *)

let localinput_set_body_handle_variable_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_handle_variable_target_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_handle_variable_target_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_handle_variable_target_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_handle_variable_target_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_handle_variable_target_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_target_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_target_symbol_v.name sym_ldb
;;

let localinput_set_body_handle_variable_target_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_target_symbol_off_sole_index soi_ldb in
  Localinput_set_body_handle_variable_target_symbol_v.string_off sym_ldb
;;

let localinput_set_body_handle_variable_target_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_handle_variable_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_handle_variable_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_list} *)

let localinput_set_body_list_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_list_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_list_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_list_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_list_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_list_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_symbol_v.name sym_ldb
;;

let localinput_set_body_list_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_symbol_v.string_off sym_ldb
;;

let localinput_set_body_list_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_list_variable_name_external} *)

let localinput_set_body_list_variable_name_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_list_variable_name_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_list_variable_name_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_name_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_list_variable_name_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_list_variable_name_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_list_variable_name_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_name_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_name_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_variable_name_external_symbol_v.name sym_ldb
;;

let localinput_set_body_list_variable_name_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_name_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_name_external_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_variable_name_external_symbol_v.string_off sym_ldb
;;

let localinput_set_body_list_variable_name_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_name_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_name_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body_list_variable_type} *)

let localinput_set_body_list_variable_type_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_list_variable_type_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_list_variable_type_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_type_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_list_variable_type_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_list_variable_type_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_list_variable_type_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_type_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_variable_type_symbol_v.name sym_ldb
;;

let localinput_set_body_list_variable_type_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_type_symbol_off_sole_index soi_ldb in
  Localinput_set_body_list_variable_type_symbol_v.string_off sym_ldb
;;

let localinput_set_body_list_variable_type_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_list_variable_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_list_variable_type_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_body} *)

let localinput_set_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_body_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_body_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_body_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_body_symbol_off_localinput_symbol des_pre
;;

let localinput_set_body_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_symbol_off_sole_index soi_ldb in
  Localinput_set_body_symbol_v.name sym_ldb
;;

let localinput_set_body_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_symbol_off_sole_index soi_ldb in
  Localinput_set_body_symbol_v.string_off sym_ldb
;;

let localinput_set_body_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_float} *)

let localinput_set_fence_basic_float_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_float_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_float_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_float_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_float_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_float_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_float_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_float_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_float_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_float_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_float_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_float_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_float_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_float_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_float_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_integer} *)

let localinput_set_fence_basic_integer_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_integer_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_integer_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_integer_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_integer_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_integer_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_integer_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_integer_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_integer_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_integer_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_integer_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_integer_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_integer_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_numerical} *)

let localinput_set_fence_basic_numerical_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_numerical_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_numerical_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_numerical_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_numerical_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_numerical_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_numerical_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_numerical_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_numerical_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_numerical_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_numerical_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_numerical_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_word_anycase} *)

let localinput_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_word_anycase_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_word_anycase_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_word_anycase_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_anycase_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_word_anycase_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_anycase_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_word_anycase_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_anycase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_anycase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_word_capitalized} *)

let localinput_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_word_capitalized_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_word_capitalized_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_word_capitalized_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_capitalized_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_word_capitalized_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_capitalized_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_word_capitalized_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_capitalized_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_capitalized_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_word_lowercase} *)

let localinput_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_word_lowercase_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_word_lowercase_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_lowercase_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_word_lowercase_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_lowercase_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_word_lowercase_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_lowercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_lowercase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_word} *)

let localinput_set_fence_basic_word_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_word_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_word_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_word_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_word_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_word_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_word_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_word_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_basic_word_uppercase} *)

let localinput_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_basic_word_uppercase_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_basic_word_uppercase_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_basic_word_uppercase_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_uppercase_symbol_v.name sym_ldb
;;

let localinput_set_fence_basic_word_uppercase_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_basic_word_uppercase_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_basic_word_uppercase_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_basic_word_uppercase_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_basic_word_uppercase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_category} *)

let localinput_set_fence_cell_category_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_category_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_category_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_category_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_category_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_category_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_category_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_category_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_category_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_category_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_category_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_category_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_category_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_category_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_cofactor_basic} *)

let localinput_set_fence_cell_cofactor_basic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_cofactor_basic_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_basic_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_cofactor_basic_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_basic_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_cofactor_basic_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_cofactor_basic_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_basic_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_cofactor_basic_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_cofactor_basic_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_basic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_cofactor_entity} *)

let localinput_set_fence_cell_cofactor_entity_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_cofactor_entity_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_entity_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_cofactor_entity_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_cofactor_entity_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_cofactor_entity_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_cofactor_entity_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_cofactor_entity_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_cofactor_entity_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_context} *)

let localinput_set_fence_cell_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_database} *)

let localinput_set_fence_cell_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_database_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_database_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_database_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_database_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_database_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_database_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_database_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_database_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_database_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_database_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_database_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_databox} *)

let localinput_set_fence_cell_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_databox_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_databox_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_databox_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_databox_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_databox_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_databox_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_databox_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_databox_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_databox_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_databox_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_databox_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_domain} *)

let localinput_set_fence_cell_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_domain_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_domain_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_domain_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_domain_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_domain_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_domain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_domain_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_domain_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_domain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_domain_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_domain_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_external_context} *)

let localinput_set_fence_cell_external_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_external_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_external_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_external_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_external_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_external_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_external_name} *)

let localinput_set_fence_cell_external_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_external_name_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_external_name_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_external_name_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_external_name_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_external_name_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_name_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_external_name_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_name_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_external_name_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_external_variable} *)

let localinput_set_fence_cell_external_variable_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_external_variable_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_external_variable_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_variable_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_external_variable_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_external_variable_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_external_variable_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_variable_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_variable_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_external_variable_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_variable_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_external_variable_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_external_variable_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_external_variable_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_external_variable_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_file} *)

let localinput_set_fence_cell_file_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_file_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_file_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_file_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_file_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_file_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_file_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_file_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_file_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_file_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_file_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_file_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_file_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_file_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_function} *)

let localinput_set_fence_cell_function_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_function_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_function_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_function_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_function_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_function_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_function_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_function_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_function_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_function_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_function_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_function_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_function_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_function_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_function_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_function_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_function_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_module} *)

let localinput_set_fence_cell_module_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_module_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_module_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_module_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_module_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_module_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_module_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_module_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_module_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_module_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_module_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_module_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_module_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_module_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_ondomain} *)

let localinput_set_fence_cell_ondomain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_ondomain_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_ondomain_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_ondomain_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_ondomain_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_ondomain_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_ondomain_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_ondomain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_ondomain_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_ondomain_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_ondomain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_ondomain_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_ondomain_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_ondomain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_operation} *)

let localinput_set_fence_cell_operation_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_operation_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_operation_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_operation_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_operation_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_operation_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_operation_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_operation_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_operation_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_operation_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_operation_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_operation_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_sector} *)

let localinput_set_fence_cell_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_sector_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_sector_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_sector_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_sector_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_sector_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_sector_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_sector_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_sector_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_sector_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_sector_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_sector_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell} *)

let localinput_set_fence_cell_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_target_operand} *)

let localinput_set_fence_cell_target_operand_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_target_operand_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_target_operand_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operand_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_target_operand_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_target_operand_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_target_operand_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operand_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_target_operand_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_target_operand_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operand_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_target_operand_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_target_operand_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operand_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_cell_target_operator} *)

let localinput_set_fence_cell_target_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_cell_target_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_cell_target_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_cell_target_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_cell_target_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_cell_target_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_target_operator_symbol_v.name sym_ldb
;;

let localinput_set_fence_cell_target_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_cell_target_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_cell_target_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_cell_target_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_cell_target_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_define} *)

let localinput_set_fence_keyword_command_define_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_define_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_define_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_define_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_define_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_define_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_define_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_define_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_define_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_define_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_define_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_define_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_define_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_define_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_define_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_print} *)

let localinput_set_fence_keyword_command_print_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_print_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_print_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_print_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_print_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_print_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_print_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_print_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_print_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_print_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_print_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_print_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_print_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_print_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_print_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_read} *)

let localinput_set_fence_keyword_command_read_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_read_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_read_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_read_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_read_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_read_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_read_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_read_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_read_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_read_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_read_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_read_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_read_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_read_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_read_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_set} *)

let localinput_set_fence_keyword_command_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_set_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_set_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_set_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_set_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_set_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_set_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_set_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_set_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_set_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_set_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_set_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_stop} *)

let localinput_set_fence_keyword_command_stop_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_stop_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_stop_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_stop_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_stop_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_stop_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_stop_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_stop_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_stop_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_stop_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_stop_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_stop_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_stop_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_stop_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_stop_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command} *)

let localinput_set_fence_keyword_command_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_title} *)

let localinput_set_fence_keyword_command_title_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_title_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_title_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_title_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_title_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_title_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_title_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_title_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_title_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_title_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_title_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_title_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_title_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_title_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_title_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_command_write} *)

let localinput_set_fence_keyword_command_write_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_command_write_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_command_write_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_write_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_command_write_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_command_write_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_command_write_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_write_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_write_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_command_write_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_write_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_command_write_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_command_write_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_command_write_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_command_write_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword} *)

let localinput_set_fence_keyword_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_variable_kind_context} *)

let localinput_set_fence_keyword_variable_kind_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_variable_kind_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_variable_kind_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_variable_kind_external} *)

let localinput_set_fence_keyword_variable_kind_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_variable_kind_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_variable_kind_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_external_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_external_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_variable_kind_operator} *)

let localinput_set_fence_keyword_variable_kind_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_variable_kind_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_variable_kind_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_operator_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_variable_kind} *)

let localinput_set_fence_keyword_variable_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_variable_kind_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_variable_kind_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_variable_kind_target} *)

let localinput_set_fence_keyword_variable_kind_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_variable_kind_target_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_variable_kind_target_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_target_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_target_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_variable_kind_target_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_variable_kind_target_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_variable_kind_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_variable_kind_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_category} *)

let localinput_set_fence_keyword_word_category_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_category_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_category_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_category_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_category_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_category_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_category_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_category_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_category_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_category_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_category_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_category_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_category_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_category_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_category_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_cofactor_basic} *)

let localinput_set_fence_keyword_word_cofactor_basic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_cofactor_basic_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_basic_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_cofactor_basic_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_basic_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_basic_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_basic_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_basic_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_basic_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_basic_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_basic_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_basic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_cofactor_entity} *)

let localinput_set_fence_keyword_word_cofactor_entity_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_cofactor_entity_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_entity_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_cofactor_entity_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_entity_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_entity_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_entity_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_entity_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_entity_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_cofactor} *)

let localinput_set_fence_keyword_word_cofactor_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_cofactor_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_cofactor_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cofactor_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_cofactor_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cofactor_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cofactor_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_context} *)

let localinput_set_fence_keyword_word_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_cpu} *)

let localinput_set_fence_keyword_word_cpu_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_cpu_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cpu_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_cpu_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_cpu_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cpu_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cpu_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cpu_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_cpu_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cpu_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cpu_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_cpu_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_cpu_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_cpu_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_cpu_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_database} *)

let localinput_set_fence_keyword_word_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_database_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_database_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_database_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_database_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_database_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_database_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_database_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_database_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_database_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_database_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_database_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_database_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_databox} *)

let localinput_set_fence_keyword_word_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_databox_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_databox_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_databox_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_databox_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_databox_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_databox_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_databox_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_databox_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_databox_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_debug} *)

let localinput_set_fence_keyword_word_debug_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_debug_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_debug_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_debug_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_debug_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_debug_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_debug_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_debug_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_debug_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_debug_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_debug_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_debug_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_domain} *)

let localinput_set_fence_keyword_word_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_domain_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_domain_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_domain_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_domain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_domain_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_domain_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_domain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_domain_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_domain_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_end} *)

let localinput_set_fence_keyword_word_end_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_end_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_end_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_end_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_end_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_end_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_end_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_end_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_end_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_end_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_end_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_end_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_end_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_end_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_end_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_end_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_end_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_external_context} *)

let localinput_set_fence_keyword_word_external_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_external_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_external_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_external_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_external_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_external_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_external_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_external_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_external_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_external_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_external_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_external_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_external_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_file} *)

let localinput_set_fence_keyword_word_file_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_file_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_file_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_file_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_file_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_file_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_file_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_file_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_file_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_file_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_file_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_file_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_file_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_file_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_file_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_module} *)

let localinput_set_fence_keyword_word_module_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_module_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_module_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_module_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_module_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_module_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_module_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_module_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_module_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_module_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_module_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_module_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_module_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_module_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_module_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_name} *)

let localinput_set_fence_keyword_word_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_name_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_name_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_name_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_name_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_name_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_name_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_name_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_name_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_name_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_ondomain} *)

let localinput_set_fence_keyword_word_ondomain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_ondomain_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_ondomain_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_ondomain_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_ondomain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_ondomain_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_ondomain_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_ondomain_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_ondomain_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_ondomain_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_ondomain_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_ondomain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_operation} *)

let localinput_set_fence_keyword_word_operation_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_operation_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operation_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_operation_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_operation_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operation_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_operation_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_operation_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operation_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_operation_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_operation_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operation_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operation_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_operator} *)

let localinput_set_fence_keyword_word_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_operator_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_sector} *)

let localinput_set_fence_keyword_word_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_sector_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_sector_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_sector_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_sector_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_sector_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_sector_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_sector_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_sector_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_sector_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_statistics} *)

let localinput_set_fence_keyword_word_statistics_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_statistics_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_statistics_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_statistics_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_statistics_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_statistics_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_statistics_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_statistics_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_statistics_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_statistics_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_statistics_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_statistics_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_statistics_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_statistics_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_statistics_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word} *)

let localinput_set_fence_keyword_word_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_type} *)

let localinput_set_fence_keyword_word_type_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_type_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_type_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_type_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_type_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_type_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_type_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_type_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_type_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_type_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_type_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_type_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_type_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_type_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_type_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_keyword_word_units} *)

let localinput_set_fence_keyword_word_units_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_keyword_word_units_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_keyword_word_units_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_units_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_keyword_word_units_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_keyword_word_units_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_keyword_word_units_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_units_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_units_symbol_v.name sym_ldb
;;

let localinput_set_fence_keyword_word_units_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_units_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_keyword_word_units_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_keyword_word_units_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_keyword_word_units_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_keyword_word_units_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence} *)

let localinput_set_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_symbol_v.name sym_ldb
;;

let localinput_set_fence_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_context} *)

let localinput_set_fence_variable_kind_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_entity_external} *)

let localinput_set_fence_variable_kind_entity_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_entity_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_entity_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_entity_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_external_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_entity_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_external_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_entity_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_entity_implicit} *)

let localinput_set_fence_variable_kind_entity_implicit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_entity_implicit_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_implicit_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_entity_implicit_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_entity_implicit_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_implicit_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_implicit_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_entity_implicit_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_implicit_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_implicit_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_entity_implicit_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_implicit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_entity} *)

let localinput_set_fence_variable_kind_entity_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_entity_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_entity_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_entity_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_entity_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_entity_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_entity_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_entity_target} *)

let localinput_set_fence_variable_kind_entity_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_entity_target_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_entity_target_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_entity_target_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_target_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_entity_target_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_entity_target_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_entity_target_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_entity_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind_operator} *)

let localinput_set_fence_variable_kind_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_operator_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_kind} *)

let localinput_set_fence_variable_kind_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_kind_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_kind_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_kind_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_kind_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_kind_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_kind_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_kind_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_kind_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_kind_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_kind_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_context} *)

let localinput_set_fence_variable_name_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_context_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_context_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_context_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_context_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_context_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_context_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_context_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_context_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_context_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_context_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_context_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_entity_external} *)

let localinput_set_fence_variable_name_entity_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_entity_external_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_entity_external_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_external_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_entity_external_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_external_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_external_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_entity_external_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_external_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_entity_implicit} *)

let localinput_set_fence_variable_name_entity_implicit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_entity_implicit_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_implicit_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_entity_implicit_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_implicit_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_implicit_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_entity_implicit_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_implicit_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_implicit_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_entity_implicit_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_implicit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_entity} *)

let localinput_set_fence_variable_name_entity_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_entity_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_entity_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_entity_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_entity_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_entity_target} *)

let localinput_set_fence_variable_name_entity_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_entity_target_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_entity_target_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_entity_target_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_target_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_entity_target_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_target_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_entity_target_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_entity_target_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_entity_target_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_entity_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name_operator} *)

let localinput_set_fence_variable_name_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_operator_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_operator_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_operator_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_operator_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_operator_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_operator_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_operator_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_operator_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_operator_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_operator_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set_fence_variable_name} *)

let localinput_set_fence_variable_name_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_fence_variable_name_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_fence_variable_name_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_fence_variable_name_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_fence_variable_name_symbol_off_localinput_symbol des_pre
;;

let localinput_set_fence_variable_name_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_symbol_v.name sym_ldb
;;

let localinput_set_fence_variable_name_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_symbol_off_sole_index soi_ldb in
  Localinput_set_fence_variable_name_symbol_v.string_off sym_ldb
;;

let localinput_set_fence_variable_name_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_fence_variable_name_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_fence_variable_name_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Localinput_context_set} *)

let localinput_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_localinput_set_symbol_off_localinput_symbol"
    soi_any
;;

let localinput_set_symbol_off_sole_index soi_any =
  let soi_ldb = localinput_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    localinput_symbol_of_string_predicate_off_sole_index 
      "is_localinput_set_symbol_off_localinput_symbol"
      soi_ldb
  in
  Localinput_symbol_v.localinput_set_symbol_off_localinput_symbol des_pre
;;

let localinput_set_name_off_sole_index soi_any =
  let soi_ldb = localinput_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_symbol_off_sole_index soi_ldb in
  Localinput_set_symbol_v.name sym_ldb
;;

let localinput_set_string_off_off_sole_index soi_any =
  let soi_ldb = localinput_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_symbol_off_sole_index soi_ldb in
  Localinput_set_symbol_v.string_off sym_ldb
;;

let localinput_set_tag_off_sole_index soi_any =
  let soi_ldb = localinput_set_sole_index_off_sole_index soi_any in
  let sym_ldb = localinput_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on mercredi 17 mai 2017, 08:40:43 (UTC+0200) *)
