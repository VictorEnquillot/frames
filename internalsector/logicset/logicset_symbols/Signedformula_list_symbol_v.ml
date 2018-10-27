(** {3 Signedformula_list_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Signedformula_list_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Signedformula_list_symbol_t.Signedformula_list_constructor -> "signedformula_list_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Signedformula_list_symbol_t.Signedformula_list_constructor -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sli =
  Format.sprintf "Signedformula_list_symbol_t.%s" (String.capitalize (name sym_sli))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sli =
  Format.sprintf "%s \"%s\"" (longname sym_sli) (string_off sym_sli)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_signedformula_list_constructor = function
  | Signedformula_list_symbol_t.Signedformula_list_constructor -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let signedformula_list_constructor = Signedformula_list_symbol_t.Signedformula_list_constructor;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "signedformula_list_constructor" -> signedformula_list_constructor
  | _ ->
  failwith "Not_a_topson_bare:Signedformula_list_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Signedformula_list_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Signedformula_list_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Signedformula_list_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Signedformula_list_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Signedformula_list_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Signedformula_list subtype" nam s)
      "it does not exists"
      "Check file Signedformula_list_symbol_v.ml"
    in
    failwith "Not_a_signedformula_list_symbol:Signedformula_list_symbol_v.ml:make"
;;


(** Signedformula_list_symbol_v at 17:8:18 on 9 Jul 2013. created by version v2.3 of generator *)



