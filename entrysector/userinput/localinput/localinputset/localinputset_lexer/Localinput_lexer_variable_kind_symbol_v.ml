(** {3 Localinput_lexer_variable_kind_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_variable_kind_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol sym_lkc ->
    Localinput_lexer_variable_kind_context_symbol_v.name sym_lkc
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol sym_lke ->
    Localinput_lexer_variable_kind_external_symbol_v.name sym_lke
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol sym_lko ->
    Localinput_lexer_variable_kind_operator_symbol_v.name sym_lko
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol sym_lkt ->
    Localinput_lexer_variable_kind_target_symbol_v.name sym_lkt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol sym_lkc ->
  Localinput_lexer_variable_kind_context_symbol_v.string_off sym_lkc
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol sym_lke ->
  Localinput_lexer_variable_kind_external_symbol_v.string_off sym_lke
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol sym_lko ->
  Localinput_lexer_variable_kind_operator_symbol_v.string_off sym_lko
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol sym_lkt ->
  Localinput_lexer_variable_kind_target_symbol_v.string_off sym_lkt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lvk =
  Format.sprintf "Localinput_lexer_variable_kind_symbol_t.%s" (String.capitalize (name sym_lvk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lvk =
  Format.sprintf "%s \"%s\"" (longname sym_lvk) (string_off sym_lvk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol sym_lkc -> sym_lkc
  | sym_lvk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol"
      "Localinput_lexer_variable_kind_context_symbol"
      (name sym_lvk) "check"
;;

let localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol sym_lke -> sym_lke
  | sym_lvk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol"
      "Localinput_lexer_variable_kind_external_symbol"
      (name sym_lvk) "check"
;;

let localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol sym_lko -> sym_lko
  | sym_lvk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol"
      "Localinput_lexer_variable_kind_operator_symbol"
      (name sym_lvk) "check"
;;

let localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol sym_lkt -> sym_lkt
  | sym_lvk -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol"
      "Localinput_lexer_variable_kind_target_symbol"
      (name sym_lvk) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol = function
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_variable_kind_context_constructor sym_lvk =
  if not (is_localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk)
  then false
  else
    begin
      let sym_lkc = localinput_lexer_variable_kind_context_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk in
      Localinput_lexer_variable_kind_context_symbol_v.is_localinput_lexer_variable_kind_context_constructor sym_lkc
    end
;;

let is_localinput_lexer_variable_kind_external_constructor sym_lvk =
  if not (is_localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk)
  then false
  else
    begin
      let sym_lke = localinput_lexer_variable_kind_external_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk in
      Localinput_lexer_variable_kind_external_symbol_v.is_localinput_lexer_variable_kind_external_constructor sym_lke
    end
;;

let is_localinput_lexer_variable_kind_operator_constructor sym_lvk =
  if not (is_localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk)
  then false
  else
    begin
      let sym_lko = localinput_lexer_variable_kind_operator_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk in
      Localinput_lexer_variable_kind_operator_symbol_v.is_localinput_lexer_variable_kind_operator_constructor sym_lko
    end
;;

let is_localinput_lexer_variable_kind_target_constructor sym_lvk =
  if not (is_localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk)
  then false
  else
    begin
      let sym_lkt = localinput_lexer_variable_kind_target_symbol_off_localinput_lexer_variable_kind_symbol sym_lvk in
      Localinput_lexer_variable_kind_target_symbol_v.is_localinput_lexer_variable_kind_target_constructor sym_lkt
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_context_symbol sym_lkc = 
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol sym_lkc
;;

let localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_external_symbol sym_lke = 
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol sym_lke
;;

let localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_operator_symbol sym_lko = 
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol sym_lko
;;

let localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_target_symbol sym_lkt = 
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol sym_lkt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_variable_kind_context_constructor s = localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_context_symbol (Localinput_lexer_variable_kind_context_symbol_v.localinput_lexer_variable_kind_context_constructor s);;

let localinput_lexer_variable_kind_external_constructor s = localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_external_symbol (Localinput_lexer_variable_kind_external_symbol_v.localinput_lexer_variable_kind_external_constructor s);;

let localinput_lexer_variable_kind_operator_constructor s = localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_operator_symbol (Localinput_lexer_variable_kind_operator_symbol_v.localinput_lexer_variable_kind_operator_constructor s);;

let localinput_lexer_variable_kind_target_constructor s = localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_target_symbol (Localinput_lexer_variable_kind_target_symbol_v.localinput_lexer_variable_kind_target_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_variable_kind_context_symbol:Localinput_lexer_variable_kind_context_symbol_v.ml:make" ->
  try localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_variable_kind_external_symbol:Localinput_lexer_variable_kind_external_symbol_v.ml:make" ->
  try localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_variable_kind_operator_symbol:Localinput_lexer_variable_kind_operator_symbol_v.ml:make" ->
  try localinput_lexer_variable_kind_symbol_of_localinput_lexer_variable_kind_target_symbol
      (Localinput_lexer_variable_kind_target_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_variable_kind_target_symbol:Localinput_lexer_variable_kind_target_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_variable_kind_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_variable_kind subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_variable_kind_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_variable_kind_symbol:Localinput_lexer_variable_kind_symbol_v.ml:make"
;;


(** Localinput_lexer_variable_kind_symbol_v at 12:10:44 on 22 Mar 2017. created by version v2.4 of generator *)



