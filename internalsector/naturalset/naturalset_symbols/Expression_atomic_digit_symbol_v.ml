(** {3 Expression_atomic_digit_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SNAT:Expression_atomic_digit_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Expression_atomic_digit_symbol_t.Zero -> "zero"
  | Expression_atomic_digit_symbol_t.One -> "one"
  | Expression_atomic_digit_symbol_t.Two -> "two"
  | Expression_atomic_digit_symbol_t.Three -> "three"
  | Expression_atomic_digit_symbol_t.Four -> "four"
  | Expression_atomic_digit_symbol_t.Five -> "five"
  | Expression_atomic_digit_symbol_t.Six -> "six"
  | Expression_atomic_digit_symbol_t.Seven -> "seven"
  | Expression_atomic_digit_symbol_t.Eight -> "eight"
  | Expression_atomic_digit_symbol_t.Nine -> "nine"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Expression_atomic_digit_symbol_t.Zero -> ""
  | Expression_atomic_digit_symbol_t.One -> ""
  | Expression_atomic_digit_symbol_t.Two -> ""
  | Expression_atomic_digit_symbol_t.Three -> ""
  | Expression_atomic_digit_symbol_t.Four -> ""
  | Expression_atomic_digit_symbol_t.Five -> ""
  | Expression_atomic_digit_symbol_t.Six -> ""
  | Expression_atomic_digit_symbol_t.Seven -> ""
  | Expression_atomic_digit_symbol_t.Eight -> ""
  | Expression_atomic_digit_symbol_t.Nine -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ead =
  Format.sprintf "Expression_atomic_digit_symbol_t.%s" (String.capitalize (name sym_ead))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ead =
  Format.sprintf "%s \"%s\"" (longname sym_ead) (string_off sym_ead)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_zero = function
  | Expression_atomic_digit_symbol_t.Zero -> true
  | _ -> false
;;

let is_one = function
  | Expression_atomic_digit_symbol_t.One -> true
  | _ -> false
;;

let is_two = function
  | Expression_atomic_digit_symbol_t.Two -> true
  | _ -> false
;;

let is_three = function
  | Expression_atomic_digit_symbol_t.Three -> true
  | _ -> false
;;

let is_four = function
  | Expression_atomic_digit_symbol_t.Four -> true
  | _ -> false
;;

let is_five = function
  | Expression_atomic_digit_symbol_t.Five -> true
  | _ -> false
;;

let is_six = function
  | Expression_atomic_digit_symbol_t.Six -> true
  | _ -> false
;;

let is_seven = function
  | Expression_atomic_digit_symbol_t.Seven -> true
  | _ -> false
;;

let is_eight = function
  | Expression_atomic_digit_symbol_t.Eight -> true
  | _ -> false
;;

let is_nine = function
  | Expression_atomic_digit_symbol_t.Nine -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let zero = Expression_atomic_digit_symbol_t.Zero;;

let one = Expression_atomic_digit_symbol_t.One;;

let two = Expression_atomic_digit_symbol_t.Two;;

let three = Expression_atomic_digit_symbol_t.Three;;

let four = Expression_atomic_digit_symbol_t.Four;;

let five = Expression_atomic_digit_symbol_t.Five;;

let six = Expression_atomic_digit_symbol_t.Six;;

let seven = Expression_atomic_digit_symbol_t.Seven;;

let eight = Expression_atomic_digit_symbol_t.Eight;;

let nine = Expression_atomic_digit_symbol_t.Nine;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "zero" -> zero
  | "one" -> one
  | "two" -> two
  | "three" -> three
  | "four" -> four
  | "five" -> five
  | "six" -> six
  | "seven" -> seven
  | "eight" -> eight
  | "nine" -> nine
  | _ ->
  failwith "Not_a_topson_bare:Expression_atomic_digit_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Expression_atomic_digit_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Expression_atomic_digit_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Expression_atomic_digit_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Expression_atomic_digit_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Expression_atomic_digit_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Expression_atomic_digit subtype" nam s)
      "it does not exists"
      "Check file Expression_atomic_digit_symbol_v.ml"
    in
    failwith "Not_a_expression_atomic_digit_symbol:Expression_atomic_digit_symbol_v.ml:make"
;;


(** Expression_atomic_digit_symbol_v at 21:7:9 on 15 Jul 2013. created by version v2.4 of generator *)



