(** {3 Velocity_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Velocity_formula_v";
   "Current : VGNR:Velocity_value_v";
   "Needed-by : VGNR:Coordinate_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo = 
  Velocity_value_t.Velocity flo
;;

let float_off_velocity_value = function
  Velocity_value_t.Velocity flo -> flo
;;
