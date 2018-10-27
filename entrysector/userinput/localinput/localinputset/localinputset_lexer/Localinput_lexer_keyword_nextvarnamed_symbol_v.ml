(** {3 Localinput_lexer_keyword_nextvarnamed_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_keyword_nextvarnamed_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce ->
    Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.name sym_lce
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec ->
    Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.name sym_lec
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev ->
    Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.name sym_lev
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto ->
    Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.name sym_lto
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto ->
    Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.name sym_lto
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce ->
  Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.string_off sym_lce
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec ->
  Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.string_off sym_lec
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev ->
  Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.string_off sym_lev
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto ->
  Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.string_off sym_lto
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto ->
  Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.string_off sym_lto
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lkn =
  Format.sprintf "Localinput_lexer_keyword_nextvarnamed_symbol_t.%s" (String.capitalize (name sym_lkn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lkn =
  Format.sprintf "%s \"%s\"" (longname sym_lkn) (string_off sym_lkn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce -> sym_lce
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol"
      "Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec -> sym_lec
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol"
      "Localinput_lexer_keyword_nextvarnamed_external_context_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev -> sym_lev
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol"
      "Localinput_lexer_keyword_nextvarnamed_external_variable_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto -> sym_lto
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol"
      "Localinput_lexer_keyword_nextvarnamed_target_operand_symbol"
      (name sym_lkn) "check"
;;

let localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto -> sym_lto
  | sym_lkn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol"
      "Localinput_lexer_keyword_nextvarnamed_target_operator_symbol"
      (name sym_lkn) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_variable_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol = function
  | Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lce = localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
      Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor sym_lce
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lec = localinput_lexer_keyword_nextvarnamed_external_context_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
      Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_constructor sym_lec
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lev = localinput_lexer_keyword_nextvarnamed_external_variable_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
      Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_variable_constructor sym_lev
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lto = localinput_lexer_keyword_nextvarnamed_target_operand_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
      Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor sym_lto
    end
;;

let is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_lkn =
  if not (is_localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn)
  then false
  else
    begin
      let sym_lto = localinput_lexer_keyword_nextvarnamed_target_operator_symbol_off_localinput_lexer_keyword_nextvarnamed_symbol sym_lkn in
      Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor sym_lto
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce = 
  Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol sym_lce
;;

let localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec = 
  Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol sym_lec
;;

let localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev = 
  Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_variable_symbol sym_lev
;;

let localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto = 
  Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operand_symbol sym_lto
;;

let localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto = 
  Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_target_operator_symbol sym_lto
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s = localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_context_constructor s = localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.localinput_lexer_keyword_nextvarnamed_external_context_constructor s);;

let localinput_lexer_keyword_nextvarnamed_external_variable_constructor s = localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol (Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.localinput_lexer_keyword_nextvarnamed_external_variable_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operand_constructor s = localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol (Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operand_constructor s);;

let localinput_lexer_keyword_nextvarnamed_target_operator_constructor s = localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol (Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.localinput_lexer_keyword_nextvarnamed_target_operator_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
      (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol:Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_context_symbol
      (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_external_context_symbol:Localinput_lexer_keyword_nextvarnamed_external_context_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_external_variable_symbol
      (Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_external_variable_symbol:Localinput_lexer_keyword_nextvarnamed_external_variable_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operand_symbol
      (Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_target_operand_symbol:Localinput_lexer_keyword_nextvarnamed_target_operand_symbol_v.ml:make" ->
  try localinput_lexer_keyword_nextvarnamed_symbol_of_localinput_lexer_keyword_nextvarnamed_target_operator_symbol
      (Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_nextvarnamed_target_operator_symbol:Localinput_lexer_keyword_nextvarnamed_target_operator_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_keyword_nextvarnamed subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_keyword_nextvarnamed_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_keyword_nextvarnamed_symbol:Localinput_lexer_keyword_nextvarnamed_symbol_v.ml:make"
;;


(** Localinput_lexer_keyword_nextvarnamed_symbol_v at 12:10:43 on 22 Mar 2017. created by version v2.4 of generator *)



