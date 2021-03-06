(** {3 Localinput_basicname_trio_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Basicname_trio_by_fullnameofdirectory_provider_v";
   "What-is-it : the context name trio (inputbase_name, domain_name, sector_name) from CWD";
   "How-is-it-done : by using the Current Directory Path with getenv";
   "How-is-it-done :       inputbase         domain       sector ";
   "Author : François Colonna 04 avril 2017 at 11:13:49+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build () =
  let fnd_cur = Unix.getenv ("BLOI") in
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
(* done with do_provider_without_register.sh Localinput_basicname_trio_by_unit_provider_v.ml force on mercredi 2 novembre 2016, 15:27:11 (UTC+0100) *)
