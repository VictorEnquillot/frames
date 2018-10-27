(** {3 Sector_nameofdirectory_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Sector_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Fullnameofdirectory_by_environment_variable_provider_v";
   "Needs : CONS:Nameoffile_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Sector_nameofdirectory_list_by_unit_register_v";
   "Definition : Nameofdirectory is the name without its path of a directory without its path";
   "Author : François Colonna 20 juillet 2016 at 16:23:17+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Preparing} *)

let is_sectordirectory_of_nameoffile nof =
  if String.length nof > 6
  then
    String_v.last_n_characters_of_count_of_string 6 nof = "sector"
  else
    false
;; 

(** {6 Building} *)

let build () =
  let fnd_fra = Fullnameofdirectory_by_environment_variable_provider_v.provide "FRA" in
  let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd_fra in

  List.filter is_sectordirectory_of_nameoffile nof_l 
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Sector_nameofdirectory_list_by_unit_register_v.store nam_mod () val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store () =
  let val_ = build () in
  store () val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve () =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Sector_nameofdirectory_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Sector_nameofdirectory_list_by_unit_register_v.is_stored ()
  then retrieve ()
  else build_n_store ()
;;

(** {6 Providing} *)

let provide () =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Sector_nameofdirectory_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:40 (UTC+0200) *)
