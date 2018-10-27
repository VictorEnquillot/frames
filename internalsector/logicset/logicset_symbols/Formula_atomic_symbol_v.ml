(** {3 Formula_atomic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Formula_atomic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Formula_atomic_symbol_t.Variable _ -> "variable"
  | Formula_atomic_symbol_t.Formula_true -> "formula_true"
  | Formula_atomic_symbol_t.Formula_false -> "formula_false"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Formula_atomic_symbol_t.Variable s -> s
  | Formula_atomic_symbol_t.Formula_true -> ""
  | Formula_atomic_symbol_t.Formula_false -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fat =
  Format.sprintf "Formula_atomic_symbol_t.%s" (String.capitalize (name sym_fat))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fat =
  Format.sprintf "%s \"%s\"" (longname sym_fat) (string_off sym_fat)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_formula_true = function
  | Formula_atomic_symbol_t.Formula_true -> true
  | _ -> false
;;

let is_formula_false = function
  | Formula_atomic_symbol_t.Formula_false -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_variable = function
  | Formula_atomic_symbol_t.Variable _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let formula_true = Formula_atomic_symbol_t.Formula_true;;

let formula_false = Formula_atomic_symbol_t.Formula_false;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let variable s = Formula_atomic_symbol_t.Variable s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "formula_true" -> formula_true
  | "formula_false" -> formula_false
  | _ ->
  failwith "Not_a_topson_bare:Formula_atomic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "variable" -> variable s
  | _ ->
  failwith "Not_a_topson_ofstring:Formula_atomic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Formula_atomic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Formula_atomic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Formula_atomic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Formula_atomic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Formula_atomic subtype" nam s)
      "it does not exists"
      "Check file Formula_atomic_symbol_v.ml"
    in
    failwith "Not_a_formula_atomic_symbol:Formula_atomic_symbol_v.ml:make"
;;


(** Formula_atomic_symbol_v at 17:21:51 on 13 Jul 2013. created by version v2.3 of generator *)



