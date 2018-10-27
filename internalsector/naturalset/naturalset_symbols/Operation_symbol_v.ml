(** {3 Operation_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SNAT:Operation_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Operation_symbol_t.Successor -> "successor"
  | Operation_symbol_t.Addition -> "addition"
  | Operation_symbol_t.Multiplication -> "multiplication"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Operation_symbol_t.Successor -> ""
  | Operation_symbol_t.Addition -> ""
  | Operation_symbol_t.Multiplication -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ope =
  Format.sprintf "Operation_symbol_t.%s" (String.capitalize (name sym_ope))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ope =
  Format.sprintf "%s \"%s\"" (longname sym_ope) (string_off sym_ope)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_successor = function
  | Operation_symbol_t.Successor -> true
  | _ -> false
;;

let is_addition = function
  | Operation_symbol_t.Addition -> true
  | _ -> false
;;

let is_multiplication = function
  | Operation_symbol_t.Multiplication -> true
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

let successor = Operation_symbol_t.Successor;;

let addition = Operation_symbol_t.Addition;;

let multiplication = Operation_symbol_t.Multiplication;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "successor" -> successor
  | "addition" -> addition
  | "multiplication" -> multiplication
  | _ ->
  failwith "Not_a_topson_bare:Operation_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Operation_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Operation_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Operation_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Operation_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Operation_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Operation subtype" nam s)
      "it does not exists"
      "Check file Operation_symbol_v.ml"
    in
    failwith "Not_a_operation_symbol:Operation_symbol_v.ml:make"
;;


(** Operation_symbol_v at 21:7:9 on 15 Jul 2013. created by version v2.4 of generator *)



