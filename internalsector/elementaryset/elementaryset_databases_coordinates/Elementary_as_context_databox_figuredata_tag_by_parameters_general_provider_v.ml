(** {3 Elementary_as_context_databox_figuredata_tag_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_figuredata_tag_by_parameters_general_provider_v";
   "Needs : CON:Elementary_as_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
  ]
;;

(** {6 Building} *)

let build () =
  let nam_dba = Parameters_general_provider_v.provide "database-name" in
  let nam_dbo = Parameters_general_provider_v.provide "databox-name" in
  Elementary_as_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
;;

let build_n_store () =
  build () 
;;

let provide_without_trace () =
  build ()
;;

let provide_with_trace () =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace () in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide () =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace ()
  else provide_without_trace ()
;;


