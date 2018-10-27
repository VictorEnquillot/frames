(** {3 Units_actual_time_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Current : UNI:Units_actual_time_v";
  "Needs :";
  "Needed-by :";
  "What-is-it :";
  "How-is-it-done :";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_actual_time_t.Atomic_unit_time -> "atomic_time_unit"
  | Units_actual_time_t.Femtosecond -> "femtosecond"
  | Units_actual_time_t.Nanosecond -> "nanosecond"
  | Units_actual_time_t.Picosecond -> "picosecond"
  | Units_actual_time_t.Second -> "second"
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_time_t.Atomic_unit_time -> "atu"
  | Units_actual_time_t.Femtosecond -> "fs"
  | Units_actual_time_t.Nanosecond -> "ns"
  | Units_actual_time_t.Picosecond -> "ps"
  | Units_actual_time_t.Second -> "s"
;;


(** {6 Dimensioning} *)

let dimension uat = "time";;

(** {6 Longnaming} *)

let longname eat =
  Format.sprintf "Units_actual_time_t.%s" (String.capitalize (name eat))
;;

(** {6 Fullnaming} *)

let fullname eat =
  Format.sprintf "%s \"%s\"" (longname eat) (dimension eat)
;;

(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_atomic_time_unit = function
  | Units_actual_time_t.Atomic_unit_time -> true
  | _ -> false
;;

let is_femtosecond = function
  | Units_actual_time_t.Femtosecond -> true
  | _ -> false
;;

let is_nanosecond = function
  | Units_actual_time_t.Nanosecond -> true
  | _ -> false
;;

let is_picosecond = function
  | Units_actual_time_t.Picosecond -> true
  | _ -> false
;;

let is_second = function
  | Units_actual_time_t.Second -> true
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

let atomic_time_unit = Units_actual_time_t.Atomic_unit_time;;

let femtosecond = Units_actual_time_t.Femtosecond;;

let nanosecond = Units_actual_time_t.Nanosecond;;

let picosecond = Units_actual_time_t.Picosecond;;

let second = Units_actual_time_t.Second;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "atomic_time_unit" -> atomic_time_unit
  | "femtosecond" -> femtosecond
  | "nanosecond" -> nanosecond
  | "picosecond" -> picosecond
  | "second" -> second
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_time_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_time_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_time_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_time_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_time_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_time_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_time subtype" nam s)
      "it does not exists"
      "Check file Units_actual_time_v.ml"
    in
    failwith "Not_a_units_actual_time:Units_actual_time_v.ml:make"
;;


(** Units_actual_time_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



