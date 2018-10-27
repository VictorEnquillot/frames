(** {3 Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v";
   "Needs : CONS:Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v";
   "Needs : CONS:Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v";
   "Register : CONS:Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v";
   "Example : [\"db1figureinput\"; \"db2figureinput\"]";
   "Author : François Colonna 21 juillet 2016 at 17:39:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_din =
  let fnd_din = 
    Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v.provide 
      nod_din 
  in
  Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v.provide fnd_din
;;

(** {6 Storing} *)

let store nod_din val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.store nam_mod nod_din val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod_din =
  let val_ = build nod_din in
  store nod_din val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nod_din =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.retrieve nam_mod nod_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod_din =
  if Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.is_stored nod_din
  then retrieve nod_din
  else build_n_store nod_din
;;

(** {6 Providing} *)

let provide nod_din =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:34 (UTC+0200) *)
