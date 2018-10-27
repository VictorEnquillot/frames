(** {3 Domain_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domain_name_list_by_unit_provider_v";
   "Needs : CONS:Domainset_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Needs : CONS:Domaininput_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Register : CONS:Domain_name_list_by_unit_register_v";
   "What-is-it : the list of all Domain i.e. of Domainset of sector entry, internal and product";
   "Definition : Domainset_name is the name without its path of a Set directory son of Sector Directories";
   "Example : userinput, propertyset, figureset but NO Databaseset";
   "Author : François Colonna 20 juillet 2016 at 15:54:22+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nod_dse_l = Domainset_nameofdirectory_list_by_unit_provider_v.provide () in
  let nam_dse_l =
    List.map
      Context_name_by_context_nameofdirectory_provider_v.provide 
      nod_dse_l
  in

  let nod_din_l = Domaininput_nameofdirectory_list_by_unit_provider_v.provide () in

  let nam_din_l =
    List.map
      Context_name_by_context_nameofdirectory_provider_v.provide 
      nod_din_l
  in

  let nam_dom_l = nam_din_l @ nam_dse_l in

  List.sort String.compare nam_dom_l
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Domain_name_list_by_unit_register_v.store nam_mod () val_;
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
  let result = Domain_name_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Domain_name_list_by_unit_register_v.is_stored ()
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
(* done with do_provider_with_register.sh Domain_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:29 (UTC+0200) *)
