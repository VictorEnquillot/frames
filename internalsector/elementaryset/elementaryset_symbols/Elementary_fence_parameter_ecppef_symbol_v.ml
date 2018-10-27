(** {3 Elementary_fence_parameter_ecppef_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_parameter_ecppef_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_coefficient_symbol sym_eec ->
    Elementary_fence_parameter_ecppef_coefficient_symbol_v.name sym_eec
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_exponent_symbol sym_eee ->
    Elementary_fence_parameter_ecppef_exponent_symbol_v.name sym_eee
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_coefficient_symbol sym_eec ->
  Elementary_fence_parameter_ecppef_coefficient_symbol_v.string_off sym_eec
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_exponent_symbol sym_eee ->
  Elementary_fence_parameter_ecppef_exponent_symbol_v.string_off sym_eee
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_epe =
  Format.sprintf "Elementary_fence_parameter_ecppef_symbol_t.%s" (String.capitalize (name sym_epe))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_epe =
  Format.sprintf "%s \"%s\"" (longname sym_epe) (string_off sym_epe)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_parameter_ecppef_symbol = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_coefficient_symbol sym_eec -> sym_eec
  | sym_epe -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_parameter_ecppef_symbol"
      "Elementary_fence_parameter_ecppef_coefficient_symbol"
      (name sym_epe) "check"
;;

let elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_parameter_ecppef_symbol = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_exponent_symbol sym_eee -> sym_eee
  | sym_epe -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_parameter_ecppef_symbol"
      "Elementary_fence_parameter_ecppef_exponent_symbol"
      (name sym_epe) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_parameter_ecppef_symbol = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_coefficient_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_parameter_ecppef_symbol = function
  | Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_exponent_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_fence_parameter_ecppef_coefficient_constructor sym_epe =
  if not (is_elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_parameter_ecppef_symbol sym_epe)
  then false
  else
    begin
      let sym_eec = elementary_fence_parameter_ecppef_coefficient_symbol_off_elementary_fence_parameter_ecppef_symbol sym_epe in
      Elementary_fence_parameter_ecppef_coefficient_symbol_v.is_elementary_fence_parameter_ecppef_coefficient_constructor sym_eec
    end
;;

let is_elementary_fence_parameter_ecppef_exponent_constructor sym_epe =
  if not (is_elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_parameter_ecppef_symbol sym_epe)
  then false
  else
    begin
      let sym_eee = elementary_fence_parameter_ecppef_exponent_symbol_off_elementary_fence_parameter_ecppef_symbol sym_epe in
      Elementary_fence_parameter_ecppef_exponent_symbol_v.is_elementary_fence_parameter_ecppef_exponent_constructor sym_eee
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_coefficient_symbol sym_eec = 
  Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_coefficient_symbol sym_eec
;;

let elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_exponent_symbol sym_eee = 
  Elementary_fence_parameter_ecppef_symbol_t.Elementary_fence_parameter_ecppef_exponent_symbol sym_eee
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_fence_parameter_ecppef_coefficient_constructor s = elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_coefficient_symbol (Elementary_fence_parameter_ecppef_coefficient_symbol_v.elementary_fence_parameter_ecppef_coefficient_constructor s);;

let elementary_fence_parameter_ecppef_exponent_constructor s = elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_exponent_symbol (Elementary_fence_parameter_ecppef_exponent_symbol_v.elementary_fence_parameter_ecppef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_coefficient_symbol
      (Elementary_fence_parameter_ecppef_coefficient_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_parameter_ecppef_coefficient_symbol:Elementary_fence_parameter_ecppef_coefficient_symbol_v.ml:make" ->
  try elementary_fence_parameter_ecppef_symbol_of_elementary_fence_parameter_ecppef_exponent_symbol
      (Elementary_fence_parameter_ecppef_exponent_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_parameter_ecppef_exponent_symbol:Elementary_fence_parameter_ecppef_exponent_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_parameter_ecppef_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_parameter_ecppef subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_parameter_ecppef_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_parameter_ecppef_symbol:Elementary_fence_parameter_ecppef_symbol_v.ml:make"
;;


(** Elementary_fence_parameter_ecppef_symbol_v at 9:51:57 on 27 Sep 2016. created by version v2.4 of generator *)



