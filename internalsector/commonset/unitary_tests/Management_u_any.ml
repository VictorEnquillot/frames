open Make_test_v;;

testing "Management_v with
   management_u_any.ml";;

(* toplevel 
   #use "Management_u_any.ml";; 

*)

let documentation () = 
  [
   "Current : DAT:Management_u_any";
   "Needs : IGNR:Constructor_name_tree_by_domaiset_trail_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : It transforms the Constructor_name_tree (CT)";
   "Remark : Entity trails may have ANY category (symbol, tag, formula, value)"; 
   "Remark : the CT is unique for one Domainset as it expressed the Type hierarchy";
   "Mind : Not to be confused with Builders Tree (BT) which links leaves of different CT";
 ]
;;

open Management_v;;

Register_v.delete Trace_what_by_module_name_register_v.register;;

Trace_what_by_module_name_register_v.store "Trac_v" "provide";;
Trace_what_by_module_name_register_v.store "Truc_v" "cpu provide";;

let pro_cpu = entering_of_module_name_of_function_name "Trac_v" "provide";;
exiting_of_process_times_of_module_name_of_function_name pro_cpu "Trac_v" "provide";;

let pro_cpu = entering_of_module_name_of_function_name "Truc_v" "provide";;
exiting_of_process_times_of_module_name_of_function_name pro_cpu "Truc_v" "provide";;




(* cpu moves 
test_number 1 (
(pti_cpu : Unix.process_times ) =
  {Unix.tms_utime = 0.; tms_stime = 0.; tms_cutime = 0.; tms_cstime = 0.}
);;

*)

