(** {3 Localinput_lexer_keyword_nextstringed_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_keyword_nextstringed_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_category_symbol sym_lnc ->
    Localinput_lexer_keyword_nextstringed_category_symbol_v.name sym_lnc
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol sym_lnd ->
    Localinput_lexer_keyword_nextstringed_database_symbol_v.name sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd ->
    Localinput_lexer_keyword_nextstringed_databox_symbol_v.name sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd ->
    Localinput_lexer_keyword_nextstringed_domain_symbol_v.name sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol sym_len ->
    Localinput_lexer_keyword_nextstringed_external_name_symbol_v.name sym_len
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_file_symbol sym_lnf ->
    Localinput_lexer_keyword_nextstringed_file_symbol_v.name sym_lnf
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_function_symbol sym_lnf ->
    Localinput_lexer_keyword_nextstringed_function_symbol_v.name sym_lnf
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_module_symbol sym_lnm ->
    Localinput_lexer_keyword_nextstringed_module_symbol_v.name sym_lnm
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno ->
    Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.name sym_lno
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol sym_lno ->
    Localinput_lexer_keyword_nextstringed_operation_symbol_v.name sym_lno
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol sym_lns ->
    Localinput_lexer_keyword_nextstringed_sector_symbol_v.name sym_lns
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_category_symbol sym_lnc ->
  Localinput_lexer_keyword_nextstringed_category_symbol_v.string_off sym_lnc
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol sym_lnd ->
  Localinput_lexer_keyword_nextstringed_database_symbol_v.string_off sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd ->
  Localinput_lexer_keyword_nextstringed_databox_symbol_v.string_off sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd ->
  Localinput_lexer_keyword_nextstringed_domain_symbol_v.string_off sym_lnd
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol sym_len ->
  Localinput_lexer_keyword_nextstringed_external_name_symbol_v.string_off sym_len
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_file_symbol sym_lnf ->
  Localinput_lexer_keyword_nextstringed_file_symbol_v.string_off sym_lnf
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_function_symbol sym_lnf ->
  Localinput_lexer_keyword_nextstringed_function_symbol_v.string_off sym_lnf
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_module_symbol sym_lnm ->
  Localinput_lexer_keyword_nextstringed_module_symbol_v.string_off sym_lnm
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno ->
  Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.string_off sym_lno
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol sym_lno ->
  Localinput_lexer_keyword_nextstringed_operation_symbol_v.string_off sym_lno
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol sym_lns ->
  Localinput_lexer_keyword_nextstringed_sector_symbol_v.string_off sym_lns
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lkn =
  Format.sprintf "Localinput_lexer_keyword_nextstringed_symbol_t.%s" (String.capitalize (name sym_lkn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lkn =
  Format.sprintf "%s \"%s\"" (longname sym_lkn) (string_off sym_lkn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_category_symbol sym_lnc -> sym_lnc
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_category_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol sym_lnd -> sym_lnd
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_database_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd -> sym_lnd
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_databox_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd -> sym_lnd
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_domain_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol sym_len -> sym_len
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_external_name_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_file_symbol sym_lnf -> sym_lnf
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_file_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_function_symbol sym_lnf -> sym_lnf
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_function_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_module_symbol sym_lnm -> sym_lnm
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_module_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno -> sym_lno
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_ondomain_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol sym_lno -> sym_lno
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_operation_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol sym_lns -> sym_lns
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol"
      "Localinput_lexer_keyword_nextstringed_sector_symbol"
      (name sym_lkn) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_category_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_file_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_function_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_module_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol = function
  | Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_keyword_nextstringed_category_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnc = localinput_lexer_keyword_nextstringed_category_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_category_symbol_v.is_localinput_lexer_keyword_nextstringed_category_constructor sym_lnc
    end
;;

let is_localinput_lexer_keyword_nextstringed_database_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnd = localinput_lexer_keyword_nextstringed_database_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_database_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor sym_lnd
    end
;;

let is_localinput_lexer_keyword_nextstringed_databox_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnd = localinput_lexer_keyword_nextstringed_databox_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_databox_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor sym_lnd
    end
;;

let is_localinput_lexer_keyword_nextstringed_domain_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnd = localinput_lexer_keyword_nextstringed_domain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_domain_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_constructor sym_lnd
    end
;;

let is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_len = localinput_lexer_keyword_nextstringed_external_name_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_external_name_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor sym_len
    end
;;

let is_localinput_lexer_keyword_nextstringed_file_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnf = localinput_lexer_keyword_nextstringed_file_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_file_symbol_v.is_localinput_lexer_keyword_nextstringed_file_constructor sym_lnf
    end
;;

let is_localinput_lexer_keyword_nextstringed_function_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnf = localinput_lexer_keyword_nextstringed_function_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_function_symbol_v.is_localinput_lexer_keyword_nextstringed_function_constructor sym_lnf
    end
;;

let is_localinput_lexer_keyword_nextstringed_module_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lnm = localinput_lexer_keyword_nextstringed_module_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_module_symbol_v.is_localinput_lexer_keyword_nextstringed_module_constructor sym_lnm
    end
;;

let is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lno = localinput_lexer_keyword_nextstringed_ondomain_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_constructor sym_lno
    end
;;

let is_localinput_lexer_keyword_nextstringed_operation_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lno = localinput_lexer_keyword_nextstringed_operation_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_operation_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_constructor sym_lno
    end
;;

let is_localinput_lexer_keyword_nextstringed_sector_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lns = localinput_lexer_keyword_nextstringed_sector_symbol_off_localinput_lexer_keyword_nextstringed_symbol sym_lkn in
      Localinput_lexer_keyword_nextstringed_sector_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_constructor sym_lns
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol sym_lnc = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_category_symbol sym_lnc
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol sym_lnd = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol sym_lnd
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_databox_symbol sym_lnd
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol sym_lnd
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol sym_len = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol sym_len
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol sym_lnf = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_file_symbol sym_lnf
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol sym_lnf = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_function_symbol sym_lnf
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol sym_lnm = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_module_symbol sym_lnm
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol sym_lno
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol sym_lno = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol sym_lno
;;

let localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol sym_lns = 
  Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_sector_symbol sym_lns
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_keyword_nextstringed_category_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol (Localinput_lexer_keyword_nextstringed_category_symbol_v.localinput_lexer_keyword_nextstringed_category_constructor s);;

let localinput_lexer_keyword_nextstringed_database_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol (Localinput_lexer_keyword_nextstringed_database_symbol_v.localinput_lexer_keyword_nextstringed_database_constructor s);;

let localinput_lexer_keyword_nextstringed_databox_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol (Localinput_lexer_keyword_nextstringed_databox_symbol_v.localinput_lexer_keyword_nextstringed_databox_constructor s);;

let localinput_lexer_keyword_nextstringed_domain_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol (Localinput_lexer_keyword_nextstringed_domain_symbol_v.localinput_lexer_keyword_nextstringed_domain_constructor s);;

let localinput_lexer_keyword_nextstringed_external_name_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol (Localinput_lexer_keyword_nextstringed_external_name_symbol_v.localinput_lexer_keyword_nextstringed_external_name_constructor s);;

let localinput_lexer_keyword_nextstringed_file_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol (Localinput_lexer_keyword_nextstringed_file_symbol_v.localinput_lexer_keyword_nextstringed_file_constructor s);;

let localinput_lexer_keyword_nextstringed_function_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol (Localinput_lexer_keyword_nextstringed_function_symbol_v.localinput_lexer_keyword_nextstringed_function_constructor s);;

let localinput_lexer_keyword_nextstringed_module_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol (Localinput_lexer_keyword_nextstringed_module_symbol_v.localinput_lexer_keyword_nextstringed_module_constructor s);;

let localinput_lexer_keyword_nextstringed_ondomain_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol (Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.localinput_lexer_keyword_nextstringed_ondomain_constructor s);;

let localinput_lexer_keyword_nextstringed_operation_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol (Localinput_lexer_keyword_nextstringed_operation_symbol_v.localinput_lexer_keyword_nextstringed_operation_constructor s);;

let localinput_lexer_keyword_nextstringed_sector_constructor s = localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol (Localinput_lexer_keyword_nextstringed_sector_symbol_v.localinput_lexer_keyword_nextstringed_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_category_symbol
      (Localinput_lexer_keyword_nextstringed_category_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_category_symbol:Localinput_lexer_keyword_nextstringed_category_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_database_symbol
      (Localinput_lexer_keyword_nextstringed_database_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_database_symbol:Localinput_lexer_keyword_nextstringed_database_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_databox_symbol
      (Localinput_lexer_keyword_nextstringed_databox_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_databox_symbol:Localinput_lexer_keyword_nextstringed_databox_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_domain_symbol
      (Localinput_lexer_keyword_nextstringed_domain_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_domain_symbol:Localinput_lexer_keyword_nextstringed_domain_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_external_name_symbol
      (Localinput_lexer_keyword_nextstringed_external_name_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_external_name_symbol:Localinput_lexer_keyword_nextstringed_external_name_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_file_symbol
      (Localinput_lexer_keyword_nextstringed_file_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_file_symbol:Localinput_lexer_keyword_nextstringed_file_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_function_symbol
      (Localinput_lexer_keyword_nextstringed_function_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_function_symbol:Localinput_lexer_keyword_nextstringed_function_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_module_symbol
      (Localinput_lexer_keyword_nextstringed_module_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_module_symbol:Localinput_lexer_keyword_nextstringed_module_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_ondomain_symbol
      (Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_ondomain_symbol:Localinput_lexer_keyword_nextstringed_ondomain_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_operation_symbol
      (Localinput_lexer_keyword_nextstringed_operation_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_operation_symbol:Localinput_lexer_keyword_nextstringed_operation_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextstringed_symbol_of_localinput_lexer_keyword_nextstringed_sector_symbol
      (Localinput_lexer_keyword_nextstringed_sector_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextstringed_sector_symbol:Localinput_lexer_keyword_nextstringed_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_keyword_nextstringed subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_keyword_nextstringed_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_keyword_nextstringed_symbol:Localinput_lexer_keyword_nextstringed_symbol_v.ml:make"
;;


(** Localinput_lexer_keyword_nextstringed_symbol_v at 12:10:43 on 22 Mar 2017. created by version v2.4 of generator *)



