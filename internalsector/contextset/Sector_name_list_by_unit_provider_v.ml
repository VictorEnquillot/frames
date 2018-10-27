(** {3 Sector_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Sector_name_list_by_unit_provider_v";
   "Needs : CONS:Sector_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Register : CONS:Sector_name_list_by_unit_register_v";
   "Definition : a Sector_name is Sector Nameofdirectory without suffix \"sector\"";
   "Example : [\"entry\"; \"external\"; \"general\"; \"generator\"; \"internal\"; \"product\"]";
   "Author : François Colonna 23 août 2016 at 15:08:33+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_sec_l = Sector_nameofdirectory_list_by_unit_provider_v.provide () in
  List.map Context_name_by_context_nameofdirectory_provider_v.provide nod_sec_l
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Sector_name_list_by_unit_register_v.store nam_mod () val_;
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
  let result = Sector_name_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Sector_name_list_by_unit_register_v.is_stored ()
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
(* done with do_provider_with_register.sh Sector_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:40 (UTC+0200) *)
