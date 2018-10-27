(** {3 Localinput_set_body_block_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_body_block_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol sym_lbd ->
    Localinput_set_body_block_define_symbol_v.name sym_lbd
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol sym_lbc ->
    Localinput_set_body_block_cofactor_symbol_v.name sym_lbc
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol sym_lbp ->
    Localinput_set_body_block_print_symbol_v.name sym_lbp
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_read_symbol sym_lbr ->
    Localinput_set_body_block_read_symbol_v.name sym_lbr
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_symbol sym_lbs ->
    Localinput_set_body_block_set_symbol_v.name sym_lbs
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_alternative_symbol sym_lsa ->
    Localinput_set_body_block_set_alternative_symbol_v.name sym_lsa
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_title_symbol sym_lbt ->
    Localinput_set_body_block_title_symbol_v.name sym_lbt
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol sym_lvc ->
    Localinput_set_body_block_variable_context_symbol_v.name sym_lvc
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol sym_lve ->
    Localinput_set_body_block_variable_external_symbol_v.name sym_lve
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol sym_lvo ->
    Localinput_set_body_block_variable_operator_symbol_v.name sym_lvo
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_target_symbol sym_lvt ->
    Localinput_set_body_block_variable_target_symbol_v.name sym_lvt
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_write_symbol sym_lbw ->
    Localinput_set_body_block_write_symbol_v.name sym_lbw
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol sym_lbd ->
  Localinput_set_body_block_define_symbol_v.string_off sym_lbd
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol sym_lbc ->
  Localinput_set_body_block_cofactor_symbol_v.string_off sym_lbc
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol sym_lbp ->
  Localinput_set_body_block_print_symbol_v.string_off sym_lbp
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_read_symbol sym_lbr ->
  Localinput_set_body_block_read_symbol_v.string_off sym_lbr
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_symbol sym_lbs ->
  Localinput_set_body_block_set_symbol_v.string_off sym_lbs
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_alternative_symbol sym_lsa ->
  Localinput_set_body_block_set_alternative_symbol_v.string_off sym_lsa
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_title_symbol sym_lbt ->
  Localinput_set_body_block_title_symbol_v.string_off sym_lbt
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol sym_lvc ->
  Localinput_set_body_block_variable_context_symbol_v.string_off sym_lvc
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol sym_lve ->
  Localinput_set_body_block_variable_external_symbol_v.string_off sym_lve
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol sym_lvo ->
  Localinput_set_body_block_variable_operator_symbol_v.string_off sym_lvo
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_target_symbol sym_lvt ->
  Localinput_set_body_block_variable_target_symbol_v.string_off sym_lvt
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_write_symbol sym_lbw ->
  Localinput_set_body_block_write_symbol_v.string_off sym_lbw
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbb =
  Format.sprintf "Localinput_set_body_block_symbol_t.%s" (String.capitalize (name sym_lbb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbb =
  Format.sprintf "%s \"%s\"" (longname sym_lbb) (string_off sym_lbb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol sym_lbd -> sym_lbd
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_define_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol sym_lbc -> sym_lbc
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_cofactor_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol sym_lbp -> sym_lbp
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_print_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_read_symbol sym_lbr -> sym_lbr
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_read_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_symbol sym_lbs -> sym_lbs
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_set_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_alternative_symbol sym_lsa -> sym_lsa
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_set_alternative_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_title_symbol sym_lbt -> sym_lbt
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_title_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol sym_lvc -> sym_lvc
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_variable_context_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol sym_lve -> sym_lve
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_variable_external_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol sym_lvo -> sym_lvo
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_variable_operator_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_target_symbol sym_lvt -> sym_lvt
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_variable_target_symbol"
      (name sym_lbb) "check"
;;

let localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_write_symbol sym_lbw -> sym_lbw
  | sym_lbb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol"
      "Localinput_set_body_block_write_symbol"
      (name sym_lbb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_read_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_alternative_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_title_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_target_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol = function
  | Localinput_set_body_block_symbol_t.Localinput_set_body_block_write_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_body_block_define_constructor sym_lbb =
  if not (is_localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbd = localinput_set_body_block_define_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_define_symbol_v.is_localinput_set_body_block_define_constructor sym_lbd
    end
;;

let is_localinput_set_body_block_cofactor_constructor sym_lbb =
  if not (is_localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbc = localinput_set_body_block_cofactor_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_cofactor_symbol_v.is_localinput_set_body_block_cofactor_constructor sym_lbc
    end
;;

let is_localinput_set_body_block_print_constructor sym_lbb =
  if not (is_localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbp = localinput_set_body_block_print_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_print_symbol_v.is_localinput_set_body_block_print_constructor sym_lbp
    end
;;

let is_localinput_set_body_block_read_constructor sym_lbb =
  if not (is_localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbr = localinput_set_body_block_read_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_read_symbol_v.is_localinput_set_body_block_read_constructor sym_lbr
    end
;;

let is_localinput_set_body_block_set_constructor sym_lbb =
  if not (is_localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbs = localinput_set_body_block_set_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_set_symbol_v.is_localinput_set_body_block_set_constructor sym_lbs
    end
;;

let is_localinput_set_body_block_set_alternative_constructor sym_lbb =
  if not (is_localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lsa = localinput_set_body_block_set_alternative_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_set_alternative_symbol_v.is_localinput_set_body_block_set_alternative_constructor sym_lsa
    end
;;

let is_localinput_set_body_block_title_constructor sym_lbb =
  if not (is_localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbt = localinput_set_body_block_title_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_title_symbol_v.is_localinput_set_body_block_title_constructor sym_lbt
    end
;;

let is_localinput_set_body_block_variable_context_constructor sym_lbb =
  if not (is_localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lvc = localinput_set_body_block_variable_context_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_variable_context_symbol_v.is_localinput_set_body_block_variable_context_constructor sym_lvc
    end
;;

let is_localinput_set_body_block_variable_external_constructor sym_lbb =
  if not (is_localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lve = localinput_set_body_block_variable_external_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_variable_external_symbol_v.is_localinput_set_body_block_variable_external_constructor sym_lve
    end
;;

let is_localinput_set_body_block_variable_operator_constructor sym_lbb =
  if not (is_localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lvo = localinput_set_body_block_variable_operator_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_variable_operator_symbol_v.is_localinput_set_body_block_variable_operator_constructor sym_lvo
    end
;;

let is_localinput_set_body_block_variable_target_constructor sym_lbb =
  if not (is_localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lvt = localinput_set_body_block_variable_target_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_variable_target_symbol_v.is_localinput_set_body_block_variable_target_constructor sym_lvt
    end
;;

let is_localinput_set_body_block_write_constructor sym_lbb =
  if not (is_localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol sym_lbb)
  then false
  else
    begin
      let sym_lbw = localinput_set_body_block_write_symbol_off_localinput_set_body_block_symbol sym_lbb in
      Localinput_set_body_block_write_symbol_v.is_localinput_set_body_block_write_constructor sym_lbw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_body_block_symbol_of_localinput_set_body_block_define_symbol sym_lbd = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol sym_lbd
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_cofactor_symbol sym_lbc = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol sym_lbc
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_print_symbol sym_lbp = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol sym_lbp
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_read_symbol sym_lbr = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_read_symbol sym_lbr
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_set_symbol sym_lbs = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_symbol sym_lbs
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_set_alternative_symbol sym_lsa = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_set_alternative_symbol sym_lsa
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_title_symbol sym_lbt = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_title_symbol sym_lbt
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_variable_context_symbol sym_lvc = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol sym_lvc
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_variable_external_symbol sym_lve = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol sym_lve
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_variable_operator_symbol sym_lvo = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_operator_symbol sym_lvo
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_variable_target_symbol sym_lvt = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_target_symbol sym_lvt
;;

let localinput_set_body_block_symbol_of_localinput_set_body_block_write_symbol sym_lbw = 
  Localinput_set_body_block_symbol_t.Localinput_set_body_block_write_symbol sym_lbw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_body_block_define_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_define_symbol (Localinput_set_body_block_define_symbol_v.localinput_set_body_block_define_constructor s);;

let localinput_set_body_block_cofactor_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_cofactor_symbol (Localinput_set_body_block_cofactor_symbol_v.localinput_set_body_block_cofactor_constructor s);;

let localinput_set_body_block_print_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_print_symbol (Localinput_set_body_block_print_symbol_v.localinput_set_body_block_print_constructor s);;

let localinput_set_body_block_read_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_read_symbol (Localinput_set_body_block_read_symbol_v.localinput_set_body_block_read_constructor s);;

let localinput_set_body_block_set_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_set_symbol (Localinput_set_body_block_set_symbol_v.localinput_set_body_block_set_constructor s);;

let localinput_set_body_block_set_alternative_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_set_alternative_symbol (Localinput_set_body_block_set_alternative_symbol_v.localinput_set_body_block_set_alternative_constructor s);;

let localinput_set_body_block_title_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_title_symbol (Localinput_set_body_block_title_symbol_v.localinput_set_body_block_title_constructor s);;

let localinput_set_body_block_variable_context_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_variable_context_symbol (Localinput_set_body_block_variable_context_symbol_v.localinput_set_body_block_variable_context_constructor s);;

let localinput_set_body_block_variable_external_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_variable_external_symbol (Localinput_set_body_block_variable_external_symbol_v.localinput_set_body_block_variable_external_constructor s);;

let localinput_set_body_block_variable_operator_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_variable_operator_symbol (Localinput_set_body_block_variable_operator_symbol_v.localinput_set_body_block_variable_operator_constructor s);;

let localinput_set_body_block_variable_target_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_variable_target_symbol (Localinput_set_body_block_variable_target_symbol_v.localinput_set_body_block_variable_target_constructor s);;

let localinput_set_body_block_write_constructor s = localinput_set_body_block_symbol_of_localinput_set_body_block_write_symbol (Localinput_set_body_block_write_symbol_v.localinput_set_body_block_write_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_body_block_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_body_block_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_body_block_symbol_of_localinput_set_body_block_define_symbol
      (Localinput_set_body_block_define_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_define_symbol:Localinput_set_body_block_define_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_cofactor_symbol
      (Localinput_set_body_block_cofactor_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_cofactor_symbol:Localinput_set_body_block_cofactor_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_print_symbol
      (Localinput_set_body_block_print_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_print_symbol:Localinput_set_body_block_print_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_read_symbol
      (Localinput_set_body_block_read_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_read_symbol:Localinput_set_body_block_read_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_set_symbol
      (Localinput_set_body_block_set_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_set_symbol:Localinput_set_body_block_set_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_set_alternative_symbol
      (Localinput_set_body_block_set_alternative_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_set_alternative_symbol:Localinput_set_body_block_set_alternative_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_title_symbol
      (Localinput_set_body_block_title_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_title_symbol:Localinput_set_body_block_title_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_variable_context_symbol
      (Localinput_set_body_block_variable_context_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_variable_context_symbol:Localinput_set_body_block_variable_context_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_variable_external_symbol
      (Localinput_set_body_block_variable_external_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_variable_external_symbol:Localinput_set_body_block_variable_external_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_variable_operator_symbol
      (Localinput_set_body_block_variable_operator_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_variable_operator_symbol:Localinput_set_body_block_variable_operator_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_variable_target_symbol
      (Localinput_set_body_block_variable_target_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_variable_target_symbol:Localinput_set_body_block_variable_target_symbol_v.ml:make" ->
  try localinput_set_body_block_symbol_of_localinput_set_body_block_write_symbol
      (Localinput_set_body_block_write_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_body_block_write_symbol:Localinput_set_body_block_write_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_body_block_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_body_block_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_body_block_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_body_block_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_body_block subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_body_block_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_body_block_symbol:Localinput_set_body_block_symbol_v.ml:make"
;;


(** Localinput_set_body_block_symbol_v at 11:16:49 on 15 May 2017. created by version v2.4 of generator *)



