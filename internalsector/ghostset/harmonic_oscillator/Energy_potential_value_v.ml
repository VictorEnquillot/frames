(** {3 Energy_potential_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Energy_potential_formula_v";
   "Current : VGNR:Energy_potential_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo = 
  Energy_potential_value_t.Energy_potential flo
;;

let float_off_energy_potential_value = function
  Energy_potential_value_t.Energy_potential flo -> flo
;;
