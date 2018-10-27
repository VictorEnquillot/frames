(** {3 Elementary_body_parameter_tuple_aopef_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_body_parameter_tuple_aopef_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor _ -> "elementary_body_parameter_tuple_aopef_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eta =
  Format.sprintf "Elementary_body_parameter_tuple_aopef_symbol_t.%s" (String.capitalize (name sym_eta))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eta =
  Format.sprintf "%s \"%s\"" (longname sym_eta) (string_off sym_eta)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_elementary_body_parameter_tuple_aopef_constructor = function
  | Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let elementary_body_parameter_tuple_aopef_constructor s = Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "elementary_body_parameter_tuple_aopef_constructor" -> elementary_body_parameter_tuple_aopef_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_body_parameter_tuple_aopef subtype" nam s)
      "it does not exists"
      "Check file Elementary_body_parameter_tuple_aopef_symbol_v.ml"
    in
    failwith "Not_a_elementary_body_parameter_tuple_aopef_symbol:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make"
;;


(** Elementary_body_parameter_tuple_aopef_symbol_v at 11:52:19 on 9 May 2016. created by version v2.4 of generator *)



