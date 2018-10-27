(** {3 Localinput_lexer_basic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_basic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_boolean_symbol sym_lbb ->
    Localinput_lexer_basic_boolean_symbol_v.name sym_lbb
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol sym_lbf ->
    Localinput_lexer_basic_float_symbol_v.name sym_lbf
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol sym_lbi ->
    Localinput_lexer_basic_integer_symbol_v.name sym_lbi
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol sym_lbs ->
    Localinput_lexer_basic_string_symbol_v.name sym_lbs
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol sym_lbw ->
    Localinput_lexer_basic_word_symbol_v.name sym_lbw
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_boolean_symbol sym_lbb ->
  Localinput_lexer_basic_boolean_symbol_v.string_off sym_lbb
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol sym_lbf ->
  Localinput_lexer_basic_float_symbol_v.string_off sym_lbf
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol sym_lbi ->
  Localinput_lexer_basic_integer_symbol_v.string_off sym_lbi
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol sym_lbs ->
  Localinput_lexer_basic_string_symbol_v.string_off sym_lbs
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol sym_lbw ->
  Localinput_lexer_basic_word_symbol_v.string_off sym_lbw
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_llb =
  Format.sprintf "Localinput_lexer_basic_symbol_t.%s" (String.capitalize (name sym_llb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_llb =
  Format.sprintf "%s \"%s\"" (longname sym_llb) (string_off sym_llb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_boolean_symbol sym_lbb -> sym_lbb
  | sym_llb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol"
      "Localinput_lexer_basic_boolean_symbol"
      (name sym_llb) "check"
;;

let localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol sym_lbf -> sym_lbf
  | sym_llb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol"
      "Localinput_lexer_basic_float_symbol"
      (name sym_llb) "check"
;;

let localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol sym_lbi -> sym_lbi
  | sym_llb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol"
      "Localinput_lexer_basic_integer_symbol"
      (name sym_llb) "check"
;;

let localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol sym_lbs -> sym_lbs
  | sym_llb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol"
      "Localinput_lexer_basic_string_symbol"
      (name sym_llb) "check"
;;

let localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol sym_lbw -> sym_lbw
  | sym_llb -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol"
      "Localinput_lexer_basic_word_symbol"
      (name sym_llb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol sym_lbs
;;

let localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol sym_lbs
;;

let localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb = 
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
    Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_boolean_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol = function
  | Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_basic_boolean_constructor sym_llb =
  if not (is_localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbb = localinput_lexer_basic_boolean_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_boolean_symbol_v.is_localinput_lexer_basic_boolean_constructor sym_lbb
    end
;;

let is_localinput_lexer_basic_float_constructor sym_llb =
  if not (is_localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbf = localinput_lexer_basic_float_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_float_symbol_v.is_localinput_lexer_basic_float_constructor sym_lbf
    end
;;

let is_localinput_lexer_basic_integer_constructor sym_llb =
  if not (is_localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbi = localinput_lexer_basic_integer_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_integer_symbol_v.is_localinput_lexer_basic_integer_constructor sym_lbi
    end
;;

let is_localinput_lexer_basic_string_bare_constructor sym_llb =
  if not (is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_string_symbol_v.is_localinput_lexer_basic_string_bare_constructor sym_lbs
    end
;;

let is_localinput_lexer_basic_string_doublequoted_constructor sym_llb =
  if not (is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_string_symbol_v.is_localinput_lexer_basic_string_doublequoted_constructor sym_lbs
    end
;;

let is_localinput_lexer_basic_word_bare_anycase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_anycase_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
      let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
      Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_constructor sym_lbw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_string_symbol_v.is_localinput_lexer_basic_string_bare_symbol_off_localinput_lexer_basic_string_symbol sym_lbs
    end
;;

let is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbs = localinput_lexer_basic_string_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_string_symbol_v.is_localinput_lexer_basic_string_doublequoted_symbol_off_localinput_lexer_basic_string_symbol sym_lbs
    end
;;

let is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_bare_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;

let is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_symbol sym_llb =
  if not (is_localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb)
  then false
  else
    begin
  let sym_lbw = localinput_lexer_basic_word_symbol_off_localinput_lexer_basic_symbol sym_llb in
  Localinput_lexer_basic_word_symbol_v.is_localinput_lexer_basic_word_doublequoted_uppercase_symbol_off_localinput_lexer_basic_word_symbol sym_lbw
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_boolean_symbol sym_lbb = 
  Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_boolean_symbol sym_lbb
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_float_symbol sym_lbf = 
  Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol sym_lbf
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_integer_symbol sym_lbi = 
  Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol sym_lbi
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol sym_lbs = 
  Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol sym_lbs
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw = 
  Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol sym_lbw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_bare_symbol sym_lsb = 
  let sym_lbs = Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_bare_symbol sym_lsb in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol sym_lbs
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_doublequoted_symbol sym_lsd = 
  let sym_lbs = Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_symbol_of_localinput_lexer_basic_string_doublequoted_symbol sym_lsd in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol sym_lbs
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_symbol sym_lwb in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_anycase_symbol sym_lba in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_capitalized_symbol sym_lbc in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_lowercase_symbol sym_lbl in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_bare_uppercase_symbol sym_lbu in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_symbol sym_lwd in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_anycase_symbol sym_lda in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_capitalized_symbol sym_ldc in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_lowercase_symbol sym_ldl in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;

let localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu = 
  let sym_lbw = Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_symbol_of_localinput_lexer_basic_word_doublequoted_uppercase_symbol sym_ldu in
    localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol sym_lbw
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_basic_boolean_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_boolean_symbol (Localinput_lexer_basic_boolean_symbol_v.localinput_lexer_basic_boolean_constructor s);;

let localinput_lexer_basic_float_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_float_symbol (Localinput_lexer_basic_float_symbol_v.localinput_lexer_basic_float_constructor s);;

let localinput_lexer_basic_integer_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_integer_symbol (Localinput_lexer_basic_integer_symbol_v.localinput_lexer_basic_integer_constructor s);;

let localinput_lexer_basic_string_bare_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol (Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_bare_constructor s);;

let localinput_lexer_basic_string_doublequoted_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol (Localinput_lexer_basic_string_symbol_v.localinput_lexer_basic_string_doublequoted_constructor s);;

let localinput_lexer_basic_word_bare_anycase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_anycase_constructor s);;

let localinput_lexer_basic_word_bare_capitalized_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_capitalized_constructor s);;

let localinput_lexer_basic_word_bare_lowercase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor s);;

let localinput_lexer_basic_word_bare_uppercase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_bare_uppercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_anycase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_constructor s);;

let localinput_lexer_basic_word_doublequoted_capitalized_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_constructor s);;

let localinput_lexer_basic_word_doublequoted_lowercase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_constructor s);;

let localinput_lexer_basic_word_doublequoted_uppercase_constructor s = localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol (Localinput_lexer_basic_word_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_basic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_basic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_basic_symbol_of_localinput_lexer_basic_boolean_symbol
      (Localinput_lexer_basic_boolean_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_boolean_symbol:Localinput_lexer_basic_boolean_symbol_v.ml:make" ->
  try localinput_lexer_basic_symbol_of_localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_float_symbol:Localinput_lexer_basic_float_symbol_v.ml:make" ->
  try localinput_lexer_basic_symbol_of_localinput_lexer_basic_integer_symbol
      (Localinput_lexer_basic_integer_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_integer_symbol:Localinput_lexer_basic_integer_symbol_v.ml:make" ->
  try localinput_lexer_basic_symbol_of_localinput_lexer_basic_string_symbol
      (Localinput_lexer_basic_string_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_string_symbol:Localinput_lexer_basic_string_symbol_v.ml:make" ->
  try localinput_lexer_basic_symbol_of_localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_basic_word_symbol:Localinput_lexer_basic_word_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_basic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_basic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_basic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_basic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_basic subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_basic_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_basic_symbol:Localinput_lexer_basic_symbol_v.ml:make"
;;


(** Localinput_lexer_basic_symbol_v at 12:10:40 on 22 Mar 2017. created by version v2.4 of generator *)



