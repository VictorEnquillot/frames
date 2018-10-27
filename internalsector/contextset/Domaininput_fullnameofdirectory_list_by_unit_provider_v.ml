(** {3 Domaininput_fullnameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaininput_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Entrysector_fullnameofdirectory_by_unit_provider_v";
   "Needs : CONS:Domaininput_fullnameofdirectory_list_by_entrysector_fullnameofdirectory_provider_v";
   "Definition :";
   "Author : François Colonna 02 juillet 2016 at 11:49:24+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build () =
  let fnd_ens = Entrysector_fullnameofdirectory_by_unit_provider_v.provide () in
  Domaininput_fullnameofdirectory_list_by_entrysector_fullnameofdirectory_provider_v.provide fnd_ens 
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
(* done with do_provider_without_register.sh Domaininput_fullnameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:56 (UTC+0200) *)
