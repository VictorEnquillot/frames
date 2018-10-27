(** {3 Localinput_lexer_keyword_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_keyword_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol sym_lkb ->
    Localinput_lexer_keyword_basiced_symbol_v.name sym_lkb
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol sym_lkb ->
    Localinput_lexer_keyword_blocknamed_symbol_v.name sym_lkb
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol sym_lkd ->
    Localinput_lexer_keyword_defvarnamed_symbol_v.name sym_lkd
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol sym_lkn ->
    Localinput_lexer_keyword_nextvarnamed_symbol_v.name sym_lkn
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol sym_lkn ->
    Localinput_lexer_keyword_nextstringed_symbol_v.name sym_lkn
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol sym_lku ->
    Localinput_lexer_keyword_unnamed_symbol_v.name sym_lku
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol sym_lkb ->
  Localinput_lexer_keyword_basiced_symbol_v.string_off sym_lkb
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol sym_lkb ->
  Localinput_lexer_keyword_blocknamed_symbol_v.string_off sym_lkb
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol sym_lkd ->
  Localinput_lexer_keyword_defvarnamed_symbol_v.string_off sym_lkd
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol sym_lkn ->
  Localinput_lexer_keyword_nextvarnamed_symbol_v.string_off sym_lkn
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol sym_lkn ->
  Localinput_lexer_keyword_nextstringed_symbol_v.string_off sym_lkn
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol sym_lku ->
  Localinput_lexer_keyword_unnamed_symbol_v.string_off sym_lku
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_llk =
  Format.sprintf "Localinput_lexer_keyword_symbol_t.%s" (String.capitalize (name sym_llk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_llk =
  Format.sprintf "%s \"%s\"" (longname sym_llk) (string_off sym_llk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol sym_lkb -> sym_lkb
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_basiced_symbol"
      (name sym_llk) "check"
;;

let localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol sym_lkb -> sym_lkb
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_blocknamed_symbol"
      (name sym_llk) "check"
;;

let localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol sym_lkd -> sym_lkd
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_defvarnamed_symbol"
      (name sym_llk) "check"
;;

let localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol sym_lkn -> sym_lkn
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_nextvarnamed_symbol"
      (name sym_llk) "check"
;;

let localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol sym_lkn -> sym_lkn
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_nextstringed_symbol"
      (name sym_llk) "check"
;;

let localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol sym_lku -> sym_lku
  | sym_llk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol"
      "Localinput_lexer_keyword_unnamed_symbol"
      (name sym_llk) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkb = localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_basiced_symbol_v.localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_basiced_symbol sym_lkb
;;

let localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkb = localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_blocknamed_symbol_v.localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_blocknamed_symbol sym_lkb
;;

let localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_symbol sym_llk = 
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
    Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol = function
  | Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_localinput_lexer_keyword_unnamed_cpu sym_llk =
  if not (is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lku = localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_unnamed_symbol_v.is_localinput_lexer_keyword_unnamed_cpu sym_lku
    end
;;

let is_localinput_lexer_keyword_unnamed_debug sym_llk =
  if not (is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lku = localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_unnamed_symbol_v.is_localinput_lexer_keyword_unnamed_debug sym_lku
    end
;;

let is_localinput_lexer_keyword_unnamed_statistics sym_llk =
  if not (is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lku = localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_unnamed_symbol_v.is_localinput_lexer_keyword_unnamed_statistics sym_lku
    end
;;

let is_localinput_lexer_keyword_unnamed_trace sym_llk =
  if not (is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lku = localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_unnamed_symbol_v.is_localinput_lexer_keyword_unnamed_trace sym_lku
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_keyword_basiced_cofactor_basic_constructor sym_llk =
  if not (is_localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkb = localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_basiced_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor sym_lkb
    end
;;

let is_localinput_lexer_keyword_blocknamed_end_constructor sym_llk =
  if not (is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkb = localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_blocknamed_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor sym_lkb
    end
;;

let is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_lkd
    end
;;

let is_localinput_lexer_keyword_defvarnamed_type_constructor sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor sym_lkd
    end
;;

let is_localinput_lexer_keyword_defvarnamed_units_constructor sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_constructor sym_lkd
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_category_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_category_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_database_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_databox_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_domain_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_file_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_file_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_function_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_function_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_module_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_module_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_operation_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_constructor sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_sector_constructor sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
      let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
      Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_constructor sym_lkn
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkb = localinput_lexer_keyword_basiced_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_basiced_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_symbol_off_localinput_lexer_keyword_basiced_symbol sym_lkb
    end
;;

let is_localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkb = localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_blocknamed_symbol_v.is_localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_keyword_blocknamed_symbol sym_lkb
    end
;;

let is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
    end
;;

let is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
    end
;;

let is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkd = localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_defvarnamed_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextvarnamed_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;

let is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_symbol sym_llk =
  if not (is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk)
  then false
  else
    begin
  let sym_lkn = localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_keyword_symbol sym_llk in
  Localinput_lexer_keyword_nextstringed_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_symbol sym_lkb = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol sym_lkb
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_symbol sym_lkb = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol sym_lkb
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol sym_lku = 
  Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unnamed_symbol sym_lku
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_cofactor_basic_symbol sym_lcb = 
  let sym_lkb = Localinput_lexer_keyword_basiced_symbol_v.localinput_lexer_keyword_basiced_symbol_of_localinput_lexer_keyword_basiced_cofactor_basic_symbol sym_lcb in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_symbol sym_lkb
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_end_symbol sym_lbe = 
  let sym_lkb = Localinput_lexer_keyword_blocknamed_symbol_v.localinput_lexer_keyword_blocknamed_symbol_of_localinput_lexer_keyword_blocknamed_end_symbol sym_lbe in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_symbol sym_lkb
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc = 
  let sym_lkd = Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt = 
  let sym_lkd = Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu = 
  let sym_lkd = Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol sym_lkd
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce = 
  let sym_lkn = Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec = 
  let sym_lkn = Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev = 
  let sym_lkn = Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto = 
  let sym_lkn = Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto = 
  let sym_lkn = Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol sym_lnc = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol sym_lnc in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol sym_lnd = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol sym_lnd in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol sym_len = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol sym_len in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol sym_lnf = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol sym_lnf in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol sym_lnf = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol sym_lnf in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol sym_lnm = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol sym_lnm in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol sym_lno = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol sym_lno in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;

let localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol sym_lns = 
  let sym_lkn = Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol sym_lns in
    localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol sym_lkn
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let localinput_lexer_keyword_unnamed_cpu = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol Localinput_lexer_keyword_unnamed_symbol_v.localinput_lexer_keyword_unnamed_cpu;;

let localinput_lexer_keyword_unnamed_debug = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol Localinput_lexer_keyword_unnamed_symbol_v.localinput_lexer_keyword_unnamed_debug;;

let localinput_lexer_keyword_unnamed_statistics = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol Localinput_lexer_keyword_unnamed_symbol_v.localinput_lexer_keyword_unnamed_statistics;;

let localinput_lexer_keyword_unnamed_trace = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol Localinput_lexer_keyword_unnamed_symbol_v.localinput_lexer_keyword_unnamed_trace;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_keyword_basiced_cofactor_basic_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_symbol (Localinput_lexer_keyword_basiced_symbol_v.localinput_lexer_keyword_basiced_cofactor_basic_constructor s);;

let localinput_lexer_keyword_blocknamed_end_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_symbol (Localinput_lexer_keyword_blocknamed_symbol_v.localinput_lexer_keyword_blocknamed_end_constructor s);;

let localinput_lexer_keyword_defvarnamed_cofactor_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol (Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_cofactor_constructor s);;

let localinput_lexer_keyword_defvarnamed_type_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol (Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_type_constructor s);;

let localinput_lexer_keyword_defvarnamed_units_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol (Localinput_lexer_keyword_defvarnamed_symbol_v.localinput_lexer_keyword_defvarnamed_units_constructor s);;

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol (Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_context_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol (Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_external_context_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_variable_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol (Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_external_variable_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operand_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol (Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operand_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operator_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol (Localinput_lexer_keyword_nextvarnamed_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operator_constructor s);;

let localinput_lexer_keyword_nextstringed_category_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_category_constructor s);;

let localinput_lexer_keyword_nextstringed_database_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_database_constructor s);;

let localinput_lexer_keyword_nextstringed_databox_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_databox_constructor s);;

let localinput_lexer_keyword_nextstringed_domain_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_domain_constructor s);;

let localinput_lexer_keyword_nextstringed_external_name_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_external_name_constructor s);;

let localinput_lexer_keyword_nextstringed_file_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_file_constructor s);;

let localinput_lexer_keyword_nextstringed_function_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_function_constructor s);;

let localinput_lexer_keyword_nextstringed_module_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_module_constructor s);;

let localinput_lexer_keyword_nextstringed_ondomain_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_ondomain_constructor s);;

let localinput_lexer_keyword_nextstringed_operation_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_operation_constructor s);;

let localinput_lexer_keyword_nextstringed_sector_constructor s = localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol (Localinput_lexer_keyword_nextstringed_symbol_v.localinput_lexer_keyword_nextstringed_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_basiced_symbol
      (Localinput_lexer_keyword_basiced_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_basiced_symbol:Localinput_lexer_keyword_basiced_symbol_v.ml:make" ->
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_blocknamed_symbol:Localinput_lexer_keyword_blocknamed_symbol_v.ml:make" ->
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_defvarnamed_symbol:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make" ->
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_symbol:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make" ->
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_symbol:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make" ->
  try localinput_lexer_keyword_symbol_of_localinput_lexer_keyword_unnamed_symbol
      (Localinput_lexer_keyword_unnamed_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_unnamed_symbol:Localinput_lexer_keyword_unnamed_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_keyword_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_keyword subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_keyword_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_keyword_symbol:Localinput_lexer_keyword_symbol_v.ml:make"
;;


(** Localinput_lexer_keyword_symbol_v at 12:10:42 on 22 Mar 2017. created by version v2.4 of generator *)



