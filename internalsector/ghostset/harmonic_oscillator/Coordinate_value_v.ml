(** {3 Coordinate_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:";
   "Current : VHAR:Coordinate_value_v";
   "Needed-by : VHAR:Coordinate_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

