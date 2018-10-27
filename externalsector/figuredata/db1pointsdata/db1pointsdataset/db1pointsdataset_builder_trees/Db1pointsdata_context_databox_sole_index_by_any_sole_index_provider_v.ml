(** {3 Db1pointsdata_context_databox_sole_index_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_context_databox_sole_index_by_any_sole_index_provider_v";
   "Needs : BDB1:Db1pointsdata_basicname_trio_by_unit_provider_v";
   "Needs : BDB1:Context_sole_index_by_basicname_trio_provider_v";
   "What-is-it : the Databox Sole_index (the fourth last element of any sole_index";
   "Author : François Colonna 25 septembre 2016 at 20:44:11+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  List_v.last_elements_of_int_of_list 4 soi_any 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
