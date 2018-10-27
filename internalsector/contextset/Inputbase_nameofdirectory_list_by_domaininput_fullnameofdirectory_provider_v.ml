(** {3 Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v";
   "Needs : CONS:Domaininput_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Nameofdirectory_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v";
   "Definition : Inputbase_name is the name without its path of a Input directory son of Domaininput Directory";
   "Example : [\"db1figureinput\"; \"db2figureinput\"; \"nwcheminput\"]";
   "Improve : check_is should be replaced by a type";
   "Author : François Colonna 21 août 2016 at 12:18:15+02:00";
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

let check_is_domaininput_fullnameofdirectory fnd_din =
  let fnd_din_l = Domaininput_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_din fnd_din_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_domaininput_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Domaininput Fullnameofdirectory" fnd_din)
      (Format.sprintf "Domaininput Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_din_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_din =
  check_is_domaininput_fullnameofdirectory fnd_din;
  let nod_iba_l = Nameofdirectory_list_by_fullnameofdirectory_provider_v.provide fnd_din in 
  let nod_iba_nsl = List.filter is_inputdirectory_of_nameofdirectory nod_iba_l in
  List.sort String.compare nod_iba_nsl
;;

(** {6 Storing} *)

let store fnd_din nod_iba_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.store nam_mod fnd_din nod_iba_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_din =
  let nod_iba_l = build fnd_din in
  store fnd_din nod_iba_l;
  nod_iba_l
;;

(** {6 Retrieving} *)

let retrieve fnd_din =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.retrieve nam_mod fnd_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_din =
  if Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.is_stored fnd_din
  then retrieve fnd_din
  else build_n_store fnd_din
;;

(** {6 Providing} *)

let provide fnd_din =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:34 (UTC+0200) *)
