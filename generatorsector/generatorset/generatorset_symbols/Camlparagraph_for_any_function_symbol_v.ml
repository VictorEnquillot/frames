(** {3 Camlparagraph_for_any_function_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_any_function_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal -> "let_nam_cod_equal"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_faf =
  Format.sprintf "Camlparagraph_for_any_function_symbol_t.%s" (String.capitalize (name sym_faf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_faf =
  Format.sprintf "%s \"%s\"" (longname sym_faf) (string_off sym_faf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_let_nam_cod_equal = function
  | Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let let_nam_cod_equal = Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "let_nam_cod_equal" -> let_nam_cod_equal
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_any_function_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_any_function subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_any_function_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_any_function_symbol:Camlparagraph_for_any_function_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_any_function implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



