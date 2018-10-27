(** {3 Units_canonical_quantum_v} *)


(** {6 Documenting} *)

let documentation () = 
[
  "Current : UNI:Units_canonical_quantum_v";
  "Needs :";
  "Needed-by :";
  "What-is-it :the kind of calculation classical or quantum from Units_canonical";
  "How-is-it-done :";
  "Improve : move to generalsector/calculation";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Units_canonical_quantum_t.Canonical_quantum_action_planck_constant -> "canonical_quantum_action_planck_constant"
  | Units_canonical_quantum_t.Canonical_quantum_angle_radian -> "canonical_quantum_angle_radian"
  | Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge -> "canonical_quantum_charge_electron_charge"
  | Units_canonical_quantum_t.Canonical_quantum_energy_hartree -> "canonical_quantum_energy_hartree"
  | Units_canonical_quantum_t.Canonical_quantum_length_bohr -> "canonical_quantum_length_bohr"
  | Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass -> "canonical_quantum_mass_electron_mass"
  | Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin -> "canonical_quantum_temperature_kelvin"
  | Units_canonical_quantum_t.Canonical_quantum_time_femtosecond -> "canonical_quantum_time_femtosecond"
  | Units_canonical_quantum_t.Canonical_quantum_none -> "canonical_quantum_none"
;;


(** {6 Dimensioning} *)

let dimension = function
  | Units_canonical_quantum_t.Canonical_quantum_action_planck_constant -> "hbar"
  | Units_canonical_quantum_t.Canonical_quantum_angle_radian -> "radian"
  | Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge -> "e"
  | Units_canonical_quantum_t.Canonical_quantum_energy_hartree -> "hartree"
  | Units_canonical_quantum_t.Canonical_quantum_length_bohr -> "bohr"
  | Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass -> "me"
  | Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin -> "kelvin"
  | Units_canonical_quantum_t.Canonical_quantum_time_femtosecond -> "fs"
  | Units_canonical_quantum_t.Canonical_quantum_none -> ""
;;

(** {6 Kinding} *)

let kind uca = "canonical_quantum";;

(** {6 Shortnaming} *)

let shortname s = dimension s;; 

(** {6 Longnaming} *)

let longname ucq =
  Format.sprintf "Units_canonical_quantum_t.%s" (String.capitalize (name ucq))
;;


(** {6 Fullnaming} *)

let fullname ucq =
  Format.sprintf "%s \"%s\"" (longname ucq) (dimension ucq)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_canonical_quantum_action_planck_constant = function
  | Units_canonical_quantum_t.Canonical_quantum_action_planck_constant -> true
  | _ -> false
;;

let is_canonical_quantum_angle_radian = function
  | Units_canonical_quantum_t.Canonical_quantum_angle_radian -> true
  | _ -> false
;;

let is_canonical_quantum_charge_electron_charge = function
  | Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge -> true
  | _ -> false
;;

let is_canonical_quantum_energy_hartree = function
  | Units_canonical_quantum_t.Canonical_quantum_energy_hartree -> true
  | _ -> false
;;

let is_canonical_quantum_length_bohr = function
  | Units_canonical_quantum_t.Canonical_quantum_length_bohr -> true
  | _ -> false
;;

let is_canonical_quantum_mass_electron_mass = function
  | Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass -> true
  | _ -> false
;;

let is_canonical_quantum_temperature_kelvin = function
  | Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin -> true
  | _ -> false
;;

let is_canonical_quantum_time_femtosecond = function
  | Units_canonical_quantum_t.Canonical_quantum_time_femtosecond -> true
  | _ -> false
;;

let is_canonical_quantum_none = function
  | Units_canonical_quantum_t.Canonical_quantum_none -> true
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

let canonical_quantum_action_planck_constant = Units_canonical_quantum_t.Canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = Units_canonical_quantum_t.Canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = Units_canonical_quantum_t.Canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = Units_canonical_quantum_t.Canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = Units_canonical_quantum_t.Canonical_quantum_time_femtosecond;;

let canonical_quantum_none = Units_canonical_quantum_t.Canonical_quantum_none;;


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "canonical_quantum_action_planck_constant" -> canonical_quantum_action_planck_constant
  | "canonical_quantum_angle_radian" -> canonical_quantum_angle_radian
  | "canonical_quantum_charge_electron_charge" -> canonical_quantum_charge_electron_charge
  | "canonical_quantum_energy_hartree" -> canonical_quantum_energy_hartree
  | "canonical_quantum_length_bohr" -> canonical_quantum_length_bohr
  | "canonical_quantum_mass_electron_mass" -> canonical_quantum_mass_electron_mass
  | "canonical_quantum_temperature_kelvin" -> canonical_quantum_temperature_kelvin
  | "canonical_quantum_time_femtosecond" -> canonical_quantum_time_femtosecond
  | "canonical_quantum_none" -> canonical_quantum_none
  | _ ->
  failwith "Not_a_topson_bare:Units_canonical_quantum_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_canonical_quantum_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Units_canonical_quantum_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_canonical_quantum_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_canonical_quantum_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_canonical_quantum_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_canonical_quantum subtype" nam s)
      "it does not exists"
      "Check file Units_canonical_quantum_v.ml"
    in
    failwith "Not_a_units_canonical_quantum:Units_canonical_quantum_v.ml:make"
;;


(** Units_canonical_quantum_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



