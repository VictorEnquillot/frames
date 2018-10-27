(** {3 Elementary_fence_units_canonical_conversion_v} *)

(** {6 Documenting_for_symbol} *)

let documentation () = 
[
 "Current : SELE:Elementary_fence_units_canonical_conversion_v";
 "Needs: SELE:Elementary_fence_units_canonical_quantum_conversion_v";
 "Needed-by: ";
 "What-is-it: thz definition are Canonical Units";
 "How-is-it-done: ";
 "Improve: Should depend on Input File";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Definition} *)

(* let canonical_action = Elementary_fence_units_canonical_quantum_conversion_v.canonical_action;; *)
(* let canonical_angle = Elementary_fence_units_canonical_quantum_conversion_v.canonical_angle;; *)
(* let canonical_charge = Elementary_fence_units_canonical_quantum_conversion_v.canonical_charge;; *)
(* let canonical_energy = Elementary_fence_units_canonical_quantum_conversion_v.canonical_energy;; *)
(* let canonical_mass = Elementary_fence_units_canonical_quantum_conversion_v.canonical_mass;; *)
(* let canonical_length = Elementary_fence_units_canonical_quantum_conversion_v.canonical_length;; *)
(* let canonical_temperature = Elementary_fence_units_canonical_quantum_conversion_v.canonical_temperature;; *)
(* let canonical_time = Elementary_fence_units_canonical_quantum_conversion_v.canonical_time;; *)

let elementary_fence_units_canonical_symbol_of_elementary_fence_units_actual_symbol_of_calculation_name sym_efu = function 
  | "classical" -> 
      let sym_ecc =
	Elementary_fence_units_canonical_classical_conversion_v.elementary_fence_units_canonical_classical_symbol_of_elementary_fence_units_actual_symbol 
	  sym_efu 
      in
      Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc

  | "quantum" -> 
      let sym_ecq =
	Elementary_fence_units_canonical_quantum_conversion_v.elementary_fence_units_canonical_quantum_symbol_of_elementary_fence_units_actual_symbol 
	  sym_efu 
      in
      Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq

  | nam_cal ->
Error_messages_v.print_fatal_error __LOC__ "elementary_fence_units_canonical_symbol_of_elementary_fence_units_actual_symbol_of_calculation_name"
	"Calculation name were classical | quantum"
	nam_cal
	"Check"
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_symbol = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc ->
      Elementary_fence_units_canonical_classical_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
      Elementary_fence_units_canonical_quantum_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq

;;

(** {6 Conversion Factor} *)

let conversion_factor_of_elementary_fence_units_actual_action_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_action_symbol;;
let conversion_factor_of_elementary_fence_units_actual_angle_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_angle_symbol;;
let conversion_factor_of_elementary_fence_units_actual_charge_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_charge_symbol;;
let conversion_factor_of_elementary_fence_units_actual_energy_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_energy_symbol;;
let conversion_factor_of_elementary_fence_units_actual_mass_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_mass_symbol;;
let conversion_factor_of_elementary_fence_units_actual_length_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_length_symbol;;
let conversion_factor_of_elementary_fence_units_actual_temperature_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_temperature_symbol;;
let conversion_factor_of_elementary_fence_units_actual_time_symbol = Elementary_fence_units_canonical_quantum_conversion_v.conversion_factor_of_elementary_fence_units_actual_time_symbol;;

let conversion_factor_of_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol s -> 
      conversion_factor_of_elementary_fence_units_actual_action_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_angle_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_charge_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_energy_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_length_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_mass_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_temperature_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol s ->
      conversion_factor_of_elementary_fence_units_actual_time_symbol s
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol s -> 
      failwith "no_canonical_for_none"
;;

