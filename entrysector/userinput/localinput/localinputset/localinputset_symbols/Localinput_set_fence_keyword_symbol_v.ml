(** {3 Localinput_set_fence_keyword_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_keyword_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol sym_lkc ->
    Localinput_set_fence_keyword_command_symbol_v.name sym_lkc
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol sym_lvk ->
    Localinput_set_fence_keyword_variable_kind_symbol_v.name sym_lvk
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol sym_lkw ->
    Localinput_set_fence_keyword_word_symbol_v.name sym_lkw
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol sym_lkc ->
  Localinput_set_fence_keyword_command_symbol_v.string_off sym_lkc
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol sym_lvk ->
  Localinput_set_fence_keyword_variable_kind_symbol_v.string_off sym_lvk
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol sym_lkw ->
  Localinput_set_fence_keyword_word_symbol_v.string_off sym_lkw
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lfk =
  Format.sprintf "Localinput_set_fence_keyword_symbol_t.%s" (String.capitalize (name sym_lfk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lfk =
  Format.sprintf "%s \"%s\"" (longname sym_lfk) (string_off sym_lfk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol sym_lkc -> sym_lkc
  | sym_lfk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol"
      "Localinput_set_fence_keyword_command_symbol"
      (name sym_lfk) "check"
;;

let localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol sym_lvk -> sym_lvk
  | sym_lfk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol"
      "Localinput_set_fence_keyword_variable_kind_symbol"
      (name sym_lfk) "check"
;;

let localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol sym_lkw -> sym_lkw
  | sym_lfk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol"
      "Localinput_set_fence_keyword_word_symbol"
      (name sym_lfk) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_keyword_symbol sym_lfk = 
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
    Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol = function
  | Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_keyword_command_define_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_define_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_print_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_print_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_read_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_read_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_set_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_set_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_stop_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_stop_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_title_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_title_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_write_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_write_constructor sym_lkc
    end
;;

let is_localinput_set_fence_keyword_variable_kind_context_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_constructor sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_external_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_constructor sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_operator_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_constructor sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_target_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_constructor sym_lvk
    end
;;

let is_localinput_set_fence_keyword_word_category_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_category_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_basic_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_entity_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_context_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_context_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cpu_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cpu_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_database_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_database_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_databox_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_databox_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_debug_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_debug_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_domain_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_domain_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_end_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_end_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_external_context_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_external_context_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_file_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_file_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_module_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_module_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_name_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_name_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_ondomain_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_ondomain_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_operation_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_operation_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_operator_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_operator_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_sector_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_sector_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_statistics_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_statistics_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_type_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_type_constructor sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_units_constructor sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
      let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
      Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_units_constructor sym_lkw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_define_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_print_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_read_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_set_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_stop_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_title_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkc = localinput_set_fence_keyword_command_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_command_symbol_v.is_localinput_set_fence_keyword_command_write_symbol_off_localinput_set_fence_keyword_command_symbol sym_lkc
    end
;;

let is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_context_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_external_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_operator_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lvk = localinput_set_fence_keyword_variable_kind_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_variable_kind_symbol_v.is_localinput_set_fence_keyword_variable_kind_target_symbol_off_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_category_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_basic_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cofactor_entity_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_context_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_cpu_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_database_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_databox_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_debug_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_domain_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_end_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_external_context_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_file_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_module_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_name_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_ondomain_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_operation_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_operator_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_sector_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_statistics_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_type_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;

let is_localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_keyword_symbol sym_lfk =
  if not (is_localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk)
  then false
  else
    begin
  let sym_lkw = localinput_set_fence_keyword_word_symbol_off_localinput_set_fence_keyword_symbol sym_lfk in
  Localinput_set_fence_keyword_word_symbol_v.is_localinput_set_fence_keyword_word_units_symbol_off_localinput_set_fence_keyword_word_symbol sym_lkw
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc = 
  Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk = 
  Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw = 
  Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol sym_lkw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_define_symbol sym_lcd = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_define_symbol sym_lcd in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_print_symbol sym_lcp = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_print_symbol sym_lcp in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_read_symbol sym_lcr = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_read_symbol sym_lcr in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_set_symbol sym_lcs = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_set_symbol sym_lcs in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_stop_symbol sym_lcs = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_stop_symbol sym_lcs in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_title_symbol sym_lct = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_title_symbol sym_lct in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_write_symbol sym_lcw = 
  let sym_lkc = Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_symbol_of_localinput_set_fence_keyword_command_write_symbol sym_lcw in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol sym_lkc
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_context_symbol sym_lkc = 
  let sym_lvk = Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_of_localinput_set_fence_keyword_variable_kind_context_symbol sym_lkc in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_external_symbol sym_lke = 
  let sym_lvk = Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_of_localinput_set_fence_keyword_variable_kind_external_symbol sym_lke in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_operator_symbol sym_lko = 
  let sym_lvk = Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_of_localinput_set_fence_keyword_variable_kind_operator_symbol sym_lko in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_target_symbol sym_lkt = 
  let sym_lvk = Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_symbol_of_localinput_set_fence_keyword_variable_kind_target_symbol sym_lkt in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol sym_lvk
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_category_symbol sym_lwc = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_category_symbol sym_lwc in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_cofactor_symbol sym_lwc = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_cofactor_symbol sym_lwc in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_cofactor_basic_symbol sym_lcb = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_cofactor_basic_symbol sym_lcb in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_cofactor_entity_symbol sym_lce = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_cofactor_entity_symbol sym_lce in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_context_symbol sym_lwc = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_context_symbol sym_lwc in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_cpu_symbol sym_lwc = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_cpu_symbol sym_lwc in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_database_symbol sym_lwd = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_database_symbol sym_lwd in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_databox_symbol sym_lwd = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_databox_symbol sym_lwd in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_debug_symbol sym_lwd = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_debug_symbol sym_lwd in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_domain_symbol sym_lwd = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_domain_symbol sym_lwd in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_end_symbol sym_lwe = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_end_symbol sym_lwe in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_external_context_symbol sym_lec = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_external_context_symbol sym_lec in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_file_symbol sym_lwf = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_file_symbol sym_lwf in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_module_symbol sym_lwm = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_module_symbol sym_lwm in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_name_symbol sym_lwn = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_name_symbol sym_lwn in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_ondomain_symbol sym_lwo = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_ondomain_symbol sym_lwo in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_operation_symbol sym_lwo = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_operation_symbol sym_lwo in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_operator_symbol sym_lwo = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_operator_symbol sym_lwo in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_sector_symbol sym_lws = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_sector_symbol sym_lws in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_statistics_symbol sym_lws = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_statistics_symbol sym_lws in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_type_symbol sym_lwt = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_type_symbol sym_lwt in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;

let localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_units_symbol sym_lwu = 
  let sym_lkw = Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_symbol_of_localinput_set_fence_keyword_word_units_symbol sym_lwu in
    localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol sym_lkw
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_keyword_command_define_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_define_constructor s);;

let localinput_set_fence_keyword_command_print_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_print_constructor s);;

let localinput_set_fence_keyword_command_read_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_read_constructor s);;

let localinput_set_fence_keyword_command_set_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_set_constructor s);;

let localinput_set_fence_keyword_command_stop_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_stop_constructor s);;

