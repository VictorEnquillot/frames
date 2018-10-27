(** {3 Elementary_body_parameter_tuple_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_body_parameter_tuple_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol sym_eta ->
    Elementary_body_parameter_tuple_aopef_symbol_v.name sym_eta
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_ecppef_symbol sym_ete ->
    Elementary_body_parameter_tuple_ecppef_symbol_v.name sym_ete
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol sym_eta ->
  Elementary_body_parameter_tuple_aopef_symbol_v.string_off sym_eta
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_ecppef_symbol sym_ete ->
  Elementary_body_parameter_tuple_ecppef_symbol_v.string_off sym_ete
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ept =
  Format.sprintf "Elementary_body_parameter_tuple_symbol_t.%s" (String.capitalize (name sym_ept))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ept =
  Format.sprintf "%s \"%s\"" (longname sym_ept) (string_off sym_ept)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol sym_eta -> sym_eta
  | sym_ept -> Error_messages_v.print_fatal_error
      nam_cod "elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol"
      "Elementary_body_parameter_tuple_aopef_symbol"
      (name sym_ept) "check"
;;

let elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_ecppef_symbol sym_ete -> sym_ete
  | sym_ept -> Error_messages_v.print_fatal_error
      nam_cod "elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol"
      "Elementary_body_parameter_tuple_ecppef_symbol"
      (name sym_ept) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol _ -> true
  | _ -> false
;;

let is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol = function
  | Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_ecppef_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_body_parameter_tuple_aopef_constructor sym_ept =
  if not (is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept)
  then false
  else
    begin
      let sym_eta = elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept in
      Elementary_body_parameter_tuple_aopef_symbol_v.is_elementary_body_parameter_tuple_aopef_constructor sym_eta
    end
;;

let is_elementary_body_parameter_tuple_ecppef_constructor sym_ept =
  if not (is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept)
  then false
  else
    begin
      let sym_ete = elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept in
      Elementary_body_parameter_tuple_ecppef_symbol_v.is_elementary_body_parameter_tuple_ecppef_constructor sym_ete
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_aopef_symbol sym_eta = 
  Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol sym_eta
;;

let elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_ecppef_symbol sym_ete = 
  Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_ecppef_symbol sym_ete
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_body_parameter_tuple_aopef_constructor s = elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_aopef_symbol (Elementary_body_parameter_tuple_aopef_symbol_v.elementary_body_parameter_tuple_aopef_constructor s);;

let elementary_body_parameter_tuple_ecppef_constructor s = elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_ecppef_symbol (Elementary_body_parameter_tuple_ecppef_symbol_v.elementary_body_parameter_tuple_ecppef_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_aopef_symbol
      (Elementary_body_parameter_tuple_aopef_symbol_v.make nam s)
  with Failure "Not_a_elementary_body_parameter_tuple_aopef_symbol:Elementary_body_parameter_tuple_aopef_symbol_v.ml:make" ->
  try elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_ecppef_symbol
      (Elementary_body_parameter_tuple_ecppef_symbol_v.make nam s)
  with Failure "Not_a_elementary_body_parameter_tuple_ecppef_symbol:Elementary_body_parameter_tuple_ecppef_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_body_parameter_tuple_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_body_parameter_tuple subtype" nam s)
      "it does not exists"
      "Check file Elementary_body_parameter_tuple_symbol_v.ml"
    in
    failwith "Not_a_elementary_body_parameter_tuple_symbol:Elementary_body_parameter_tuple_symbol_v.ml:make"
;;


(** Elementary_body_parameter_tuple_symbol_v at 11:52:19 on 9 May 2016. created by version v2.4 of generator *)



