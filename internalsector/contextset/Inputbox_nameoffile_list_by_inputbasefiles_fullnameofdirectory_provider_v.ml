(** {3 Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v";
   "Needs : CONS:Nameoffile_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v";
   "Definition : Inputbox_nameoffile is the name without its path of a file in a Input directory";
   "Example : Print_point_a.inp etc...";
   "Author : François Colonna 01 juillet 2016 at 17:22:29+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let is_inputbox_of_fullnameofdirectory_of_nameoffile fnd nof =
  let nod = Filename.basename fnd in
  let ext = "." ^ (String_v.substring nod 0 3) in 
  if String.length nof > 4
  then
    String_v.last_n_characters_of_count_of_string 4 nof = ext
  else
    false
;; 

(** {6 Building} *)

let build fnd_ibf =
  let nof_ibf_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd_ibf in 
  let nof_ibo_nsl = List.filter 
      (is_inputbox_of_fullnameofdirectory_of_nameoffile fnd_ibf) 
      nof_ibf_l 
  in
  List.sort String.compare nof_ibo_nsl
;;

(** {6 Storing} *)

let store fnd_ibf nof_ibf_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.store nam_mod fnd_ibf nof_ibf_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_ibf =
  let nof_ibf_l = build fnd_ibf in
  store fnd_ibf nof_ibf_l;
  nof_ibf_l
;;

(** {6 Retrieving} *)

let retrieve fnd_ibf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.retrieve nam_mod fnd_ibf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_ibf =
  if Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.is_stored fnd_ibf
  then retrieve fnd_ibf
  else build_n_store fnd_ibf
;;

(** {6 Providing} *)

let provide fnd_ibf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_ibf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:38 (UTC+0200) *)
