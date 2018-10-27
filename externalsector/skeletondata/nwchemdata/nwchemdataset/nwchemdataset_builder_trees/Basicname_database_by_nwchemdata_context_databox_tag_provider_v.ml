(** {3 Basicname_database_by_nwchemdata_context_database_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Basicname_database_by_nwchemdata_context_database_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Basicname_database for Nwchemdata_context_database_tag";
   "Author : François Colonna 02 avril 2017 at 13:29:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_nbo =
  let nam_dbo = Nwchemdata_context_database_tag_v.string_off tag_nbo in
  Basicname_v.basicname_database_of_string nam_dbo
;;

(** {6 Providing} *)

let provide tag_nbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
