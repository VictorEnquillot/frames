(** {3 Check_is_basicname_databox_by_basicname_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_is_basicname_databox_by_basicname_provider_v";
   "Needs : CONS:Check_is_databox_name_by_name_provider_v";
   "Author : François Colonna 25 avril 2017 at 11:18:23+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna =
  let nam = Basicname_v.string_off bna in
  Check_is_databox_name_by_name_provider_v.provide nam
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
(* done with do_provider_without_register.sh Check_is_basicname_databox_by_basicname_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
