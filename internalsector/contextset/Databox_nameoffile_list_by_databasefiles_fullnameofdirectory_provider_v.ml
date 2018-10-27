(** {3 Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Nameoffile_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v";
   "Definition : Databox_nameoffile is the name without its path of a file in a Database directory";
   "Example : cc_pvtz.nwc triangle_isoacute.db1";
   "Author : François Colonna 20 août 2016 at 12:03:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let is_databox_of_fullnameofdirectory_of_nameoffile fnd nof =
  let nod = Filename.basename fnd in
  let ext = "." ^ (String_v.substring nod 0 3) in 
  if String.length nof > 4
  then
    String_v.last_n_characters_of_count_of_string 4 nof = ext
  else
    false
;; 

let check_is_databasefiles_fullnameofdirectory fnd_dbf =
  let fnd_dbf_l = Databasefiles_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_dbf fnd_dbf_l
  then ()
  else 
    Error_messages_v.print_fatal_error nam_mod "check_is_databasefiles_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< were Databasefiles Fullnameofdirectory" fnd_dbf)
      (Format.sprintf "Databasefiles Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dbf_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_dbf =
  check_is_databasefiles_fullnameofdirectory fnd_dbf;
  let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd_dbf in 
  let nof_dbo_l = List.filter 
      (is_databox_of_fullnameofdirectory_of_nameoffile fnd_dbf) 
      nof_l 
  in
  List.sort String.compare nof_dbo_l
;;

(** {6 Storing} *)

let store fnd_dbf nof_dbf_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.store nam_mod fnd_dbf nof_dbf_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_dbf =
  let nof_dbf_l = build fnd_dbf in
  store fnd_dbf nof_dbf_l;
  nof_dbf_l
;;

(** {6 Retrieving} *)

let retrieve fnd_dbf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.retrieve nam_mod fnd_dbf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_dbf =
  if Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.is_stored fnd_dbf
  then retrieve fnd_dbf
  else build_n_store fnd_dbf
;;

(** {6 Providing} *)

let provide fnd_dbf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_dbf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:25 (UTC+0200) *)
