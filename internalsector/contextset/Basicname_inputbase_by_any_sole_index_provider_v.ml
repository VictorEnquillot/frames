(** {3 Basicname_inputbase_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_inputbase_by_any_sole_index_provider_v";
   "Needs : CONS:Context_basicname_inputbase_by_ordinal_provider_v";
   "What-is-it : the Basicname_inputbase obtained by any sole_index of length greater than 3";
   "How-is-it-done : by getting the 3th element of any sole_index in entry sector and userinput domain";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let nam_dba = Inputbase_name_by_any_sole_index_provider_v.provide soi_any in
  Basicname_v.basicname_inputbase_of_string nam_dba
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

