(** {3 Elementary_fence_units_canonical_classical_conversion_symbol_v} *)

(** {6 Documenting_for_symbol} *)

let documentation () = 
[
 "Current : SELE:Elementary_fence_units_canonical_classical_conversion_symbol_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it: it is the Set of Units used for Classical Calculations";
 "How-is-it-done: ";
 "Reference : https://en.wikipedia.org/wiki/Conversion_of_units";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Canonilizing} *)

let elementary_fence_units_canonical_classical_symbol_of_elementary_fence_units_actual_symbol = function 
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol _ ->
      Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_classical_symbol = function
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_action_kilocalorie_second ->
      Elementary_fence_units_actual_symbol_v.kilocalorie_second
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_angle_radian ->
      Elementary_fence_units_actual_symbol_v.radian
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_charge_coulomb ->
      Elementary_fence_units_actual_symbol_v.coulomb
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_energy_kilocalorie ->
      Elementary_fence_units_actual_symbol_v.kilocalorie
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom ->
      Elementary_fence_units_actual_symbol_v.angstrom
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_mass_electron_mass ->
      Elementary_fence_units_actual_symbol_v.electron_mass
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_temperature_kelvin ->
      Elementary_fence_units_actual_symbol_v.kelvin
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_time_femtosecond ->
      Elementary_fence_units_actual_symbol_v.femtosecond
  | Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_none ->
      Elementary_fence_units_actual_symbol_v.unitless
;;

(** {6 Conversion Factor} *)

let conversion_factor_of_elementary_fence_units_actual_action_symbol = function 
 | Elementary_fence_units_actual_action_symbol_t.Kilocalorie_second -> Constants_v.one 
 | Elementary_fence_units_actual_action_symbol_t.Kilojoule_second -> 1. /. 4.184 
 | Elementary_fence_units_actual_action_symbol_t.Planck_constant -> 1.05457168e-31
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
  | Elementary_fence_units_actual_mass_symbol_t.Atomic_mass_unit -> Constants_v.one
  | Elementary_fence_units_actual_mass_symbol_t.Electron_mass -> 9.10938291 /. 1.66053892e4 
  | Elementary_fence_units_actual_mass_symbol_t.Kilogram -> 1.e27 /. 1.660538921
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

