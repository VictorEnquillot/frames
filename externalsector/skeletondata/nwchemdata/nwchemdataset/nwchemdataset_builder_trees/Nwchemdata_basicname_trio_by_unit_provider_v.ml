(** {3 Nwchemdata_basicname_trio_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Basicname_trio_by_fullnameofdirectory_provider_v";
   "What-is-it : the context name trio (database_name, domain_name, sector_name) from CWD";
   "How-is-it-done : by using the Current Directory Path with getenv";
   "How-is-it-done :       database         domain       sector ";
   "Improve : try not to use getenv";
   "Author : François Colonna 29 septembre 2016 at 10:06:16+02:00 getenv";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build () =
  let fnd_cur = Sys.getenv ("BNWC") in
  Basicname_trio_by_fullnameofdirectory_provider_v.provide fnd_cur
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
(* done with do_provider_without_register.sh Nwchemdata_basicname_trio_by_unit_provider_v.ml force on lundi 10 octobre 2016, 15:52:08 (UTC+0200) *)
