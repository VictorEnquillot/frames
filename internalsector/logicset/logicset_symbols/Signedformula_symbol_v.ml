(** {3 Signedformula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Signedformula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Signedformula_symbol_t.Signedformula_constructor -> "signedformula_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Signedformula_symbol_t.Signedformula_constructor -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sig =
  Format.sprintf "Signedformula_symbol_t.%s" (String.capitalize (name sym_sig))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sig =
  Format.sprintf "%s \"%s\"" (longname sym_sig) (string_off sym_sig)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_signedformula_constructor = function
  | Signedformula_symbol_t.Signedformula_constructor -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let signedformula_constructor = Signedformula_symbol_t.Signedformula_constructor;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "signedformula_constructor" -> signedformula_constructor
  | _ ->
  failwith "Not_a_topson_bare:Signedformula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Signedformula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Signedformula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Signedformula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Signedformula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Signedformula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Signedformula subtype" nam s)
      "it does not exists"
      "Check file Signedformula_symbol_v.ml"
    in
    failwith "Not_a_signedformula_symbol:Signedformula_symbol_v.ml:make"
;;


(** Signedformula_symbol_v at 17:8:18 on 9 Jul 2013. created by version v2.3 of generator *)



