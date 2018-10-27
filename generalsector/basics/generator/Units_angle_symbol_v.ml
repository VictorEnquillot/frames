(** {3 Units_angle_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Units_angle_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Units_angle_symbol_t.Degree -> "degree"
  | Units_angle_symbol_t.Radian -> "radian"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Units_angle_symbol_t.Degree -> ""
  | Units_angle_symbol_t.Radian -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_uan =
  Format.sprintf "Units_angle_symbol_t.%s" (String.capitalize (name sym_uan))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_uan =
  Format.sprintf "%s \"%s\"" (longname sym_uan) (string_off sym_uan)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_degree = function
  | Units_angle_symbol_t.Degree -> true
  | _ -> false
;;

let is_radian = function
  | Units_angle_symbol_t.Radian -> true
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

let degree = Units_angle_symbol_t.Degree;;

let radian = Units_angle_symbol_t.Radian;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "degree" -> degree
  | "radian" -> radian
  | _ ->
  failwith "Not_a_topson_bare:Units_angle_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_angle_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_angle_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_angle_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_angle_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_angle_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_angle subtype" nam s)
      "it does not exists"
      "Check file Units_angle_symbol_v.ml"
    in
    failwith "Not_a_units_angle_symbol:Units_angle_symbol_v.ml:make"
;;


(** Units_angle_symbol_v at 12:42:31 on 17 Oct 2013. created by version v2.3 of generator *)



