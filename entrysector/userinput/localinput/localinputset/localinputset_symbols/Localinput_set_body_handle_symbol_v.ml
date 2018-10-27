(** {3 Localinput_set_body_handle_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_body_handle_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol sym_lhc ->
    Localinput_set_body_handle_cofactor_symbol_v.name sym_lhc
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol sym_lhc ->
    Localinput_set_body_handle_command_symbol_v.name sym_lhc
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol sym_lvk ->
    Localinput_set_body_handle_variable_kind_symbol_v.name sym_lvk
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol sym_lhc ->
  Localinput_set_body_handle_cofactor_symbol_v.string_off sym_lhc
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol sym_lhc ->
  Localinput_set_body_handle_command_symbol_v.string_off sym_lhc
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol sym_lvk ->
  Localinput_set_body_handle_variable_kind_symbol_v.string_off sym_lvk
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbh =
  Format.sprintf "Localinput_set_body_handle_symbol_t.%s" (String.capitalize (name sym_lbh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbh =
  Format.sprintf "%s \"%s\"" (longname sym_lbh) (string_off sym_lbh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol sym_lhc -> sym_lhc
  | sym_lbh -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol"
      "Localinput_set_body_handle_cofactor_symbol"
      (name sym_lbh) "check"
;;

let localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol sym_lhc -> sym_lhc
  | sym_lbh -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol"
      "Localinput_set_body_handle_command_symbol"
      (name sym_lbh) "check"
;;

let localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol sym_lvk -> sym_lvk
  | sym_lbh -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol"
      "Localinput_set_body_handle_variable_kind_symbol"
      (name sym_lbh) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_symbol sym_lbh = 
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
    Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol = function
  | Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_handle_cofactor_constructor sym_lbh =
  if not (is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_cofactor_symbol_v.is_localinput_set_body_handle_cofactor_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_define_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_read_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_read_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_set_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_set_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_title_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_title_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_tounit_print_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_command_tounit_write_constructor sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_write_constructor sym_lhc
    end
;;

let is_localinput_set_body_handle_variable_context_constructor sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_context_constructor sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_external_constructor sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_external_constructor sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_operator_constructor sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_operator_constructor sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_target_constructor sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
      let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
      Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_target_constructor sym_lvk
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lhc = localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_command_symbol sym_lhc
    end
;;

let is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
    end
;;

let is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_symbol sym_lbh =
  if not (is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh)
  then false
  else
    begin
  let sym_lvk = localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh in
  Localinput_set_body_handle_variable_kind_symbol_v.is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_variable_kind_symbol sym_lvk
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_cofactor_symbol sym_lhc = 
  Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc = 
  Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk = 
  Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol sym_lvk
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw = 
  let sym_lhc = Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc = 
  let sym_lvk = Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_kind_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve = 
  let sym_lvk = Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_kind_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo = 
  let sym_lvk = Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_kind_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;

let localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt = 
  let sym_lvk = Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_kind_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt in
    localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_handle_cofactor_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_cofactor_symbol (Localinput_set_body_handle_cofactor_symbol_v.localinput_set_body_handle_cofactor_constructor s);;

let localinput_set_body_handle_command_creation_define_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_define_constructor s);;

let localinput_set_body_handle_command_creation_read_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_read_constructor s);;

let localinput_set_body_handle_command_creation_set_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_set_constructor s);;

let localinput_set_body_handle_command_creation_title_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_title_constructor s);;

let localinput_set_body_handle_command_tounit_print_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_print_constructor s);;

let localinput_set_body_handle_command_tounit_write_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol (Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_write_constructor s);;

let localinput_set_body_handle_variable_context_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol (Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_context_constructor s);;

let localinput_set_body_handle_variable_external_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol (Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_external_constructor s);;

let localinput_set_body_handle_variable_operator_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol (Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_operator_constructor s);;

let localinput_set_body_handle_variable_target_constructor s = localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol (Localinput_set_body_handle_variable_kind_symbol_v.localinput_set_body_handle_variable_target_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_body_handle_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_body_handle_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_body_handle_symbol_of_localinput_set_body_handle_cofactor_symbol
      (Localinput_set_body_handle_cofactor_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_cofactor_symbol:Localinput_set_body_handle_cofactor_symbol_v.ml:make" ->
  try localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol
      (Localinput_set_body_handle_command_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_command_symbol:Localinput_set_body_handle_command_symbol_v.ml:make" ->
  try localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol
      (Localinput_set_body_handle_variable_kind_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_variable_kind_symbol:Localinput_set_body_handle_variable_kind_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_body_handle_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_body_handle_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_body_handle_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_body_handle_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_body_handle subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_body_handle_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_body_handle_symbol:Localinput_set_body_handle_symbol_v.ml:make"
;;


(** Localinput_set_body_handle_symbol_v at 11:16:50 on 15 May 2017. created by version v2.4 of generator *)



