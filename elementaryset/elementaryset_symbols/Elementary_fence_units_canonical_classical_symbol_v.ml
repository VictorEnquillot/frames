(** {3 Elementary_fence_units_canonical_classical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_canonical_classical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second -> "canonical_classical_action_kilocalorie_second"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian -> "canonical_classical_angle_radian"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb -> "canonical_classical_charge_coulomb"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie -> "canonical_classical_energy_kilocalorie"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom -> "canonical_classical_length_angstrom"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass -> "canonical_classical_mass_electron_mass"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin -> "canonical_classical_temperature_kelvin"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond -> "canonical_classical_time_femtosecond"
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none -> "canonical_classical_none"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond -> ""
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ecc =
  Format.sprintf "Elementary_fence_units_canonical_classical_symbol_t.%s" (String.capitalize (name sym_ecc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ecc =
  Format.sprintf "%s \"%s\"" (longname sym_ecc) (string_off sym_ecc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_canonical_classical_action_kilocalorie_second = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second -> true
  | _ -> false
;;

let is_canonical_classical_angle_radian = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian -> true
  | _ -> false
;;

let is_canonical_classical_charge_coulomb = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb -> true
  | _ -> false
;;

let is_canonical_classical_energy_kilocalorie = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie -> true
  | _ -> false
;;

let is_canonical_classical_length_angstrom = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom -> true
  | _ -> false
;;

let is_canonical_classical_mass_electron_mass = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass -> true
  | _ -> false
;;

let is_canonical_classical_temperature_kelvin = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin -> true
  | _ -> false
;;

let is_canonical_classical_time_femtosecond = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond -> true
  | _ -> false
;;

let is_canonical_classical_none = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none -> true
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

let canonical_classical_action_kilocalorie_second = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond;;

let canonical_classical_none = Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

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
  | "canonical_classical_none" -> canonical_classical_none
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_canonical_classical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_canonical_classical subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_canonical_classical_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_canonical_classical_symbol:Elementary_fence_units_canonical_classical_symbol_v.ml:make"
;;


(** Elementary_fence_units_canonical_classical_symbol_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



