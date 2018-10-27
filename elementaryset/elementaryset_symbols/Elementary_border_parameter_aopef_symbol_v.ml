(** {3 Elementary_border_parameter_aopef_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_border_parameter_aopef_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
    Elementary_border_parameter_aopef_coefficient_symbol_v.name sym_eac
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae ->
    Elementary_border_parameter_aopef_exponent_symbol_v.name sym_eae
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac ->
  Elementary_border_parameter_aopef_coefficient_symbol_v.string_off sym_eac
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae ->
  Elementary_border_parameter_aopef_exponent_symbol_v.string_off sym_eae
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_epa =
  Format.sprintf "Elementary_border_parameter_aopef_symbol_t.%s" (String.capitalize (name sym_epa))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_epa =
  Format.sprintf "%s \"%s\"" (longname sym_epa) (string_off sym_epa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_aopef_symbol = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac -> sym_eac
  | sym_epa -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_aopef_symbol"
      "Elementary_border_parameter_aopef_coefficient_symbol"
      (name sym_epa) "check"
;;

let elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_aopef_symbol = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae -> sym_eae
  | sym_epa -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_aopef_symbol"
      "Elementary_border_parameter_aopef_exponent_symbol"
      (name sym_epa) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_aopef_symbol = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_aopef_symbol = function
  | Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_border_parameter_aopef_coefficient_constructor sym_epa =
  if not (is_elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_aopef_symbol sym_epa)
  then false
  else
    begin
      let sym_eac = elementary_border_parameter_aopef_coefficient_symbol_off_elementary_border_parameter_aopef_symbol sym_epa in
      Elementary_border_parameter_aopef_coefficient_symbol_v.is_elementary_border_parameter_aopef_coefficient_constructor sym_eac
    end
;;

let is_elementary_border_parameter_aopef_exponent_constructor sym_epa =
  if not (is_elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_aopef_symbol sym_epa)
  then false
  else
    begin
      let sym_eae = elementary_border_parameter_aopef_exponent_symbol_off_elementary_border_parameter_aopef_symbol sym_epa in
      Elementary_border_parameter_aopef_exponent_symbol_v.is_elementary_border_parameter_aopef_exponent_constructor sym_eae
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_coefficient_symbol sym_eac = 
  Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol sym_eac
;;

let elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_exponent_symbol sym_eae = 
  Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol sym_eae
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_border_parameter_aopef_coefficient_constructor s = elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_coefficient_symbol (Elementary_border_parameter_aopef_coefficient_symbol_v.elementary_border_parameter_aopef_coefficient_constructor s);;

let elementary_border_parameter_aopef_exponent_constructor s = elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_exponent_symbol (Elementary_border_parameter_aopef_exponent_symbol_v.elementary_border_parameter_aopef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_parameter_aopef_coefficient_symbol:Elementary_border_parameter_aopef_coefficient_symbol_v.ml:make" ->
  try elementary_border_parameter_aopef_symbol_of_elementary_border_parameter_aopef_exponent_symbol
      (Elementary_border_parameter_aopef_exponent_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_parameter_aopef_exponent_symbol:Elementary_border_parameter_aopef_exponent_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_border_parameter_aopef_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_border_parameter_aopef subtype" nam s)
      "it does not exists"
      "Check file Elementary_border_parameter_aopef_symbol_v.ml"
    in
    failwith "Not_a_elementary_border_parameter_aopef_symbol:Elementary_border_parameter_aopef_symbol_v.ml:make"
;;


(** Elementary_border_parameter_aopef_symbol_v at 11:52:22 on 9 May 2016. created by version v2.4 of generator *)



