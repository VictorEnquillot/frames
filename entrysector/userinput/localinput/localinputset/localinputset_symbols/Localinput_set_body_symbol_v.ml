(** {3 Localinput_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_body_symbol_t.Localinput_set_body_block_symbol sym_lbb ->
    Localinput_set_body_block_symbol_v.name sym_lbb
  | Localinput_set_body_symbol_t.Localinput_set_body_box_symbol sym_lbb ->
    Localinput_set_body_box_symbol_v.name sym_lbb
  | Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol sym_lbh ->
    Localinput_set_body_handle_symbol_v.name sym_lbh
  | Localinput_set_body_symbol_t.Localinput_set_body_list_symbol sym_lbl ->
    Localinput_set_body_list_symbol_v.name sym_lbl
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_body_symbol_t.Localinput_set_body_block_symbol sym_lbb ->
  Localinput_set_body_block_symbol_v.string_off sym_lbb
  | Localinput_set_body_symbol_t.Localinput_set_body_box_symbol sym_lbb ->
  Localinput_set_body_box_symbol_v.string_off sym_lbb
  | Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol sym_lbh ->
  Localinput_set_body_handle_symbol_v.string_off sym_lbh
  | Localinput_set_body_symbol_t.Localinput_set_body_list_symbol sym_lbl ->
  Localinput_set_body_list_symbol_v.string_off sym_lbl
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lsb =
  Format.sprintf "Localinput_set_body_symbol_t.%s" (String.capitalize (name sym_lsb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lsb =
  Format.sprintf "%s \"%s\"" (longname sym_lsb) (string_off sym_lsb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_block_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_block_symbol sym_lbb -> sym_lbb
  | sym_lsb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_symbol_off_localinput_set_body_symbol"
      "Localinput_set_body_block_symbol"
      (name sym_lsb) "check"
;;

let localinput_set_body_box_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_box_symbol sym_lbb -> sym_lbb
  | sym_lsb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_box_symbol_off_localinput_set_body_symbol"
      "Localinput_set_body_box_symbol"
      (name sym_lsb) "check"
;;

let localinput_set_body_handle_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol sym_lbh -> sym_lbh
  | sym_lsb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_handle_symbol_off_localinput_set_body_symbol"
      "Localinput_set_body_handle_symbol"
      (name sym_lsb) "check"
;;

let localinput_set_body_list_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_list_symbol sym_lbl -> sym_lbl
  | sym_lsb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_list_symbol_off_localinput_set_body_symbol"
      "Localinput_set_body_list_symbol"
      (name sym_lsb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_set_body_block_define_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_cofactor_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_print_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_read_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_set_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_title_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_variable_context_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_variable_external_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_variable_target_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_block_write_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_block_symbol_v.localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_box_type_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_box_symbol_v.localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol sym_lbb
;;

let localinput_set_body_box_units_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_box_symbol_v.localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol sym_lbb
;;

let localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_list_symbol_v.localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_list_symbol sym_lbl
;;

let localinput_set_body_list_variable_type_symbol_off_localinput_set_body_symbol sym_lsb = 
  let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
    Localinput_set_body_list_symbol_v.localinput_set_body_list_variable_type_symbol_off_localinput_set_body_list_symbol sym_lbl
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_block_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_block_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_box_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_box_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_list_symbol_off_localinput_set_body_symbol = function
  | Localinput_set_body_symbol_t.Localinput_set_body_list_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_block_define_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_define_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_cofactor_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_cofactor_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_print_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_print_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_read_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_read_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_set_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_set_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_set_alternative_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_set_alternative_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_title_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_title_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_variable_context_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_context_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_variable_external_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_external_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_variable_operator_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_operator_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_variable_target_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_target_constructor sym_lbb
    end
;;

let is_localinput_set_body_block_write_constructor sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_block_symbol_v.is_localinput_set_body_block_write_constructor sym_lbb
    end
;;

let is_localinput_set_body_box_type_constructor sym_lsb =
  if not (is_localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_box_symbol_v.is_localinput_set_body_box_type_constructor sym_lbb
    end
;;

let is_localinput_set_body_box_units_constructor sym_lsb =
  if not (is_localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_box_symbol_v.is_localinput_set_body_box_units_constructor sym_lbb
    end
;;

let is_localinput_set_body_handle_cofactor_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_cofactor_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_define_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_read_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_read_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_set_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_set_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_title_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_title_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_tounit_print_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_command_tounit_write_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_tounit_write_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_context_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_context_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_external_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_external_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_operator_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_operator_constructor sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_target_constructor sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_target_constructor sym_lbh
    end
;;

let is_localinput_set_body_list_variable_name_external_constructor sym_lsb =
  if not (is_localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_list_symbol_v.is_localinput_set_body_list_variable_name_external_constructor sym_lbl
    end
;;

let is_localinput_set_body_list_variable_type_constructor sym_lsb =
  if not (is_localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
      let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
      Localinput_set_body_list_symbol_v.is_localinput_set_body_list_variable_type_constructor sym_lbl
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_set_body_block_define_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_cofactor_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_print_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_read_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_set_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_title_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_variable_context_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_variable_external_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_variable_target_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_block_write_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_block_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_block_symbol_v.is_localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol sym_lbb
    end
;;

let is_localinput_set_body_box_type_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_box_symbol_v.is_localinput_set_body_box_type_symbol_off_localinput_set_body_box_symbol sym_lbb
    end
;;

let is_localinput_set_body_box_units_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbb = localinput_set_body_box_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_box_symbol_v.is_localinput_set_body_box_units_symbol_off_localinput_set_body_box_symbol sym_lbb
    end
;;

let is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_cofactor_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_read_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_set_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_creation_title_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_tounit_print_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_tounit_write_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_kind_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_context_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_external_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_operator_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbh = localinput_set_body_handle_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_variable_target_symbol_off_localinput_set_body_handle_symbol sym_lbh
    end
;;

let is_localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_list_symbol_v.is_localinput_set_body_list_variable_name_external_symbol_off_localinput_set_body_list_symbol sym_lbl
    end
;;

let is_localinput_set_body_list_variable_type_symbol_off_localinput_set_body_symbol sym_lsb =
  if not (is_localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb)
  then false
  else
    begin
  let sym_lbl = localinput_set_body_list_symbol_off_localinput_set_body_symbol sym_lsb in
  Localinput_set_body_list_symbol_v.is_localinput_set_body_list_variable_type_symbol_off_localinput_set_body_list_symbol sym_lbl
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb = 
  Localinput_set_body_symbol_t.Localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_box_symbol sym_lbb = 
  Localinput_set_body_symbol_t.Localinput_set_body_box_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh = 
  Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_list_symbol sym_lbl = 
  Localinput_set_body_symbol_t.Localinput_set_body_list_symbol sym_lbl
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_set_body_symbol_of_localinput_set_body_block_define_symbol sym_lbd = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_define_symbol sym_lbd in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_cofactor_symbol sym_lbc = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_cofactor_symbol sym_lbc in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_print_symbol sym_lbp = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_print_symbol sym_lbp in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_read_symbol sym_lbr = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_read_symbol sym_lbr in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_set_symbol sym_lbs = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_set_symbol sym_lbs in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_set_alternative_symbol sym_lsa = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_set_alternative_symbol sym_lsa in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_title_symbol sym_lbt = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_title_symbol sym_lbt in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_variable_context_symbol sym_lvc = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_variable_context_symbol sym_lvc in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_variable_external_symbol sym_lve = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_variable_external_symbol sym_lve in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_variable_operator_symbol sym_lvo = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_variable_operator_symbol sym_lvo in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_variable_target_symbol sym_lvt = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_variable_target_symbol sym_lvt in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_block_write_symbol sym_lbw = 
  let sym_lbb = Localinput_set_body_block_symbol_v.localinput_set_body_block_symbol_of_localinput_set_body_block_write_symbol sym_lbw in
    localinput_set_body_symbol_of_localinput_set_body_block_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_box_type_symbol sym_lbt = 
  let sym_lbb = Localinput_set_body_box_symbol_v.localinput_set_body_box_symbol_of_localinput_set_body_box_type_symbol sym_lbt in
    localinput_set_body_symbol_of_localinput_set_body_box_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_box_units_symbol sym_lbu = 
  let sym_lbb = Localinput_set_body_box_symbol_v.localinput_set_body_box_symbol_of_localinput_set_body_box_units_symbol sym_lbu in
    localinput_set_body_symbol_of_localinput_set_body_box_symbol sym_lbb
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_cofactor_symbol sym_lhc = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_cofactor_symbol sym_lhc in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_symbol sym_lhc = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_symbol sym_lhc in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_symbol sym_lcc in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_define_symbol sym_lcd in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_read_symbol sym_lcr in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_set_symbol sym_lcs in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_creation_title_symbol sym_lct in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_symbol sym_lct in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_print_symbol sym_ltp in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_command_tounit_write_symbol sym_ltw in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_kind_symbol sym_lvk in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_context_symbol sym_lvc in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_external_symbol sym_lve in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_operator_symbol sym_lvo in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt = 
  let sym_lbh = Localinput_set_body_handle_symbol_v.localinput_set_body_handle_symbol_of_localinput_set_body_handle_variable_target_symbol sym_lvt in
    localinput_set_body_symbol_of_localinput_set_body_handle_symbol sym_lbh
;;

let localinput_set_body_symbol_of_localinput_set_body_list_variable_name_external_symbol sym_lne = 
  let sym_lbl = Localinput_set_body_list_symbol_v.localinput_set_body_list_symbol_of_localinput_set_body_list_variable_name_external_symbol sym_lne in
    localinput_set_body_symbol_of_localinput_set_body_list_symbol sym_lbl
;;

let localinput_set_body_symbol_of_localinput_set_body_list_variable_type_symbol sym_lvt = 
  let sym_lbl = Localinput_set_body_list_symbol_v.localinput_set_body_list_symbol_of_localinput_set_body_list_variable_type_symbol sym_lvt in
    localinput_set_body_symbol_of_localinput_set_body_list_symbol sym_lbl
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_block_define_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_define_constructor s);;

let localinput_set_body_block_cofactor_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_cofactor_constructor s);;

let localinput_set_body_block_print_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_print_constructor s);;

let localinput_set_body_block_read_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_read_constructor s);;

let localinput_set_body_block_set_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_set_constructor s);;

let localinput_set_body_block_set_alternative_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_set_alternative_constructor s);;

let localinput_set_body_block_title_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_title_constructor s);;

let localinput_set_body_block_variable_context_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_context_constructor s);;

let localinput_set_body_block_variable_external_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_external_constructor s);;

let localinput_set_body_block_variable_operator_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_operator_constructor s);;

