(** {3 Coordinate_current_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:Coordinate_current_formula_v";
   "Current : VGNR:Coordinate_current_value_v";
   "Needed-by : VGNR:Coordinate_value_v";
   "What-is-it : It computes Value from Formula and builders Values";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo = 
  Coordinate_current_value_t.Current_x flo
;;

let float_off_coordinate_current_value = function
  Coordinate_current_value_t.Current_x flo -> flo
;;
