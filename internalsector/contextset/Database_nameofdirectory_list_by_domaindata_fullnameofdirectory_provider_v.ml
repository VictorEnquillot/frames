(** {3 Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Needs : CONS:Domaindata_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Nameofdirectory_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v";
   "Definition : Database_name is the name without its path of a Data directory son of Domaindata Directory";
   "Example : [\"db1figuredata\"; \"db2figuredata\"; \"nwchemdata\"]";
   "Improve : check_is should be replaced by a type";
   "Author : François Colonna 25 juin 2016 at 19:00:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let is_datadirectory_of_nameofdirectory nod =
  if String.length nod > 4
  then
    String_v.last_n_characters_of_count_of_string 4 nod = "data"
  else
    false
;; 

let check_is_domaindata_fullnameofdirectory fnd_dda =
  let fnd_dda_l = Domaindata_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_dda fnd_dda_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_domaindata_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Domaindata Fullnameofdirectory" fnd_dda)
      (Format.sprintf "Domaindata Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dda_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_dda =
  check_is_domaindata_fullnameofdirectory fnd_dda;
  let nod_dba_l = Nameofdirectory_list_by_fullnameofdirectory_provider_v.provide fnd_dda in 
  let nod_dba_nsl = List.filter is_datadirectory_of_nameofdirectory nod_dba_l in
  List.sort String.compare nod_dba_nsl
;;

(** {6 Storing} *)

let store fnd_dda nod_dba_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.store nam_mod fnd_dda nod_dba_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_dda =
  let nod_dba_l = build fnd_dda in
  store fnd_dda nod_dba_l;
  nod_dba_l
;;

(** {6 Retrieving} *)

let retrieve fnd_dda =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.retrieve nam_mod fnd_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_dda =
  if Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.is_stored fnd_dda
  then retrieve fnd_dda
  else build_n_store fnd_dda
;;

(** {6 Providing} *)

let provide fnd_dda =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:22 (UTC+0200) *)