let localinput_set_fence_keyword_command_title_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_title_constructor s);;

let localinput_set_fence_keyword_command_write_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol (Localinput_set_fence_keyword_command_symbol_v.localinput_set_fence_keyword_command_write_constructor s);;

let localinput_set_fence_keyword_variable_kind_context_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol (Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_context_constructor s);;

let localinput_set_fence_keyword_variable_kind_external_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol (Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_external_constructor s);;

let localinput_set_fence_keyword_variable_kind_operator_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol (Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_operator_constructor s);;

let localinput_set_fence_keyword_variable_kind_target_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol (Localinput_set_fence_keyword_variable_kind_symbol_v.localinput_set_fence_keyword_variable_kind_target_constructor s);;

let localinput_set_fence_keyword_word_category_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_category_constructor s);;

let localinput_set_fence_keyword_word_cofactor_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_constructor s);;

let localinput_set_fence_keyword_word_cofactor_basic_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_basic_constructor s);;

let localinput_set_fence_keyword_word_cofactor_entity_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cofactor_entity_constructor s);;

let localinput_set_fence_keyword_word_context_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_context_constructor s);;

let localinput_set_fence_keyword_word_cpu_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_cpu_constructor s);;

let localinput_set_fence_keyword_word_database_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_database_constructor s);;

let localinput_set_fence_keyword_word_databox_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_databox_constructor s);;

let localinput_set_fence_keyword_word_debug_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_debug_constructor s);;

let localinput_set_fence_keyword_word_domain_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_domain_constructor s);;

let localinput_set_fence_keyword_word_end_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_end_constructor s);;

let localinput_set_fence_keyword_word_external_context_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_external_context_constructor s);;

let localinput_set_fence_keyword_word_file_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_file_constructor s);;

let localinput_set_fence_keyword_word_module_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_module_constructor s);;

let localinput_set_fence_keyword_word_name_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_name_constructor s);;

let localinput_set_fence_keyword_word_ondomain_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_ondomain_constructor s);;

let localinput_set_fence_keyword_word_operation_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_operation_constructor s);;

let localinput_set_fence_keyword_word_operator_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_operator_constructor s);;

let localinput_set_fence_keyword_word_sector_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_sector_constructor s);;

let localinput_set_fence_keyword_word_statistics_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_statistics_constructor s);;

let localinput_set_fence_keyword_word_type_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_type_constructor s);;

let localinput_set_fence_keyword_word_units_constructor s = localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol (Localinput_set_fence_keyword_word_symbol_v.localinput_set_fence_keyword_word_units_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_command_symbol
      (Localinput_set_fence_keyword_command_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_command_symbol:Localinput_set_fence_keyword_command_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_variable_kind_symbol
      (Localinput_set_fence_keyword_variable_kind_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_variable_kind_symbol:Localinput_set_fence_keyword_variable_kind_symbol_v.ml:make" ->
  try localinput_set_fence_keyword_symbol_of_localinput_set_fence_keyword_word_symbol
      (Localinput_set_fence_keyword_word_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_keyword_word_symbol:Localinput_set_fence_keyword_word_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_keyword_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_keyword subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_keyword_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_keyword_symbol:Localinput_set_fence_keyword_symbol_v.ml:make"
;;


(** Localinput_set_fence_keyword_symbol_v at 11:16:56 on 15 May 2017. created by version v2.4 of generator *)



