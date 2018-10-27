(** {3 Units_canonical_quantum_conversion_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_v";
   "Needs :";
   "Needed-by :";
   "What-is-it :it is the Set of Units used for Quantum Calculations";
   "How-is-it-done :";
   "Reference : https://en.wikipedia.org/wiki/Conversion_of_units";
   "Author : François Colonna 08 janvier 2017 at 13:46:16+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Definition} *)

(* let canonical_action = Units_v.planck_constant;; *)
(* let canonical_angle  = Units_v.radian;; *)
(* let canonical_charge = Units_v.electron_charge;; *)
(* let canonical_energy = Units_v.hartree;; *)
(* let canonical_length = Units_v.bohr;; *)
(* let canonical_mass   = Units_v.electron_mass;; *)
(* let canonical_temperature = Units_v.kelvin;; *)
(* let canonical_time   = Units_v.femtosecond;; *)
(* let canonical_none   = Units_v.none;; *)


(** {6 Canonilizing} *)

let units_canonical_quantum_of_units_actual = function 
  | Units_actual_t.Units_actual_action _ ->
      Units_canonical_quantum_t.Canonical_quantum_action_planck_constant
  | Units_actual_t.Units_actual_angle _ ->
      Units_canonical_quantum_t.Canonical_quantum_angle_radian
  | Units_actual_t.Units_actual_charge _ ->
      Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge
  | Units_actual_t.Units_actual_energy _ ->
      Units_canonical_quantum_t.Canonical_quantum_energy_hartree
  | Units_actual_t.Units_actual_length _ ->
      Units_canonical_quantum_t.Canonical_quantum_length_bohr
  | Units_actual_t.Units_actual_mass _ ->
      Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass
  | Units_actual_t.Units_actual_temperature _ ->
      Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin
  | Units_actual_t.Units_actual_time _ ->
      Units_canonical_quantum_t.Canonical_quantum_time_femtosecond
  | Units_actual_t.Units_actual_none _ ->
      Units_canonical_quantum_t.Canonical_quantum_none
;;

let units_actual_of_units_canonical_quantum = function
  | Units_canonical_quantum_t.Canonical_quantum_action_planck_constant ->
      Units_actual_v.planck_constant
  | Units_canonical_quantum_t.Canonical_quantum_angle_radian ->
      Units_actual_v.radian
  | Units_canonical_quantum_t.Canonical_quantum_charge_electron_charge ->
      Units_actual_v.electron_charge
  | Units_canonical_quantum_t.Canonical_quantum_energy_hartree ->
      Units_actual_v.hartree
  | Units_canonical_quantum_t.Canonical_quantum_length_bohr ->
      Units_actual_v.bohr
  | Units_canonical_quantum_t.Canonical_quantum_mass_electron_mass ->
      Units_actual_v.electron_mass
  | Units_canonical_quantum_t.Canonical_quantum_temperature_kelvin ->
      Units_actual_v.kelvin
  | Units_canonical_quantum_t.Canonical_quantum_time_femtosecond ->
      Units_actual_v.femtosecond
  | Units_canonical_quantum_t.Canonical_quantum_none ->
      Units_actual_v.unitless
;;

(** {6 Conversion Factor} *)

let conversion_factor_of_units_actual_action = function 
 | Units_actual_action_t.Kilocalorie_second -> 4.1855e31 /. 1.05457168
 | Units_actual_action_t.Kilojoule_second -> 1.05457168e-31
 | Units_actual_action_t.Planck_constant -> Constants_v.one
;;

let conversion_factor_of_units_actual_angle = function 
  | Units_actual_angle_t.Degree -> Constants_v.radian_of_degree
  | Units_actual_angle_t.Radian -> Constants_v.one
;;

let conversion_factor_of_units_actual_charge = function 
  | Units_actual_charge_t.Coulomb -> Constants_v.radian_of_degree
  | Units_actual_charge_t.Electron_charge-> Constants_v.one
;;

let conversion_factor_of_units_actual_energy = function 
  | Units_actual_energy_t.Calorie -> 4.1855e18 /. 4.359744
  | Units_actual_energy_t.Electron_volt -> 0.1602176565 /. 4.359744
  | Units_actual_energy_t.Hartree -> Constants_v.one
  | Units_actual_energy_t.Joule -> 1.e18 /. 4.359744
  | Units_actual_energy_t.Kilocalorie -> 4.1855e15 /. 4.359744
  | Units_actual_energy_t.Kilojoule -> 1.e15 /. 4.359744
;;

let conversion_factor_of_units_actual_length = function 
  | Units_actual_length_t.Angstrom -> 10. /. 5.2917721092
  | Units_actual_length_t.Bohr -> Constants_v.one
  | Units_actual_length_t.Centimeter -> 1.e13 /. 5.2917721092
  | Units_actual_length_t.Decameter -> 1.e10 /. 5.2917721092
  | Units_actual_length_t.Decimeter -> 1.e12 /. 5.2917721092
  | Units_actual_length_t.Foot -> 0.3048e11 /. 5.2917721092
  | Units_actual_length_t.Inch -> 0.0254 /. 5.2917721092
  | Units_actual_length_t.Kilometer -> 1.e8 /. 5.2917721092
  | Units_actual_length_t.Light_year -> 9.4607304725808e26 /. 5.2917721092
  | Units_actual_length_t.Meter -> 1.e11 /. 5.2917721092
  | Units_actual_length_t.Millimeter -> 1.e14 /. 5.2917721092
  | Units_actual_length_t.Nanometer -> 1. /. 5.2917721092
  | Units_actual_length_t.Yard -> 0.9144e11 /. 5.2917721092
;;

let conversion_factor_of_units_actual_mass = function 
  | Units_actual_mass_t.Electron_mass -> Constants_v.one
  | Units_actual_mass_t.Atomic_mass_unit -> 1.660538921e4 /. 9.10938291
  | Units_actual_mass_t.Kilogram -> 1.e31 /. 9.10938291
;;

let conversion_factor_of_units_actual_temperature = function 
  | Units_actual_temperature_t.Celsius -> 273.15
  | Units_actual_temperature_t.Kelvin -> Constants_v.one
;;

let conversion_factor_of_units_actual_time = function 
  | Units_actual_time_t.Femtosecond -> 1.e2 /. 2.418884254
  | Units_actual_time_t.Nanosecond -> 1.e8 /. 2.418884254
  | Units_actual_time_t.Picosecond -> 1.e5 /. 2.418884254
  | Units_actual_time_t.Second -> 1.e17 /. 2.418884254
  | Units_actual_time_t.Atomic_unit_time -> Constants_v.one
;;

