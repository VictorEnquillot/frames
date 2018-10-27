(** {3 Localinput_lexer_basic_word_bare_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_basic_word_bare_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_anycase_symbol sym_lba ->
    Localinput_lexer_basic_word_bare_anycase_symbol_v.name sym_lba
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc ->
    Localinput_lexer_basic_word_bare_capitalized_symbol_v.name sym_lbc
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl ->
    Localinput_lexer_basic_word_bare_lowercase_symbol_v.name sym_lbl
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu ->
    Localinput_lexer_basic_word_bare_uppercase_symbol_v.name sym_lbu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_anycase_symbol sym_lba ->
  Localinput_lexer_basic_word_bare_anycase_symbol_v.string_off sym_lba
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc ->
  Localinput_lexer_basic_word_bare_capitalized_symbol_v.string_off sym_lbc
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl ->
  Localinput_lexer_basic_word_bare_lowercase_symbol_v.string_off sym_lbl
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu ->
  Localinput_lexer_basic_word_bare_uppercase_symbol_v.string_off sym_lbu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lwb =
  Format.sprintf "Localinput_lexer_basic_word_bare_symbol_t.%s" (String.capitalize (name sym_lwb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lwb =
  Format.sprintf "%s \"%s\"" (longname sym_lwb) (string_off sym_lwb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_anycase_symbol sym_lba -> sym_lba
  | sym_lwb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol"
      "Localinput_lexer_basic_word_bare_anycase_symbol"
      (name sym_lwb) "check"
;;

let localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc -> sym_lbc
  | sym_lwb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol"
      "Localinput_lexer_basic_word_bare_capitalized_symbol"
      (name sym_lwb) "check"
;;

let localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl -> sym_lbl
  | sym_lwb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol"
      "Localinput_lexer_basic_word_bare_lowercase_symbol"
      (name sym_lwb) "check"
;;

let localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu -> sym_lbu
  | sym_lwb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol"
      "Localinput_lexer_basic_word_bare_uppercase_symbol"
      (name sym_lwb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_anycase_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol = function
  | Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_uppercase_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_word_bare_anycase_constructor sym_lwb =
  if not (is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb)
  then false
  else
    begin
      let sym_lba = localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb in
      Localinput_lexer_basic_word_bare_anycase_symbol_v.is_localinput_lexer_basic_word_bare_anycase_constructor sym_lba
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lwb =
  if not (is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb)
  then false
  else
    begin
      let sym_lbc = localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb in
      Localinput_lexer_basic_word_bare_capitalized_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lbc
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lwb =
  if not (is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb)
  then false
  else
    begin
      let sym_lbl = localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb in
      Localinput_lexer_basic_word_bare_lowercase_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lbl
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lwb =
  if not (is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb)
  then false
  else
    begin
      let sym_lbu = localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb in
      Localinput_lexer_basic_word_bare_uppercase_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lbu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba = 
  Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_anycase_symbol sym_lba
;;

let localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc = 
  Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc
;;

let localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl = 
  Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl
;;

let localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu = 
  Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_word_bare_anycase_constructor s = localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol (Localinput_lexer_basic_word_bare_anycase_symbol_v.localinput_lexer_basic_word_bare_anycase_constructor s);;

let localinput_lexer_basic_word_bare_capitalized_constructor s = localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol (Localinput_lexer_basic_word_bare_capitalized_symbol_v.localinput_lexer_basic_word_bare_capitalized_constructor s);;

let localinput_lexer_basic_word_bare_lowercase_constructor s = localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol (Localinput_lexer_basic_word_bare_lowercase_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor s);;

let localinput_lexer_basic_word_bare_uppercase_constructor s = localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol (Localinput_lexer_basic_word_bare_uppercase_symbol_v.localinput_lexer_basic_word_bare_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol
      (Localinput_lexer_basic_word_bare_anycase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_bare_anycase_symbol:Localinput_lexer_basic_word_bare_anycase_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol
      (Localinput_lexer_basic_word_bare_capitalized_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_bare_capitalized_symbol:Localinput_lexer_basic_word_bare_capitalized_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol
      (Localinput_lexer_basic_word_bare_lowercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_bare_lowercase_symbol:Localinput_lexer_basic_word_bare_lowercase_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol
      (Localinput_lexer_basic_word_bare_uppercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_bare_uppercase_symbol:Localinput_lexer_basic_word_bare_uppercase_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_basic_word_bare_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_basic_word_bare subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_basic_word_bare_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_basic_word_bare_symbol:Localinput_lexer_basic_word_bare_symbol_v.ml:make"
;;


(** Localinput_lexer_basic_word_bare_symbol_v at 12:10:41 on 22 Mar 2017. created by version v2.4 of generator *)



