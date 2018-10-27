(** {3 Inputbox_fullnameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_fullnameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v";
   "Needs : CONS:Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v";
   "Example : .../frames/externalsector/figuredata/db1figurefiles/triangle_isoacute.db1";
   "Author : François Colonna 01 juillet 2016 at 17:29:40+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_ibf =
  let nof_ibo_l = 
    Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v.provide 
      fnd_ibf 
  in
  List.map (fun n -> fnd_ibf ^ "/" ^ n) nof_ibo_l
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
(* done with do_provider_without_register.sh Inputbox_fullnameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:53:05 (UTC+0200) *)
