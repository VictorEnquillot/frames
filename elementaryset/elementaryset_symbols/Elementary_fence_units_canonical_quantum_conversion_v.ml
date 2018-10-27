(** {3 Elementary_fence_units_canonical_quantum_conversion_symbol_v} *)

(** {6 Documenting_for_symbol} *)

let documentation () = 
[
 "Current : SELE:Elementary_fence_units_symbol_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it: it is the Set of Units used for Quantum Calculations";
 "How-is-it-done: ";
 "Reference : https://en.wikipedia.org/wiki/Conversion_of_units";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Definition} *)

(* let canonical_action = Elementary_fence_units_symbol_v.planck_constant;; *)
(* let canonical_angle = Elementary_fence_units_symbol_v.radian;; *)
(* let canonical_charge = Elementary_fence_units_symbol_v.electron_charge;; *)
(* let canonical_energy = Elementary_fence_units_symbol_v.hartree;; *)
(* let canonical_length = Elementary_fence_units_symbol_v.bohr;; *)
(* let canonical_mass = Elementary_fence_units_symbol_v.electron_mass;; *)
(* let canonical_temperature = Elementary_fence_units_symbol_v.kelvin;; *)
(* let canonical_time = Elementary_fence_units_symbol_v.femtosecond;; *)
(* let canonical_none = Elementary_fence_units_symbol_v.none;; *)


(** {6 Canonilizing} *)

let elementary_fence_units_canonical_quantum_symbol_of_elementary_fence_units_actual_symbol = function 
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol _ ->
      Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_quantum_symbol = function
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_action_planck_constant ->
      Elementary_fence_units_actual_symbol_v.planck_constant
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_angle_radian ->
      Elementary_fence_units_actual_symbol_v.radian
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_charge_electron_charge ->
      Elementary_fence_units_actual_symbol_v.electron_charge
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_energy_hartree ->
      Elementary_fence_units_actual_symbol_v.hartree
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr ->
      Elementary_fence_units_actual_symbol_v.bohr
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_mass_electron_mass ->
      Elementary_fence_units_actual_symbol_v.electron_mass
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_temperature_kelvin ->
      Elementary_fence_units_actual_symbol_v.kelvin
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_time_femtosecond ->
      Elementary_fence_units_actual_symbol_v.femtosecond
  | Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_none ->
      Elementary_fence_units_actual_symbol_v.unitless
;;

(** {6 Conversion Factor} *)

let conversion_factor_of_elementary_fence_units_actual_action_symbol = function 
 | Elementary_fence_units_actual_action_symbol_t.Kilocalorie_second -> 4.1855e31 /. 1.05457168
 | Elementary_fence_units_actual_action_symbol_t.Kilojoule_second -> 1.05457168e-31
 | Elementary_fence_units_actual_action_symbol_t.Planck_constant -> Constants_v.one
;;

let conversion_factor_of_elementary_fence_units_actual_angle_symbol = function 
  | Elementary_fence_units_actual_angle_symbol_t.Degree -> Constants_v.radian_of_degree
  | Elementary_fence_units_actual_angle_symbol_t.Radian -> Constants_v.one
;;

let conversion_factor_of_elementary_fence_units_actual_charge_symbol = function 
  | Elementary_fence_units_actual_charge_symbol_t.Coulomb -> Constants_v.radian_of_degree
  | Elementary_fence_units_actual_charge_symbol_t.Electron_charge-> Constants_v.one
;;

let conversion_factor_of_elementary_fence_units_actual_energy_symbol = function 
  | Elementary_fence_units_actual_energy_symbol_t.Calorie -> 4.1855e18 /. 4.359744
  | Elementary_fence_units_actual_energy_symbol_t.Electron_volt -> 0.1602176565 /. 4.359744
  | Elementary_fence_units_actual_energy_symbol_t.Hartree -> Constants_v.one
  | Elementary_fence_units_actual_energy_symbol_t.Joule -> 1.e18 /. 4.359744
  | Elementary_fence_units_actual_energy_symbol_t.Kilocalorie -> 4.1855e15 /. 4.359744
  | Elementary_fence_units_actual_energy_symbol_t.Kilojoule -> 1.e15 /. 4.359744
;;

let conversion_factor_of_elementary_fence_units_actual_length_symbol = function 
  | Elementary_fence_units_actual_length_symbol_t.Angstrom -> 10. /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Bohr -> Constants_v.one
  | Elementary_fence_units_actual_length_symbol_t.Centimeter -> 1.e13 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Decameter -> 1.e10 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Decimeter -> 1.e12 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Foot -> 0.3048e11 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Inch -> 0.0254 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Kilometer -> 1.e8 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Light_year -> 9.4607304725808e26 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Meter -> 1.e11 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Millimeter -> 1.e14 /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Nanometer -> 1. /. 5.2917721092
  | Elementary_fence_units_actual_length_symbol_t.Yard -> 0.9144e11 /. 5.2917721092
;;

let conversion_factor_of_elementary_fence_units_actual_mass_symbol = function 
  | Elementary_fence_units_actual_mass_symbol_t.Electron_mass -> Constants_v.one
  | Elementary_fence_units_actual_mass_symbol_t.Atomic_mass_unit -> 1.660538921e4 /. 9.10938291
  | Elementary_fence_units_actual_mass_symbol_t.Kilogram -> 1.e31 /. 9.10938291
;;

let conversion_factor_of_elementary_fence_units_actual_temperature_symbol = function 
  | Elementary_fence_units_actual_temperature_symbol_t.Celsius -> 273.15
  | Elementary_fence_units_actual_temperature_symbol_t.Kelvin -> Constants_v.one
;;

let conversion_factor_of_elementary_fence_units_actual_time_symbol = function 
  | Elementary_fence_units_actual_time_symbol_t.Femtosecond -> 1.e2 /. 2.418884254
  | Elementary_fence_units_actual_time_symbol_t.Nanosecond -> 1.e8 /. 2.418884254
  | Elementary_fence_units_actual_time_symbol_t.Picosecond -> 1.e5 /. 2.418884254
  | Elementary_fence_units_actual_time_symbol_t.Second -> 1.e17 /. 2.418884254
  | Elementary_fence_units_actual_time_symbol_t.Atomic_unit_time -> Constants_v.one
;;