let localinput_set_body_block_variable_target_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_variable_target_constructor s);;

let localinput_set_body_block_write_constructor s = localinput_set_body_symbol_of_localinput_set_body_block_symbol (Localinput_set_body_block_symbol_v.localinput_set_body_block_write_constructor s);;

let localinput_set_body_box_type_constructor s = localinput_set_body_symbol_of_localinput_set_body_box_symbol (Localinput_set_body_box_symbol_v.localinput_set_body_box_type_constructor s);;

let localinput_set_body_box_units_constructor s = localinput_set_body_symbol_of_localinput_set_body_box_symbol (Localinput_set_body_box_symbol_v.localinput_set_body_box_units_constructor s);;

let localinput_set_body_handle_cofactor_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_cofactor_constructor s);;

let localinput_set_body_handle_command_creation_define_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_define_constructor s);;

let localinput_set_body_handle_command_creation_read_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_read_constructor s);;

let localinput_set_body_handle_command_creation_set_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_set_constructor s);;

let localinput_set_body_handle_command_creation_title_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_creation_title_constructor s);;

let localinput_set_body_handle_command_tounit_print_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_tounit_print_constructor s);;

let localinput_set_body_handle_command_tounit_write_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_tounit_write_constructor s);;

let localinput_set_body_handle_variable_context_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_context_constructor s);;

