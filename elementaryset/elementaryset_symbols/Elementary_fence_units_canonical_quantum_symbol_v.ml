(** {3 Elementary_fence_units_canonical_quantum_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_canonical_quantum_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant -> "canonical_quantum_action_planck_constant"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian -> "canonical_quantum_angle_radian"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge -> "canonical_quantum_charge_electron_charge"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree -> "canonical_quantum_energy_hartree"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr -> "canonical_quantum_length_bohr"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass -> "canonical_quantum_mass_electron_mass"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin -> "canonical_quantum_temperature_kelvin"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond -> "canonical_quantum_time_femtosecond"
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none -> "canonical_quantum_none"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond -> ""
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ecq =
  Format.sprintf "Elementary_fence_units_canonical_quantum_symbol_t.%s" (String.capitalize (name sym_ecq))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ecq =
  Format.sprintf "%s \"%s\"" (longname sym_ecq) (string_off sym_ecq)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_canonical_quantum_action_planck_constant = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant -> true
  | _ -> false
;;

let is_canonical_quantum_angle_radian = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian -> true
  | _ -> false
;;

let is_canonical_quantum_charge_electron_charge = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge -> true
  | _ -> false
;;

let is_canonical_quantum_energy_hartree = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree -> true
  | _ -> false
;;

let is_canonical_quantum_length_bohr = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr -> true
  | _ -> false
;;

let is_canonical_quantum_mass_electron_mass = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass -> true
  | _ -> false
;;

let is_canonical_quantum_temperature_kelvin = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin -> true
  | _ -> false
;;

let is_canonical_quantum_time_femtosecond = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond -> true
  | _ -> false
;;

let is_canonical_quantum_none = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none -> true
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

let canonical_quantum_action_planck_constant = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond;;

let canonical_quantum_none = Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

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
  failwith "Not_a_topson_bare:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_canonical_quantum_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_canonical_quantum subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_canonical_quantum_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_canonical_quantum_symbol:Elementary_fence_units_canonical_quantum_symbol_v.ml:make"
;;


(** Elementary_fence_units_canonical_quantum_symbol_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



