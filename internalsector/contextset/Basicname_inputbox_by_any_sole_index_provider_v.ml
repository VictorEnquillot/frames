(** {3 Basicname_inputbox_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_inputbox_by_any_sole_index_provider_v";
   "Needs : CONS:Inputbox_name_by_any_sole_index_provider_v";
   "Author : François Colonna 04 avril 2017 at 11:42:50+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let nam_dbo = Inputbox_name_by_any_sole_index_provider_v.provide soi_any in
  Basicname_v.basicname_inputbox_of_string nam_dbo
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Basicname_inputbox_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
