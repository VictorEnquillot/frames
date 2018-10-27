(** {3 Localinput_lexer_basic_word_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_basic_word_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol sym_lwb ->
    Localinput_lexer_basic_word_bare_symbol_v.name sym_lwb
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol sym_lwd ->
    Localinput_lexer_basic_word_doublequoted_symbol_v.name sym_lwd
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol sym_lwb ->
  Localinput_lexer_basic_word_bare_symbol_v.string_off sym_lwb
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol sym_lwd ->
  Localinput_lexer_basic_word_doublequoted_symbol_v.string_off sym_lwd
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbw =
  Format.sprintf "Localinput_lexer_basic_word_symbol_t.%s" (String.capitalize (name sym_lbw))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbw =
  Format.sprintf "%s \"%s\"" (longname sym_lbw) (string_off sym_lbw)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol sym_lwb -> sym_lwb
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol"
      "Localinput_lexer_basic_word_bare_symbol"
      (name sym_lbw) "check"
;;

let localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol sym_lwd -> sym_lwd
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol"
      "Localinput_lexer_basic_word_doublequoted_symbol"
      (name sym_lbw) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw = 
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
    Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol = function
  | Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_word_bare_anycase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_anycase_constructor sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lwb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
      Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_lwd
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwb = localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_bare_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_bare_symbol sym_lwb
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw =
  if not (is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw)
  then false
  else
    begin
  let sym_lwd = localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw in
  Localinput_lexer_basic_word_doublequoted_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb = 
  Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd = 
  Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba = 
  let sym_lwb = Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc = 
  let sym_lwb = Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl = 
  let sym_lwb = Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu = 
  let sym_lwb = Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda = 
  let sym_lwd = Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc = 
  let sym_lwd = Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl = 
  let sym_lwd = Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;

let localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu = 
  let sym_lwd = Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu in
    localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_word_bare_anycase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol (Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_anycase_constructor s);;

let localinput_lexer_basic_word_bare_capitalized_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol (Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_capitalized_constructor s);;

let localinput_lexer_basic_word_bare_lowercase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol (Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor s);;

let localinput_lexer_basic_word_bare_uppercase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol (Localinput_lexer_basic_word_bare_symbol_v.localinput_lexer_basic_word_bare_uppercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_anycase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol (Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_constructor s);;

let localinput_lexer_basic_word_doublequoted_capitalized_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol (Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_constructor s);;

let localinput_lexer_basic_word_doublequoted_lowercase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol (Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_uppercase_constructor s = localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol (Localinput_lexer_basic_word_doublequoted_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol
      (Localinput_lexer_basic_word_bare_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_bare_symbol:Localinput_lexer_basic_word_bare_symbol_v.ml:make" ->
  try localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol
      (Localinput_lexer_basic_word_doublequoted_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_doublequoted_symbol:Localinput_lexer_basic_word_doublequoted_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_basic_word_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_basic_word subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_basic_word_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_basic_word_symbol:Localinput_lexer_basic_word_symbol_v.ml:make"
;;


(** Localinput_lexer_basic_word_symbol_v at 12:10:41 on 22 Mar 2017. created by version v2.4 of generator *)



