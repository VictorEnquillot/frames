(** {3 Domaininput_nameofdirectory_list_by_entrysector_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaininput_nameofdirectory_list_by_entrysector_fullnameofdirectory_provider_v";
   "Needs : CONS:Nameofdirectory_list_by_fullnameofdirectory_provider_v";
   "Definition : Domaininput_name is the name without its path of a Input directory son of Entrysector Directory";
   "Example : [\"userinput\"]";
   "Author : François Colonna 15 juillet 2016 at 17:39:05+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let is_inputdirectory_of_nameofdirectory nod =
  if String.length nod > 5
  then
    String_v.last_n_characters_of_count_of_string 5 nod = "input"
  else
    false
;; 

(** {6 Building} *)

let build fnd_ens =
  let nod_ens_l = Nameofdirectory_list_by_fullnameofdirectory_provider_v.provide fnd_ens in 
  let nod_din_l = List.filter is_inputdirectory_of_nameofdirectory nod_ens_l in
  List.sort String.compare nod_din_l
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
(* done with do_provider_without_register.sh Domaininput_nameofdirectory_list_by_entrysector_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:56 (UTC+0200) *)
