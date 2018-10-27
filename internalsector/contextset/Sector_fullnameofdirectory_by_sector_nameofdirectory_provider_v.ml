(** {3 Sector_fullnameofdirectory_by_sector_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Sector_fullnameofdirectory_by_sector_nameofdirectory_provider_v";
   "Needs : CONS:Frames_fullnameofdirectory_by_unit_provider_v";
   "Example : .../frames/externalsector";
   "Author : François Colonna 25 juin 2016 at 14:57:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nod_sec =
  let fnd_fra = Frames_fullnameofdirectory_by_unit_provider_v.provide () in
  fnd_fra ^ "/" ^ nod_sec
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
(* done with do_provider_without_register.sh Sector_fullnameofdirectory_by_sector_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:53:07 (UTC+0200) *)
