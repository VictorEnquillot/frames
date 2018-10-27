(** {3 Energy_kinetic_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Energy_kinetic_formula_v";
   "Current : VGNR:Energy_kinetic_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo = 
  Energy_kinetic_value_t.Energy_kinetic flo
;;

let float_off_energy_kinetic_value = function
  Energy_kinetic_value_t.Energy_kinetic flo -> flo
;;
