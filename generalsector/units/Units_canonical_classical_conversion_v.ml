(** {3 Units_canonical_classical_conversion_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_canonical_classical_conversion_v";
   "Needs :";
   "Needed-by :";
   "What-is-it : the Units used for Classical Calculations";
   "How-is-it-done :";
   "Reference : https://en.wikipedia.org/wiki/Conversion_of_units";
   "Author : François Colonna 29 novembre 2016 at 14:20:23+01:00";
   "Improve : most of the values are wrong" 
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Canonilizing} *)

let units_canonical_classical_of_units_actual = function 
  | Units_actual_t.Units_actual_action _ ->
      Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second
  | Units_actual_t.Units_actual_angle _ ->
      Units_canonical_classical_t.Canonical_classical_angle_radian
  | Units_actual_t.Units_actual_charge _ ->
      Units_canonical_classical_t.Canonical_classical_charge_coulomb
  | Units_actual_t.Units_actual_energy _ ->
      Units_canonical_classical_t.Canonical_classical_energy_kilocalorie
  | Units_actual_t.Units_actual_length _ ->
      Units_canonical_classical_t.Canonical_classical_length_angstrom
  | Units_actual_t.Units_actual_mass _ ->
      Units_canonical_classical_t.Canonical_classical_mass_electron_mass
  | Units_actual_t.Units_actual_temperature _ ->
      Units_canonical_classical_t.Canonical_classical_temperature_kelvin
  | Units_actual_t.Units_actual_time _ ->
      Units_canonical_classical_t.Canonical_classical_time_femtosecond
  | Units_actual_t.Units_actual_none _ ->
      Units_canonical_classical_t.Canonical_classical_none
;;

let units_actual_of_units_canonical_classical = function
  | Units_canonical_classical_t.Canonical_classical_action_kilocalorie_second ->
      Units_actual_v.kilocalorie_second
  | Units_canonical_classical_t.Canonical_classical_angle_radian ->
      Units_actual_v.radian
  | Units_canonical_classical_t.Canonical_classical_charge_coulomb ->
      Units_actual_v.coulomb
  | Units_canonical_classical_t.Canonical_classical_energy_kilocalorie ->
      Units_actual_v.kilocalorie
  | Units_canonical_classical_t.Canonical_classical_length_angstrom ->
      Units_actual_v.angstrom
  | Units_canonical_classical_t.Canonical_classical_mass_electron_mass ->
      Units_actual_v.electron_mass
  | Units_canonical_classical_t.Canonical_classical_temperature_kelvin ->
      Units_actual_v.kelvin
  | Units_canonical_classical_t.Canonical_classical_time_femtosecond ->
      Units_actual_v.femtosecond
  | Units_canonical_classical_t.Canonical_classical_none ->
      Units_actual_v.unitless
;;

(** {6 Conversion Factor} *)

let conversion_factor_of_units_actual_action = function 
 | Units_actual_action_t.Kilocalorie_second -> Constants_v.one 
 | Units_actual_action_t.Kilojoule_second -> 1. /. 4.184 
 | Units_actual_action_t.Planck_constant -> 1.05457168e-31
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
  | Units_actual_length_t.Angstrom -> Constants_v.one
  | Units_actual_length_t.Bohr -> 5.2917721092 /. 10.
  | Units_actual_length_t.Centimeter -> 1.e12
  | Units_actual_length_t.Decameter -> 1.e10
  | Units_actual_length_t.Decimeter -> 1.e12
  | Units_actual_length_t.Foot -> 0.3048e11 
  | Units_actual_length_t.Inch -> 0.0254 
  | Units_actual_length_t.Kilometer -> 1.e8 
  | Units_actual_length_t.Light_year -> 9.4607304725808e26
  | Units_actual_length_t.Meter -> 1.e10
  | Units_actual_length_t.Millimeter -> 1.e13 
  | Units_actual_length_t.Nanometer -> 10.
  | Units_actual_length_t.Yard -> 0.9144e11 
;;

let conversion_factor_of_units_actual_mass = function 
  | Units_actual_mass_t.Atomic_mass_unit -> Constants_v.one
  | Units_actual_mass_t.Electron_mass -> 9.10938291 /. 1.66053892e4 
  | Units_actual_mass_t.Kilogram -> 1.e27 /. 1.660538921
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

let conversion_factor_of_units_actual = function 
  | Units_actual_t.Units_actual_action uaa ->
      conversion_factor_of_units_actual_action uaa      
  | Units_actual_t.Units_actual_angle uaa->
      conversion_factor_of_units_actual_angle uaa  
  | Units_actual_t.Units_actual_charge uac ->
      conversion_factor_of_units_actual_charge uac
  | Units_actual_t.Units_actual_energy uae ->
      conversion_factor_of_units_actual_energy uae
  | Units_actual_t.Units_actual_length ual ->
      conversion_factor_of_units_actual_length ual
  | Units_actual_t.Units_actual_mass uam->
      conversion_factor_of_units_actual_mass uam
  | Units_actual_t.Units_actual_temperature uat ->
      conversion_factor_of_units_actual_temperature uat
  | Units_actual_t.Units_actual_time uat ->
      conversion_factor_of_units_actual_time uat
  | Units_actual_t.Units_actual_none _ ->
      failwith "No_units:Units_canonical_classical_conversion_v.conversion_factor_of_units_actual"
;;

