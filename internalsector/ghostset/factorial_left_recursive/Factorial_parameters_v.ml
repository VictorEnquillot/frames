(** {3 Factorial_parameters_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : GHO:Factorial_parameters_v";
   "What-is-it : Parameters to be read from input";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let target_step = 5 ;;
let first_step = 1 ;;

let step_number_of_factorial_tag tag_fac =
  let soi_fac = Tag_v.sole_index_off_tag tag_fac in
  List_v.ultimate_element_off_list soi_fac
;;

let previous_sole_index_of_current_sole_index soi_cur =
  let step_cur = List_v.ultimate_element_off_list soi_cur in
  let step_pre = step_cur -1 in
  List_v.replace_last_element_of_element_of_list step_pre soi_cur
;;


