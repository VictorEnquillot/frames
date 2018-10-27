(** {3 Localinput_lexer_basic_string_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_basic_string_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_bare_symbol sym_lsb ->
    Localinput_lexer_basic_string_bare_symbol_v.name sym_lsb
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_doublequoted_symbol sym_lsd ->
    Localinput_lexer_basic_string_doublequoted_symbol_v.name sym_lsd
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_bare_symbol sym_lsb ->
  Localinput_lexer_basic_string_bare_symbol_v.string_off sym_lsb
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_doublequoted_symbol sym_lsd ->
  Localinput_lexer_basic_string_doublequoted_symbol_v.string_off sym_lsd
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbs =
  Format.sprintf "Localinput_lexer_basic_string_symbol_t.%s" (String.capitalize (name sym_lbs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbs =
  Format.sprintf "%s \"%s\"" (longname sym_lbs) (string_off sym_lbs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_bare_symbol sym_lsb -> sym_lsb
  | sym_lbs -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol"
      "Localinput_lexer_basic_string_bare_symbol"
      (name sym_lbs) "check"
;;

let localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_doublequoted_symbol sym_lsd -> sym_lsd
  | sym_lbs -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol"
      "Localinput_lexer_basic_string_doublequoted_symbol"
      (name sym_lbs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_bare_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol = function
  | Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_doublequoted_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_string_bare_constructor sym_lbs =
  if not (is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol sym_lbs)
  then false
  else
    begin
      let sym_lsb = localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol sym_lbs in
      Localinput_lexer_basic_string_bare_symbol_v.is_localinput_lexer_basic_string_bare_constructor sym_lsb
    end
;;

let is_localinput_lexer_basic_string_doublequoted_constructor sym_lbs =
  if not (is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol sym_lbs)
  then false
  else
    begin
      let sym_lsd = localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol sym_lbs in
      Localinput_lexer_basic_string_doublequoted_symbol_v.is_localinput_lexer_basic_string_doublequoted_constructor sym_lsd
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_bare_symbol sym_lsb = 
  Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_bare_symbol sym_lsb
;;

let localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_doublequoted_symbol sym_lsd = 
  Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_doublequoted_symbol sym_lsd
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_string_bare_constructor s = localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_bare_symbol (Localinput_lexer_basic_string_bare_symbol_v.localinput_lexer_basic_string_bare_constructor s);;

let localinput_lexer_basic_string_doublequoted_constructor s = localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_doublequoted_symbol (Localinput_lexer_basic_string_doublequoted_symbol_v.localinput_lexer_basic_string_doublequoted_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_bare_symbol
      (Localinput_lexer_basic_string_bare_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_string_bare_symbol:Localinput_lexer_basic_string_bare_symbol_v.ml:make" ->
  try localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_doublequoted_symbol
      (Localinput_lexer_basic_string_doublequoted_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_string_doublequoted_symbol:Localinput_lexer_basic_string_doublequoted_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_basic_string_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_basic_string subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_basic_string_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_basic_string_symbol:Localinput_lexer_basic_string_symbol_v.ml:make"
;;


(** Localinput_lexer_basic_string_symbol_v at 12:10:40 on 22 Mar 2017. created by version v2.4 of generator *)



