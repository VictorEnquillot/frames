(** {3 Units_canonical_classical_v} *)


(** {6 Documenting} *)

let documentation () = 
[
 "Current : UNI:Units_canonical_classical_v";
 "Needed-by :";
 "What-is-it :";
 "How-is-it-done :";
 "Author : François Colonna 27 avril 2017 at 09:42:42+02:00 added make of string ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second -> "canonical_classical_action_kilocalorie_second"
  | Units_canonical_classical_t.Canonical_classical_angle_radian -> "canonical_classical_angle_radian"
  | Units_canonical_classical_t.Canonical_classical_charge_coulomb -> "canonical_classical_charge_coulomb"
  | Units_canonical_classical_t.Canonical_classical_energy_kilocalorie -> "canonical_classical_energy_kilocalorie"
  | Units_canonical_classical_t.Canonical_classical_length_angstrom -> "canonical_classical_length_angstrom"
  | Units_canonical_classical_t.Canonical_classical_mass_electron_mass -> "canonical_classical_mass_electron_mass"
  | Units_canonical_classical_t.Canonical_classical_temperature_kelvin -> "canonical_classical_temperature_kelvin"
  | Units_canonical_classical_t.Canonical_classical_time_femtosecond -> "canonical_classical_time_femtosecond"
  | Units_canonical_classical_t.Canonical_classical_none -> "canonical_classical_none"
;;

(** {6 Dimensioning} *)

let dimension = function
  | Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second -> "s"
  | Units_canonical_classical_t.Canonical_classical_angle_radian -> "radian"
  | Units_canonical_classical_t.Canonical_classical_charge_coulomb -> "coulomb"
  | Units_canonical_classical_t.Canonical_classical_energy_kilocalorie -> "kcal"
  | Units_canonical_classical_t.Canonical_classical_length_angstrom -> "angstrom"
  | Units_canonical_classical_t.Canonical_classical_mass_electron_mass -> "em"
  | Units_canonical_classical_t.Canonical_classical_temperature_kelvin -> "k"
  | Units_canonical_classical_t.Canonical_classical_time_femtosecond -> "fs"
  | Units_canonical_classical_t.Canonical_classical_none -> ""
;;

(** {6 Kinding} *)

let kind uca = "canonical_classical";;

(** {6 Shortnaming} *)

let shortname s = dimension s;; 

(** {6 Longnaming} *)

let longname ucc =
  Format.sprintf "Units_canonical_classical_t.%s" (String.capitalize (name ucc))
;;


(** {6 Fullnaming} *)

let fullname ucc =
  Format.sprintf "%s \"%s\"" (longname ucc) (dimension ucc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_canonical_classical_action_kilocalorie_second = function
  | Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second -> true
  | _ -> false
;;

let is_canonical_classical_angle_radian = function
  | Units_canonical_classical_t.Canonical_classical_angle_radian -> true
  | _ -> false
;;

let is_canonical_classical_charge_coulomb = function
  | Units_canonical_classical_t.Canonical_classical_charge_coulomb -> true
  | _ -> false
;;

let is_canonical_classical_energy_kilocalorie = function
  | Units_canonical_classical_t.Canonical_classical_energy_kilocalorie -> true
  | _ -> false
;;

let is_canonical_classical_length_angstrom = function
  | Units_canonical_classical_t.Canonical_classical_length_angstrom -> true
  | _ -> false
;;

let is_canonical_classical_mass_electron_mass = function
  | Units_canonical_classical_t.Canonical_classical_mass_electron_mass -> true
  | _ -> false
;;

let is_canonical_classical_temperature_kelvin = function
  | Units_canonical_classical_t.Canonical_classical_temperature_kelvin -> true
  | _ -> false
;;

let is_canonical_classical_time_femtosecond = function
  | Units_canonical_classical_t.Canonical_classical_time_femtosecond -> true
  | _ -> false
;;

let is_canonical_classical_none = function
  | Units_canonical_classical_t.Canonical_classical_none -> true
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

let canonical_classical_action_kilocalorie_second = Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = Units_canonical_classical_t.Canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = Units_canonical_classical_t.Canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = Units_canonical_classical_t.Canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = Units_canonical_classical_t.Canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = Units_canonical_classical_t.Canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = Units_canonical_classical_t.Canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = Units_canonical_classical_t.Canonical_classical_time_femtosecond;;

let canonical_classical_none = Units_canonical_classical_t.Canonical_classical_none;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "canonical_classical_action_kilocalorie_second" -> canonical_classical_action_kilocalorie_second
  | "canonical_classical_angle_radian" -> canonical_classical_angle_radian
  | "canonical_classical_charge_coulomb" -> canonical_classical_charge_coulomb
  | "canonical_classical_energy_kilocalorie" -> canonical_classical_energy_kilocalorie
  | "canonical_classical_length_angstrom" -> canonical_classical_length_angstrom
  | "canonical_classical_mass_electron_mass" -> canonical_classical_mass_electron_mass
  | "canonical_classical_temperature_kelvin" -> canonical_classical_temperature_kelvin
  | "canonical_classical_time_femtosecond" -> canonical_classical_time_femtosecond
  | "none" -> canonical_classical_none
  | "action_kilocalorie" -> canonical_classical_action_kilocalorie_second
  | "angle" -> canonical_classical_angle_radian
  | "charge" -> canonical_classical_charge_coulomb
  | "energy" -> canonical_classical_energy_kilocalorie
  | "length" -> canonical_classical_length_angstrom
  | "mass" -> canonical_classical_mass_electron_mass
  | "temperature" -> canonical_classical_temperature_kelvin
  | "time" -> canonical_classical_time_femtosecond
  | _ ->
  failwith "Not_a_topson_bare:Units_canonical_classical_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_canonical_classical_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_canonical_classical_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_canonical_classical_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_canonical_classical_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_canonical_classical_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_canonical_classical subtype" nam s)
      "it does not exists"
      "Check file Units_canonical_classical_v.ml"
    in
    failwith "Not_a_units_canonical_classical:Units_canonical_classical_v.ml:make"
;;


(** Units_canonical_classical_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



