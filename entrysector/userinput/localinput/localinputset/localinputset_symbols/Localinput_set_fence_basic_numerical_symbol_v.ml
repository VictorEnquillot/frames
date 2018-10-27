(** {3 Localinput_set_fence_basic_numerical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_set_fence_basic_numerical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol sym_lbf ->
    Localinput_set_fence_basic_float_symbol_v.name sym_lbf
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_integer_symbol sym_lbi ->
    Localinput_set_fence_basic_integer_symbol_v.name sym_lbi
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol sym_lbf ->
  Localinput_set_fence_basic_float_symbol_v.string_off sym_lbf
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_integer_symbol sym_lbi ->
  Localinput_set_fence_basic_integer_symbol_v.string_off sym_lbi
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lbn =
  Format.sprintf "Localinput_set_fence_basic_numerical_symbol_t.%s" (String.capitalize (name sym_lbn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lbn =
  Format.sprintf "%s \"%s\"" (longname sym_lbn) (string_off sym_lbn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_set_fence_basic_float_symbol_off_localinput_set_fence_basic_numerical_symbol = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol sym_lbf -> sym_lbf
  | sym_lbn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_float_symbol_off_localinput_set_fence_basic_numerical_symbol"
      "Localinput_set_fence_basic_float_symbol"
      (name sym_lbn) "check"
;;

let localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_basic_numerical_symbol = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_integer_symbol sym_lbi -> sym_lbi
  | sym_lbn -> Error_messages_v.print_fatal_error
      nam_cod "localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_basic_numerical_symbol"
      "Localinput_set_fence_basic_integer_symbol"
      (name sym_lbn) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_set_fence_basic_float_symbol_off_localinput_set_fence_basic_numerical_symbol = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol _ -> true
  | _ -> false
;;

let is_localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_basic_numerical_symbol = function
  | Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_integer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_set_fence_basic_float_constructor sym_lbn =
  if not (is_localinput_set_fence_basic_float_symbol_off_localinput_set_fence_basic_numerical_symbol sym_lbn)
  then false
  else
    begin
      let sym_lbf = localinput_set_fence_basic_float_symbol_off_localinput_set_fence_basic_numerical_symbol sym_lbn in
      Localinput_set_fence_basic_float_symbol_v.is_localinput_set_fence_basic_float_constructor sym_lbf
    end
;;

let is_localinput_set_fence_basic_integer_constructor sym_lbn =
  if not (is_localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_basic_numerical_symbol sym_lbn)
  then false
  else
    begin
      let sym_lbi = localinput_set_fence_basic_integer_symbol_off_localinput_set_fence_basic_numerical_symbol sym_lbn in
      Localinput_set_fence_basic_integer_symbol_v.is_localinput_set_fence_basic_integer_constructor sym_lbi
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_float_symbol sym_lbf = 
  Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol sym_lbf
;;

let localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_integer_symbol sym_lbi = 
  Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_integer_symbol sym_lbi
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_set_fence_basic_float_constructor s = localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_float_symbol (Localinput_set_fence_basic_float_symbol_v.localinput_set_fence_basic_float_constructor s);;

let localinput_set_fence_basic_integer_constructor s = localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_integer_symbol (Localinput_set_fence_basic_integer_symbol_v.localinput_set_fence_basic_integer_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_float_symbol
      (Localinput_set_fence_basic_float_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_float_symbol:Localinput_set_fence_basic_float_symbol_v.ml:make" ->
  try localinput_set_fence_basic_numerical_symbol_of_localinput_set_fence_basic_integer_symbol
      (Localinput_set_fence_basic_integer_symbol_v.make nam s)
  with Failure "Not_a_localinput_set_fence_basic_integer_symbol:Localinput_set_fence_basic_integer_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_set_fence_basic_numerical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_set_fence_basic_numerical subtype" nam s)
      "it does not exists"
      "Check file Localinput_set_fence_basic_numerical_symbol_v.ml"
    in
    failwith "Not_a_localinput_set_fence_basic_numerical_symbol:Localinput_set_fence_basic_numerical_symbol_v.ml:make"
;;


(** Localinput_set_fence_basic_numerical_symbol_v at 11:16:53 on 15 May 2017. created by version v2.4 of generator *)



