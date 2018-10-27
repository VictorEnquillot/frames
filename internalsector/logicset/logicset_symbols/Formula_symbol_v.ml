(** {3 Formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Formula_symbol_t.Variable _ -> "variable"
  | Formula_symbol_t.Formula_true -> "formula_true"
  | Formula_symbol_t.Formula_false -> "formula_false"
  | Formula_symbol_t.Formula_recursive -> "formula_recursive"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Formula_symbol_t.Variable s -> s
  | Formula_symbol_t.Formula_true -> ""
  | Formula_symbol_t.Formula_false -> ""
  | Formula_symbol_t.Formula_recursive -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_for =
  Format.sprintf "Formula_symbol_t.%s" (String.capitalize (name sym_for))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_for =
  Format.sprintf "%s \"%s\"" (longname sym_for) (string_off sym_for)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_formula_true = function
  | Formula_symbol_t.Formula_true -> true
  | _ -> false
;;

let is_formula_false = function
  | Formula_symbol_t.Formula_false -> true
  | _ -> false
;;

let is_formula_recursive = function
  | Formula_symbol_t.Formula_recursive -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_variable = function
  | Formula_symbol_t.Variable _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let formula_true = Formula_symbol_t.Formula_true;;

let formula_false = Formula_symbol_t.Formula_false;;

let formula_recursive = Formula_symbol_t.Formula_recursive;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let variable s = Formula_symbol_t.Variable s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "formula_true" -> formula_true
  | "formula_false" -> formula_false
  | "formula_recursive" -> formula_recursive
  | _ ->
  failwith "Not_a_topson_bare:Formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "variable" -> variable s
  | _ ->
  failwith "Not_a_topson_ofstring:Formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Formula subtype" nam s)
      "it does not exists"
      "Check file Formula_symbol_v.ml"
    in
    failwith "Not_a_formula_symbol:Formula_symbol_v.ml:make"
;;


(** Formula_symbol_v at 17:8:18 on 9 Jul 2013. created by version v2.3 of generator *)