let localinput_set_body_handle_variable_external_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_external_constructor s);;

let localinput_set_body_handle_variable_operator_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_operator_constructor s);;

let localinput_set_body_handle_variable_target_constructor s = localinput_set_body_symbol_of_localinput_set_body_handle_symbol (Localinput_set_body_handle_symbol_v.localinput_set_body_handle_variable_target_constructor s);;

let localinput_set_body_list_variable_name_external_constructor s = localinput_set_body_symbol_of_localinput_set_body_list_symbol (Localinput_set_body_list_symbol_v.localinput_set_body_list_variable_name_external_constructor s);;

let localinput_set_body_list_variable_type_constructor s = localinput_set_body_symbol_of_localinput_set_body_list_symbol (Localinput_set_body_list_symbol_v.localinput_set_body_list_variable_type_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_body_symbol_of_localinput_set_body_block_symbol
      (Localinput_set_body_block_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_symbol:Localinput_set_body_block_symbol_v.ml:make" ->
  try localinput_set_body_symbol_of_localinput_set_body_box_symbol
      (Localinput_set_body_box_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_box_symbol:Localinput_set_body_box_symbol_v.ml:make" ->
  try localinput_set_body_symbol_of_localinput_set_body_handle_symbol
      (Localinput_set_body_handle_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_handle_symbol:Localinput_set_body_handle_symbol_v.ml:make" ->
  try localinput_set_body_symbol_of_localinput_set_body_list_symbol
      (Localinput_set_body_list_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_list_symbol:Localinput_set_body_list_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_body subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_body_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_body_symbol:Localinput_set_body_symbol_v.ml:make"
;;


(** Localinput_set_body_symbol_v at 11:16:49 on 15 May 2017. created by version v2.4 of generator *)



