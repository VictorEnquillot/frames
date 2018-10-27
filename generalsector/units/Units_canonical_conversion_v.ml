(** {3 Units_canonical_conversion_v} *)

(** {6 Documenting} *)

let documentation () = 
[
 "Current : UNI:Units_canonical_conversion_v";
 "Needs :UNI:Units_canonical_quantum_conversion_v";
 "Needed-by :";
 "What-is-it :the Conversion to Canonical Units";
 "How-is-it-done :";
 "Improve: Should depend on Input File";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Definition} *)

(* let canonical_action = Units_canonical_quantum_conversion_v.canonical_action;; *)
(* let canonical_angle = Units_canonical_quantum_conversion_v.canonical_angle;; *)
(* let canonical_charge = Units_canonical_quantum_conversion_v.canonical_charge;; *)
(* let canonical_energy = Units_canonical_quantum_conversion_v.canonical_energy;; *)
(* let canonical_mass = Units_canonical_quantum_conversion_v.canonical_mass;; *)
(* let canonical_length = Units_canonical_quantum_conversion_v.canonical_length;; *)
(* let canonical_temperature = Units_canonical_quantum_conversion_v.canonical_temperature;; *)
(* let canonical_time = Units_canonical_quantum_conversion_v.canonical_time;; *)

let units_canonical_of_units_actual_of_calculation_name efu = function 
  | "classical" -> 
      let ucc =
	Units_canonical_classical_conversion_v.units_canonical_classical_of_units_actual 
	  efu 
      in
      Units_canonical_t.Units_canonical_classical ucc

  | "quantum" -> 
      let ucq =
	Units_canonical_quantum_conversion_v.units_canonical_quantum_of_units_actual 
	  efu 
      in
      Units_canonical_t.Units_canonical_quantum ucq

  | nam_cal ->
      Error_messages_v.print_fatal_error __LOC__ "units_canonical_of_units_actual_of_calculation_name"
	"Calculation name were classical | quantum"
	nam_cal
	"Check"
;;

let units_actual_of_units_canonical = function
  | Units_canonical_t.Units_canonical_classical ucc ->
      Units_canonical_classical_conversion_v.units_actual_of_units_canonical_classical ucc
  | Units_canonical_t.Units_canonical_quantum ucq ->
      Units_canonical_quantum_conversion_v.units_actual_of_units_canonical_quantum ucq

;;

(** {6 Conversion Factor} *)

let conversion_factor_of_units_actual_action = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_action;;
let conversion_factor_of_units_actual_angle = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_angle;;
let conversion_factor_of_units_actual_charge = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_charge;;
let conversion_factor_of_units_actual_energy = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_energy;;
let conversion_factor_of_units_actual_mass = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_mass;;
let conversion_factor_of_units_actual_length = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_length;;
let conversion_factor_of_units_actual_temperature = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_temperature;;
let conversion_factor_of_units_actual_time = Units_canonical_quantum_conversion_v.conversion_factor_of_units_actual_time;;

let conversion_factor_of_units_actual = function
  | Units_actual_t.Units_actual_action s -> 
      conversion_factor_of_units_actual_action s
  | Units_actual_t.Units_actual_angle s ->
      conversion_factor_of_units_actual_angle s
  | Units_actual_t.Units_actual_charge s ->
      conversion_factor_of_units_actual_charge s
  | Units_actual_t.Units_actual_energy s ->
      conversion_factor_of_units_actual_energy s
  | Units_actual_t.Units_actual_length s ->
      conversion_factor_of_units_actual_length s
  | Units_actual_t.Units_actual_mass s ->
      conversion_factor_of_units_actual_mass s
  | Units_actual_t.Units_actual_temperature s ->
      conversion_factor_of_units_actual_temperature s
  | Units_actual_t.Units_actual_time s ->
      conversion_factor_of_units_actual_time s
  | Units_actual_t.Units_actual_none s -> 
      failwith "no_canonical_for_none"
;;

