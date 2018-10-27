(** {3 Localinput_lexer_basic_word_doublequoted_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_basic_word_doublequoted_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda ->
    Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.name sym_lda
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc ->
    Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.name sym_ldc
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl ->
    Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.name sym_ldl
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu ->
    Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.name sym_ldu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda ->
  Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.string_off sym_lda
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc ->
  Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.string_off sym_ldc
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl ->
  Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.string_off sym_ldl
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu ->
  Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.string_off sym_ldu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lwd =
  Format.sprintf "Localinput_lexer_basic_word_doublequoted_symbol_t.%s" (String.capitalize (name sym_lwd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lwd =
  Format.sprintf "%s \"%s\"" (longname sym_lwd) (string_off sym_lwd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda -> sym_lda
  | sym_lwd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol"
      "Localinput_lexer_basic_word_doublequoted_anycase_symbol"
      (name sym_lwd) "check"
;;

let localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc -> sym_ldc
  | sym_lwd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol"
      "Localinput_lexer_basic_word_doublequoted_capitalized_symbol"
      (name sym_lwd) "check"
;;

let localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl -> sym_ldl
  | sym_lwd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol"
      "Localinput_lexer_basic_word_doublequoted_lowercase_symbol"
      (name sym_lwd) "check"
;;

let localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu -> sym_ldu
  | sym_lwd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol"
      "Localinput_lexer_basic_word_doublequoted_uppercase_symbol"
      (name sym_lwd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_anycase_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol = function
  | Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_uppercase_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lwd =
  if not (is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd)
  then false
  else
    begin
      let sym_lda = localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
      Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lda
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_lwd =
  if not (is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd)
  then false
  else
    begin
      let sym_ldc = localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
      Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_ldc
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_lwd =
  if not (is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd)
  then false
  else
    begin
      let sym_ldl = localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
      Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_ldl
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_lwd =
  if not (is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd)
  then false
  else
    begin
      let sym_ldu = localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
      Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_ldu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda = 
  Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda
;;

let localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc = 
  Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc
;;

let localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl = 
  Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl
;;

let localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu = 
  Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_word_doublequoted_anycase_constructor s = localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol (Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_constructor s);;

let localinput_lexer_basic_word_doublequoted_capitalized_constructor s = localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol (Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_constructor s);;

let localinput_lexer_basic_word_doublequoted_lowercase_constructor s = localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_uppercase_constructor s = localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol (Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol
      (Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_doublequoted_anycase_symbol:Localinput_lexer_basic_word_doublequoted_anycase_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol
      (Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_doublequoted_capitalized_symbol:Localinput_lexer_basic_word_doublequoted_capitalized_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol
      (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_doublequoted_lowercase_symbol:Localinput_lexer_basic_word_doublequoted_lowercase_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol
      (Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_doublequoted_uppercase_symbol:Localinput_lexer_basic_word_doublequoted_uppercase_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_basic_word_doublequoted subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_basic_word_doublequoted_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_basic_word_doublequoted_symbol:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make"
;;


(** Localinput_lexer_basic_word_doublequoted_symbol_v at 12:10:41 on 22 Mar 2017. created by version v2.4 of generator *)



