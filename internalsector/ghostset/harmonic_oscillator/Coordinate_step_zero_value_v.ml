(** {3 Coordinate_step_zero_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Coordinate_step_zero_formula_v";
   "Current : VGNR:Coordinate_step_zero_value_v";
   "Needed-by : VGNR:Coordinate_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

