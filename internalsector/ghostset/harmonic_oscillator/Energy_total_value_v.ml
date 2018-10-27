(** {3 Energy_total_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Energy_total_formula_v";
   "Current : VGNR:Energy_total_value_v";
   "Needed-by : VGNR:Coordinate_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo = 
  Energy_total_value_t.Energy_total flo
;;

let float_off_energy_total_value = function
  Energy_total_value_t.Energy_total flo -> flo
;;
