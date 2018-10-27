(** {3 Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v";
   "Needs : CONS:Externalsector_fullnameofdirectory_by_unit_provider_v";
   "Needs : CONS:Nameofdirectory_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v";
   "Definition : a Domaindata directory contains the Databases information used by Internal Sector Domainset Code";
   "what-is-it : the list of all Data directory in externalsector";
   "Example :  [\"chemical\"; \"figuredata\"; \"skeletondata\"]";
   "Invariant : this list in included in Domainset (when data is changed to set)";
   "Author : François Colonna 20 juillet 2016 at 10:47:04+02:00";
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

(** {6 Invariant} *)

let check_include_of_domainset_nameofdirectory_list_of_domaindata_nameofdirectory nod_dse_l nod_dda =
  let nam_fun = "is_include_of_domainset_nameofdirectory_list_of_domaindata_nameofdirectory" in

  let nam_dom =
    String_v.cut_last_n_characters_of_count_off_string 4 nod_dda
  in
  let nod_dse = nam_dom ^ "set" in
  if List.mem nod_dse nod_dse_l
  then () 
  else  
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "Domaindata Directory >%s< had an image in Domainset list from Internalsector" nod_dda)
      (Format.sprintf "Domainset list from Internalsector is:@.     %s" 
	 (List_v.name_in_column (fun s->s) nod_dse_l)
      )
      "check";
;;

let invariant_of_domaindata_nameofdirectory_list nod_dda_l =

  let nod_dse_l = 
    Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v.provide () 
  in
  List.iter 
    (check_include_of_domainset_nameofdirectory_list_of_domaindata_nameofdirectory nod_dse_l)
    nod_dda_l 

;;

(** {6 Building} *)

let build () =
  let fno_exs = Externalsector_fullnameofdirectory_by_unit_provider_v.provide () in
  let nod_exs_l = Nameofdirectory_list_by_fullnameofdirectory_provider_v.provide fno_exs in 

  let nod_dda_l = List.filter is_datadirectory_of_nameofdirectory nod_exs_l in
  invariant_of_domaindata_nameofdirectory_list nod_dda_l;
  nod_dda_l
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.store nam_mod () val_;
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
  let result = Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.is_stored ()
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
(* done with do_provider_with_register.sh Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:27 (UTC+0200) *)
