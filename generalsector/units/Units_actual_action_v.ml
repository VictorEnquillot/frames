(** {3 Units_actual_action_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Needs :";
  "Current : UNI:Units_actual_action_v";
  "Needed-by :";
  "What-is-it :";
  "How-is-it-done :";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_actual_action_t.Kilocalorie_second -> "kilocalorie_second"
  | Units_actual_action_t.Kilojoule_second -> "kilojoule_second"
  | Units_actual_action_t.Planck_constant -> "planck_constant"
;;

(** {6 Dimensioning} *)

let dimension = function
  | Units_actual_action_t.Kilocalorie_second -> "action"
  | Units_actual_action_t.Kilojoule_second -> "action"
  | Units_actual_action_t.Planck_constant -> "action"
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_action_t.Kilocalorie_second -> "kcals"
  | Units_actual_action_t.Kilojoule_second -> "kjs"
  | Units_actual_action_t.Planck_constant -> "hbar"
;;

(** {6 Longnaming} *)

let longname uaa =
  Format.sprintf "Units_actual_action_t.%s" (String.capitalize (name uaa))
;;


(** {6 Fullnaming} *)

let fullname uaa =
  Format.sprintf "%s \"%s\"" (longname uaa) (dimension uaa)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_kilocalorie_second = function
  | Units_actual_action_t.Kilocalorie_second -> true
  | _ -> false
;;

let is_kilojoule_second = function
  | Units_actual_action_t.Kilojoule_second -> true
  | _ -> false
;;

let is_planck_constant = function
  | Units_actual_action_t.Planck_constant -> true
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

let kilocalorie_second = Units_actual_action_t.Kilocalorie_second;;

let kilojoule_second = Units_actual_action_t.Kilojoule_second;;

let planck_constant = Units_actual_action_t.Planck_constant;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "kilocalorie_second" -> kilocalorie_second
  | "kilojoule_second" -> kilojoule_second
  | "planck_constant" -> planck_constant
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_action_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_action_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_actual_action_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_action_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_action_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_action_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual_action subtype" nam s)
      "it does not exists"
      "Check file Units_actual_action_v.ml"
    in
    failwith "Not_a_units_actual_action:Units_actual_action_v.ml:make"
;;


(** Units_actual_action_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



