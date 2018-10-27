(** {3 Local_database_nameofdirectory_list_by_domain_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Register : DFIG:Local_database_nameofdirectory_list_by_domain_tag_register_v";
   "Needs : DFIG:Local_database_fullnameofdirectory_list_by_domain_tag_provider_v";
   "Current : DFIG:Local_database_nameofdirectory_list_by_domain_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : ";
 ]
;;

(** {6 Building} *)

let build tag_dom =
  let fnd_ldb_l = 
    Local_database_fullnameofdirectory_list_by_domain_tag_provider_v.provide 
      tag_dom
  in 
  List.map Filename.basename fnd_ldb_l
;;

let build_n_store tag_dom =
  let ndi_ldb_l = build tag_dom in
  Local_database_nameofdirectory_list_by_domain_tag_register_v.store tag_dom ndi_ldb_l;
  ndi_ldb_l
;;

let provide_without_trace tag_dom =
  if Local_database_nameofdirectory_list_by_domain_tag_register_v.is_stored tag_dom
  then Local_database_nameofdirectory_list_by_domain_tag_register_v.retrieve tag_dom
  else build_n_store tag_dom
;;

let provide_with_trace tag_dom =
  let nam_cod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_cod;

  let result = provide_without_trace tag_dom in

  Management_v.exiting_of_current_module_name nam_cod;
  result
;;

let provide tag_dom =
  if Parameters_figureset_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_dom
  else provide_without_trace tag_dom
;;
