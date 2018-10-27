(** {3 Databox_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_name_list_by_unit_provider_v";
   "Needs : CONS:Databox_nameoffile_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameoffile_provider_v";
   "Register : CONS:Databox_name_list_by_unit_register_v";
   "Definition : a Databox_name is the Databox_nameoffile without Database extension";
   "Definition : a Databox_name is also a so called Basisset file";
   "Example : sto_3g point_a";
   "Remark : there may be several Databox_nameoffile giving the same Databox_name";
   "Remark : Basisset files for example differ by Database extension";
   "Author : François Colonna 27 juin 2016 at 15:18:26+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nof_dbo_l = Databox_nameoffile_list_by_unit_provider_v.provide () in
  let nam_nun_dbo_l = List.map
      Context_name_by_context_nameoffile_provider_v.provide
      nof_dbo_l
  in
  List_v.left_once_list_off_list nam_nun_dbo_l
;;

(** {6 Storing} *)

let store () result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databox_name_list_by_unit_register_v.store nam_mod () result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store () =
  let result = build () in
  store () result;
  result
;;

(** {6 Retrieving} *)

let retrieve () =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databox_name_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Databox_name_list_by_unit_register_v.is_stored ()
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
(* done with do_provider_with_register.sh Databox_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:25 (UTC+0200) *)
