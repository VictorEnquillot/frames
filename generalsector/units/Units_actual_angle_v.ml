(** {3 Units_actual_angle_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Needs :";
  "Current : UNI:Units_actual_angle_v";
  "Needed-by :";
  "What-is-it :";
  "How-is-it-done :";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_actual_angle_t.Degree -> "degree"
  | Units_actual_angle_t.Radian -> "radian"
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_angle_t.Degree -> "deg"
  | Units_actual_angle_t.Radian -> "rad"
;;

(** {6 Dimensioning} *)

let dimension uaa = "angle";;

(** {6 Longnaming} *)

let longname eaa =
  Format.sprintf "Units_actual_angle_t.%s" (String.capitalize (name eaa))
;;

(** {6 Fullnaming} *)

let fullname eaa =
  Format.sprintf "%s \"%s\"" (longname eaa) (dimension eaa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_degree = function
  | Units_actual_angle_t.Degree -> true
  | _ -> false
;;

let is_radian = function
  | Units_actual_angle_t.Radian -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let degree = Units_actual_angle_t.Degree;;

let radian = Units_actual_angle_t.Radian;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "degree" -> degree
  | "radian" -> radian
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_angle_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_angle_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_angle_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_angle_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_angle_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_angle_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_angle subtype" nam s)
      "it does not exists"
      "Check file Units_actual_angle_v.ml"
    in
    failwith "Not_a_units_actual_angle:Units_actual_angle_v.ml:make"
;;


(** Units_actual_angle_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



