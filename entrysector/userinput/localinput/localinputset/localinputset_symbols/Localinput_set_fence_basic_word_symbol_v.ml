(** {3 Localinput_set_fence_basic_word_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_basic_word_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol sym_lwa ->
    Localinput_set_fence_basic_word_anycase_symbol_v.name sym_lwa
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_capitalized_symbol sym_lwc ->
    Localinput_set_fence_basic_word_capitalized_symbol_v.name sym_lwc
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol sym_lwl ->
    Localinput_set_fence_basic_word_lowercase_symbol_v.name sym_lwl
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_uppercase_symbol sym_lwu ->
    Localinput_set_fence_basic_word_uppercase_symbol_v.name sym_lwu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol sym_lwa ->
  Localinput_set_fence_basic_word_anycase_symbol_v.string_off sym_lwa
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_capitalized_symbol sym_lwc ->
  Localinput_set_fence_basic_word_capitalized_symbol_v.string_off sym_lwc
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol sym_lwl ->
  Localinput_set_fence_basic_word_lowercase_symbol_v.string_off sym_lwl
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_uppercase_symbol sym_lwu ->
  Localinput_set_fence_basic_word_uppercase_symbol_v.string_off sym_lwu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbw =
  Format.sprintf "Localinput_set_fence_basic_word_symbol_t.%s" (String.capitalize (name sym_lbw))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbw =
  Format.sprintf "%s \"%s\"" (longname sym_lbw) (string_off sym_lbw)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol sym_lwa -> sym_lwa
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_basic_word_symbol"
      "Localinput_set_fence_basic_word_anycase_symbol"
      (name sym_lbw) "check"
;;

let localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_capitalized_symbol sym_lwc -> sym_lwc
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_basic_word_symbol"
      "Localinput_set_fence_basic_word_capitalized_symbol"
      (name sym_lbw) "check"
;;

let localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol sym_lwl -> sym_lwl
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_basic_word_symbol"
      "Localinput_set_fence_basic_word_lowercase_symbol"
      (name sym_lbw) "check"
;;

let localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_uppercase_symbol sym_lwu -> sym_lwu
  | sym_lbw -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_basic_word_symbol"
      "Localinput_set_fence_basic_word_uppercase_symbol"
      (name sym_lbw) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_capitalized_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_basic_word_symbol = function
  | Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_uppercase_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_basic_word_anycase_constructor sym_lbw =
  if not (is_localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwa = localinput_set_fence_basic_word_anycase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw in
      Localinput_set_fence_basic_word_anycase_symbol_v.is_localinput_set_fence_basic_word_anycase_constructor sym_lwa
    end
;;

let is_localinput_set_fence_basic_word_capitalized_constructor sym_lbw =
  if not (is_localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwc = localinput_set_fence_basic_word_capitalized_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw in
      Localinput_set_fence_basic_word_capitalized_symbol_v.is_localinput_set_fence_basic_word_capitalized_constructor sym_lwc
    end
;;

let is_localinput_set_fence_basic_word_lowercase_constructor sym_lbw =
  if not (is_localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwl = localinput_set_fence_basic_word_lowercase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw in
      Localinput_set_fence_basic_word_lowercase_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor sym_lwl
    end
;;

let is_localinput_set_fence_basic_word_uppercase_constructor sym_lbw =
  if not (is_localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw)
  then false
  else
    begin
      let sym_lwu = localinput_set_fence_basic_word_uppercase_symbol_off_localinput_set_fence_basic_word_symbol sym_lbw in
      Localinput_set_fence_basic_word_uppercase_symbol_v.is_localinput_set_fence_basic_word_uppercase_constructor sym_lwu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_anycase_symbol sym_lwa = 
  Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_anycase_symbol sym_lwa
;;

let localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_capitalized_symbol sym_lwc = 
  Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_capitalized_symbol sym_lwc
;;

let localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_lowercase_symbol sym_lwl = 
  Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol sym_lwl
;;

let localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_uppercase_symbol sym_lwu = 
  Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_uppercase_symbol sym_lwu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_basic_word_anycase_constructor s = localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_anycase_symbol (Localinput_set_fence_basic_word_anycase_symbol_v.localinput_set_fence_basic_word_anycase_constructor s);;

let localinput_set_fence_basic_word_capitalized_constructor s = localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_capitalized_symbol (Localinput_set_fence_basic_word_capitalized_symbol_v.localinput_set_fence_basic_word_capitalized_constructor s);;

let localinput_set_fence_basic_word_lowercase_constructor s = localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_lowercase_symbol (Localinput_set_fence_basic_word_lowercase_symbol_v.localinput_set_fence_basic_word_lowercase_constructor s);;

let localinput_set_fence_basic_word_uppercase_constructor s = localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_uppercase_symbol (Localinput_set_fence_basic_word_uppercase_symbol_v.localinput_set_fence_basic_word_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_anycase_symbol
      (Localinput_set_fence_basic_word_anycase_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_word_anycase_symbol:Localinput_set_fence_basic_word_anycase_symbol_v.ml:make" ->
  try localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_capitalized_symbol
      (Localinput_set_fence_basic_word_capitalized_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_word_capitalized_symbol:Localinput_set_fence_basic_word_capitalized_symbol_v.ml:make" ->
  try localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_lowercase_symbol
      (Localinput_set_fence_basic_word_lowercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_word_lowercase_symbol:Localinput_set_fence_basic_word_lowercase_symbol_v.ml:make" ->
  try localinput_set_fence_basic_word_symbol_of_localinput_set_fence_basic_word_uppercase_symbol
      (Localinput_set_fence_basic_word_uppercase_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_word_uppercase_symbol:Localinput_set_fence_basic_word_uppercase_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_basic_word_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_basic_word subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_basic_word_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_basic_word_symbol:Localinput_set_fence_basic_word_symbol_v.ml:make"
;;


(** Localinput_set_fence_basic_word_symbol_v at 11:16:53 on 15 May 2017. created by version v2.4 of generator *)



