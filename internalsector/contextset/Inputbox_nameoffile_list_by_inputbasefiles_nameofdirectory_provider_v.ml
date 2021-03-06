(** {3 Inputbox_nameoffile_list_by_inputbasefiles_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_nameoffile_list_by_inputbasefiles_nameofdirectory_provider_v";
   "Needs : CONS:Inputbasefiles_fullnameofdirectory_by_inputbasefiles_nameofdirectory_provider_v";
   "Needs : CONS:Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v";
   "Example : [\"point_a\"; \"cc_pvtz\"]";
   "Author : François Colonna 27 juin 2016 at 10:50:00+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_ibf =
  let fnd_ibo = 
    Inputbasefiles_fullnameofdirectory_by_inputbasefiles_nameofdirectory_provider_v.provide 
      nod_ibf 
  in
  Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v.provide fnd_ibo
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
(* done with do_provider_without_register.sh Inputbox_nameoffile_list_by_inputbasefiles_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:53:06 (UTC+0200) *)
