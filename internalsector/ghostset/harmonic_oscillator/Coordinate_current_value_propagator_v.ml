(** {3 Coordinate_current_value_propagator_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : HAR:Coordinate_current_formula_v";
   "Current : HAR:Coordinate_current_value_propagator_v";
   "Needed-by : HAR:";
   "What-is-it : It Propagates a leff_recursive Calculation";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

