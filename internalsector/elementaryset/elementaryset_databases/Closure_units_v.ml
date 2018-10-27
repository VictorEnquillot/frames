(** {3 Closure_units_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Closure_units_v";
   "Needs : VELE:Measure_v";
   "Needed-by :";
   "What-is-it : Closure_units type is a list of Measure";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name clo =
  List_v.name Measure_v.name clo
;;

let string_off clo =
  List_v.name Measure_v.string_off clo
;;

let longname clo =
  List_v.name Measure_v.longname clo
;;

let fullname clo =
  List_v.name Measure_v.fullname clo
;;

(** {6 Making} *)

let make mea_l =
  mea_l
;;

(* Coercion Down *)

let measure_list_off_closure_units clo =
  clo
;;

let measure_canonical_list_off_closure_units_of_calculation_name clo nam_cal =
  List.map Measure_v.measure_canonical_of_measure_of_calculation_name clo
;;
