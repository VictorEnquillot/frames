(** {3 Inputbasefiles_fullnameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbasefiles_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Inputbasefiles_fullnameofdirectory_by_inputbase_fullnameofdirectory_provider_v";
   "Definition :";
   "Author : François Colonna 22 août 2016 at 10:29:33+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build () =
  let fnd_iba_l = Inputbase_fullnameofdirectory_list_by_unit_provider_v.provide () in
  let fnd_ibf_nsl = List.map 
      Inputbasefiles_fullnameofdirectory_by_inputbase_fullnameofdirectory_provider_v.provide 
      fnd_iba_l 
  in
  List.sort String.compare fnd_ibf_nsl 
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
(* done with do_provider_without_register.sh Inputbasefiles_fullnameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:53:00 (UTC+0200) *)
