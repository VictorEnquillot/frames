(** {3 Localinput_set_fence_cell_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_cell_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_category_symbol sym_lcc ->
    Localinput_set_fence_cell_category_symbol_v.name sym_lcc
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol sym_lcb ->
    Localinput_set_fence_cell_cofactor_basic_symbol_v.name sym_lcb
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol sym_lce ->
    Localinput_set_fence_cell_cofactor_entity_symbol_v.name sym_lce
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_context_symbol sym_lcc ->
    Localinput_set_fence_cell_context_symbol_v.name sym_lcc
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol sym_lcs ->
    Localinput_set_fence_cell_sector_symbol_v.name sym_lcs
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol sym_lcd ->
    Localinput_set_fence_cell_database_symbol_v.name sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol sym_lcd ->
    Localinput_set_fence_cell_databox_symbol_v.name sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol sym_lcd ->
    Localinput_set_fence_cell_domain_symbol_v.name sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol sym_lec ->
    Localinput_set_fence_cell_external_context_symbol_v.name sym_lec
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol sym_len ->
    Localinput_set_fence_cell_external_name_symbol_v.name sym_len
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_variable_symbol sym_lev ->
    Localinput_set_fence_cell_external_variable_symbol_v.name sym_lev
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_file_symbol sym_lcf ->
    Localinput_set_fence_cell_file_symbol_v.name sym_lcf
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_function_symbol sym_lcf ->
    Localinput_set_fence_cell_function_symbol_v.name sym_lcf
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_module_symbol sym_lcm ->
    Localinput_set_fence_cell_module_symbol_v.name sym_lcm
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol sym_lco ->
    Localinput_set_fence_cell_ondomain_symbol_v.name sym_lco
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol sym_lco ->
    Localinput_set_fence_cell_operation_symbol_v.name sym_lco
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol sym_lto ->
    Localinput_set_fence_cell_target_operand_symbol_v.name sym_lto
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol sym_lto ->
    Localinput_set_fence_cell_target_operator_symbol_v.name sym_lto
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_category_symbol sym_lcc ->
  Localinput_set_fence_cell_category_symbol_v.string_off sym_lcc
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol sym_lcb ->
  Localinput_set_fence_cell_cofactor_basic_symbol_v.string_off sym_lcb
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol sym_lce ->
  Localinput_set_fence_cell_cofactor_entity_symbol_v.string_off sym_lce
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_context_symbol sym_lcc ->
  Localinput_set_fence_cell_context_symbol_v.string_off sym_lcc
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol sym_lcs ->
  Localinput_set_fence_cell_sector_symbol_v.string_off sym_lcs
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol sym_lcd ->
  Localinput_set_fence_cell_database_symbol_v.string_off sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol sym_lcd ->
  Localinput_set_fence_cell_databox_symbol_v.string_off sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol sym_lcd ->
  Localinput_set_fence_cell_domain_symbol_v.string_off sym_lcd
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol sym_lec ->
  Localinput_set_fence_cell_external_context_symbol_v.string_off sym_lec
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol sym_len ->
  Localinput_set_fence_cell_external_name_symbol_v.string_off sym_len
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_variable_symbol sym_lev ->
  Localinput_set_fence_cell_external_variable_symbol_v.string_off sym_lev
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_file_symbol sym_lcf ->
  Localinput_set_fence_cell_file_symbol_v.string_off sym_lcf
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_function_symbol sym_lcf ->
  Localinput_set_fence_cell_function_symbol_v.string_off sym_lcf
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_module_symbol sym_lcm ->
  Localinput_set_fence_cell_module_symbol_v.string_off sym_lcm
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol sym_lco ->
  Localinput_set_fence_cell_ondomain_symbol_v.string_off sym_lco
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol sym_lco ->
  Localinput_set_fence_cell_operation_symbol_v.string_off sym_lco
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol sym_lto ->
  Localinput_set_fence_cell_target_operand_symbol_v.string_off sym_lto
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol sym_lto ->
  Localinput_set_fence_cell_target_operator_symbol_v.string_off sym_lto
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lfc =
  Format.sprintf "Localinput_set_fence_cell_symbol_t.%s" (String.capitalize (name sym_lfc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lfc =
  Format.sprintf "%s \"%s\"" (longname sym_lfc) (string_off sym_lfc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_cell_category_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_category_symbol sym_lcc -> sym_lcc
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_category_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_category_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol sym_lcb -> sym_lcb
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_cofactor_basic_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol sym_lce -> sym_lce
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_cofactor_entity_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_context_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_context_symbol sym_lcc -> sym_lcc
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_context_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_context_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol sym_lcs -> sym_lcs
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_sector_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_database_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol sym_lcd -> sym_lcd
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_database_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_database_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol sym_lcd -> sym_lcd
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_databox_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol sym_lcd -> sym_lcd
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_domain_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol sym_lec -> sym_lec
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_external_context_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol sym_len -> sym_len
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_external_name_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_variable_symbol sym_lev -> sym_lev
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_external_variable_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_file_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_file_symbol sym_lcf -> sym_lcf
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_file_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_file_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_function_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_function_symbol sym_lcf -> sym_lcf
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_function_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_function_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_module_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_module_symbol sym_lcm -> sym_lcm
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_module_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_module_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol sym_lco -> sym_lco
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_ondomain_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol sym_lco -> sym_lco
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_operation_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol sym_lto -> sym_lto
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_target_operand_symbol"
      (name sym_lfc) "check"
;;

let localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol sym_lto -> sym_lto
  | sym_lfc -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol"
      "Localinput_set_fence_cell_target_operator_symbol"
      (name sym_lfc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_cell_category_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_category_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_context_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_context_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_database_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_variable_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_file_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_file_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_function_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_function_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_module_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_module_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol = function
  | Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_cell_category_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_category_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcc = localinput_set_fence_cell_category_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_category_symbol_v.is_localinput_set_fence_cell_category_constructor sym_lcc
    end
;;

let is_localinput_set_fence_cell_cofactor_basic_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcb = localinput_set_fence_cell_cofactor_basic_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_cofactor_basic_symbol_v.is_localinput_set_fence_cell_cofactor_basic_constructor sym_lcb
    end
;;

let is_localinput_set_fence_cell_cofactor_entity_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lce = localinput_set_fence_cell_cofactor_entity_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_cofactor_entity_symbol_v.is_localinput_set_fence_cell_cofactor_entity_constructor sym_lce
    end
;;

let is_localinput_set_fence_cell_context_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_context_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcc = localinput_set_fence_cell_context_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_context_symbol_v.is_localinput_set_fence_cell_context_constructor sym_lcc
    end
;;

let is_localinput_set_fence_cell_sector_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcs = localinput_set_fence_cell_sector_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_sector_symbol_v.is_localinput_set_fence_cell_sector_constructor sym_lcs
    end
;;

let is_localinput_set_fence_cell_database_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_database_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcd = localinput_set_fence_cell_database_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_database_symbol_v.is_localinput_set_fence_cell_database_constructor sym_lcd
    end
;;

let is_localinput_set_fence_cell_databox_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcd = localinput_set_fence_cell_databox_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_databox_symbol_v.is_localinput_set_fence_cell_databox_constructor sym_lcd
    end
;;

let is_localinput_set_fence_cell_domain_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcd = localinput_set_fence_cell_domain_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_domain_symbol_v.is_localinput_set_fence_cell_domain_constructor sym_lcd
    end
;;

let is_localinput_set_fence_cell_external_context_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lec = localinput_set_fence_cell_external_context_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_external_context_symbol_v.is_localinput_set_fence_cell_external_context_constructor sym_lec
    end
;;

let is_localinput_set_fence_cell_external_name_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_len = localinput_set_fence_cell_external_name_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_external_name_symbol_v.is_localinput_set_fence_cell_external_name_constructor sym_len
    end
;;

let is_localinput_set_fence_cell_external_variable_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lev = localinput_set_fence_cell_external_variable_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_external_variable_symbol_v.is_localinput_set_fence_cell_external_variable_constructor sym_lev
    end
;;

let is_localinput_set_fence_cell_file_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_file_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcf = localinput_set_fence_cell_file_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_file_symbol_v.is_localinput_set_fence_cell_file_constructor sym_lcf
    end
;;

let is_localinput_set_fence_cell_function_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_function_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcf = localinput_set_fence_cell_function_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_function_symbol_v.is_localinput_set_fence_cell_function_constructor sym_lcf
    end
;;

let is_localinput_set_fence_cell_module_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_module_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lcm = localinput_set_fence_cell_module_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_module_symbol_v.is_localinput_set_fence_cell_module_constructor sym_lcm
    end
;;

let is_localinput_set_fence_cell_ondomain_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lco = localinput_set_fence_cell_ondomain_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_ondomain_symbol_v.is_localinput_set_fence_cell_ondomain_constructor sym_lco
    end
;;

let is_localinput_set_fence_cell_operation_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lco = localinput_set_fence_cell_operation_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_operation_symbol_v.is_localinput_set_fence_cell_operation_constructor sym_lco
    end
;;

let is_localinput_set_fence_cell_target_operand_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lto = localinput_set_fence_cell_target_operand_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_target_operand_symbol_v.is_localinput_set_fence_cell_target_operand_constructor sym_lto
    end
;;

let is_localinput_set_fence_cell_target_operator_constructor sym_lfc =
  if not (is_localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol sym_lfc)
  then false
  else
    begin
      let sym_lto = localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol sym_lfc in
      Localinput_set_fence_cell_target_operator_symbol_v.is_localinput_set_fence_cell_target_operator_constructor sym_lto
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_category_symbol sym_lcc = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_category_symbol sym_lcc
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_basic_symbol sym_lcb = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_basic_symbol sym_lcb
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_entity_symbol sym_lce = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol sym_lce
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_context_symbol sym_lcc = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_context_symbol sym_lcc
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_sector_symbol sym_lcs = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol sym_lcs
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_database_symbol sym_lcd = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol sym_lcd
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_databox_symbol sym_lcd = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol sym_lcd
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_domain_symbol sym_lcd = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol sym_lcd
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_context_symbol sym_lec = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol sym_lec
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_name_symbol sym_len = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol sym_len
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_variable_symbol sym_lev = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_variable_symbol sym_lev
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_file_symbol sym_lcf = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_file_symbol sym_lcf
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_function_symbol sym_lcf = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_function_symbol sym_lcf
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_module_symbol sym_lcm = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_module_symbol sym_lcm
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_ondomain_symbol sym_lco = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol sym_lco
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_operation_symbol sym_lco = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol sym_lco
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operand_symbol sym_lto = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operand_symbol sym_lto
;;

let localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operator_symbol sym_lto = 
  Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_target_operator_symbol sym_lto
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_cell_category_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_category_symbol (Localinput_set_fence_cell_category_symbol_v.localinput_set_fence_cell_category_constructor s);;

let localinput_set_fence_cell_cofactor_basic_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_basic_symbol (Localinput_set_fence_cell_cofactor_basic_symbol_v.localinput_set_fence_cell_cofactor_basic_constructor s);;

let localinput_set_fence_cell_cofactor_entity_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_entity_symbol (Localinput_set_fence_cell_cofactor_entity_symbol_v.localinput_set_fence_cell_cofactor_entity_constructor s);;

let localinput_set_fence_cell_context_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_context_symbol (Localinput_set_fence_cell_context_symbol_v.localinput_set_fence_cell_context_constructor s);;

let localinput_set_fence_cell_sector_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_sector_symbol (Localinput_set_fence_cell_sector_symbol_v.localinput_set_fence_cell_sector_constructor s);;

let localinput_set_fence_cell_database_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_database_symbol (Localinput_set_fence_cell_database_symbol_v.localinput_set_fence_cell_database_constructor s);;

let localinput_set_fence_cell_databox_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_databox_symbol (Localinput_set_fence_cell_databox_symbol_v.localinput_set_fence_cell_databox_constructor s);;

let localinput_set_fence_cell_domain_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_domain_symbol (Localinput_set_fence_cell_domain_symbol_v.localinput_set_fence_cell_domain_constructor s);;

let localinput_set_fence_cell_external_context_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_context_symbol (Localinput_set_fence_cell_external_context_symbol_v.localinput_set_fence_cell_external_context_constructor s);;

let localinput_set_fence_cell_external_name_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_name_symbol (Localinput_set_fence_cell_external_name_symbol_v.localinput_set_fence_cell_external_name_constructor s);;

let localinput_set_fence_cell_external_variable_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_variable_symbol (Localinput_set_fence_cell_external_variable_symbol_v.localinput_set_fence_cell_external_variable_constructor s);;

let localinput_set_fence_cell_file_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_file_symbol (Localinput_set_fence_cell_file_symbol_v.localinput_set_fence_cell_file_constructor s);;

let localinput_set_fence_cell_function_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_function_symbol (Localinput_set_fence_cell_function_symbol_v.localinput_set_fence_cell_function_constructor s);;

let localinput_set_fence_cell_module_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_module_symbol (Localinput_set_fence_cell_module_symbol_v.localinput_set_fence_cell_module_constructor s);;

let localinput_set_fence_cell_ondomain_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_ondomain_symbol (Localinput_set_fence_cell_ondomain_symbol_v.localinput_set_fence_cell_ondomain_constructor s);;

let localinput_set_fence_cell_operation_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_operation_symbol (Localinput_set_fence_cell_operation_symbol_v.localinput_set_fence_cell_operation_constructor s);;

let localinput_set_fence_cell_target_operand_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operand_symbol (Localinput_set_fence_cell_target_operand_symbol_v.localinput_set_fence_cell_target_operand_constructor s);;

let localinput_set_fence_cell_target_operator_constructor s = localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operator_symbol (Localinput_set_fence_cell_target_operator_symbol_v.localinput_set_fence_cell_target_operator_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_category_symbol
      (Localinput_set_fence_cell_category_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_category_symbol:Localinput_set_fence_cell_category_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_basic_symbol
      (Localinput_set_fence_cell_cofactor_basic_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_cofactor_basic_symbol:Localinput_set_fence_cell_cofactor_basic_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_cofactor_entity_symbol
      (Localinput_set_fence_cell_cofactor_entity_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_cofactor_entity_symbol:Localinput_set_fence_cell_cofactor_entity_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_context_symbol
      (Localinput_set_fence_cell_context_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_context_symbol:Localinput_set_fence_cell_context_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_sector_symbol
      (Localinput_set_fence_cell_sector_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_sector_symbol:Localinput_set_fence_cell_sector_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_database_symbol
      (Localinput_set_fence_cell_database_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_database_symbol:Localinput_set_fence_cell_database_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_databox_symbol
      (Localinput_set_fence_cell_databox_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_databox_symbol:Localinput_set_fence_cell_databox_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_domain_symbol
      (Localinput_set_fence_cell_domain_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_domain_symbol:Localinput_set_fence_cell_domain_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_context_symbol
      (Localinput_set_fence_cell_external_context_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_external_context_symbol:Localinput_set_fence_cell_external_context_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_name_symbol
      (Localinput_set_fence_cell_external_name_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_external_name_symbol:Localinput_set_fence_cell_external_name_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_external_variable_symbol
      (Localinput_set_fence_cell_external_variable_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_external_variable_symbol:Localinput_set_fence_cell_external_variable_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_file_symbol
      (Localinput_set_fence_cell_file_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_file_symbol:Localinput_set_fence_cell_file_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_function_symbol
      (Localinput_set_fence_cell_function_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_function_symbol:Localinput_set_fence_cell_function_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_module_symbol
      (Localinput_set_fence_cell_module_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_module_symbol:Localinput_set_fence_cell_module_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_ondomain_symbol
      (Localinput_set_fence_cell_ondomain_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_ondomain_symbol:Localinput_set_fence_cell_ondomain_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_operation_symbol
      (Localinput_set_fence_cell_operation_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_operation_symbol:Localinput_set_fence_cell_operation_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operand_symbol
      (Localinput_set_fence_cell_target_operand_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_target_operand_symbol:Localinput_set_fence_cell_target_operand_symbol_v.ml:make" ->
  try localinput_set_fence_cell_symbol_of_localinput_set_fence_cell_target_operator_symbol
      (Localinput_set_fence_cell_target_operator_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_cell_target_operator_symbol:Localinput_set_fence_cell_target_operator_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_cell_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_cell subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_cell_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_cell_symbol:Localinput_set_fence_cell_symbol_v.ml:make"
;;


(** Localinput_set_fence_cell_symbol_v at 11:16:54 on 15 May 2017. created by version v2.4 of generator *)



