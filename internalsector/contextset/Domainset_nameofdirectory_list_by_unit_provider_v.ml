(** {3 Domainset_nameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domainset_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_in_productsector_by_unit_provider_v";
   "Register : CONS:Domainset_nameofdirectory_list_by_unit_register_v";
   "what-is-it : the list of all Set directory in Son of Sector except Externalsector";
   "Example :  [\"figureset\"; ...; \"propertyset\"; ... ]";
   "Author : François Colonna 20 juillet 2016 at 10:36:14+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nsd_ins_l = Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v.provide () in
  let nsd_prs_l = Domainset_nameofdirectory_list_in_productsector_by_unit_provider_v.provide () in
  let nsd_l = nsd_ins_l @ nsd_prs_l in
  List.sort String.compare nsd_l
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Domainset_nameofdirectory_list_by_unit_register_v.store nam_mod () val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store () =
  let val_ = build () in
  store () val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve () =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Domainset_nameofdirectory_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Domainset_nameofdirectory_list_by_unit_register_v.is_stored ()
  then retrieve ()
  else build_n_store ()
;;

(** {6 Providing} *)

let provide () =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Domainset_nameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:30 (UTC+0200) *)
