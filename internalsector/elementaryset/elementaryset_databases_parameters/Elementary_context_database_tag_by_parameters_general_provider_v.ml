(** {3 Elementary_context_database_tag_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_database_tag_by_parameters_general_provider_v";
   "Needs : COM:Parameters_general_provider_v";
   "Needs : DELE:Elementary_context_database_tag_by_database_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_database_tag from Database_name";
  ]
;;

(** {6 Building} *)

let build () =
  let nam_dba = Parameters_general_provider_v.provide "database-name" in
  Elementary_context_database_tag_by_database_name_provider_v.provide nam_dba
;;

let build_n_store () =
  build () 
;;

let provide_without_trace () =
  build_n_store ()
;;

let provide_with_trace () =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace () in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide () =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Utilities_v.obsolete_module nam_mod "Elementary_context_database_tag_by_database_name_provider_v";

  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace ()
  else provide_without_trace ()
;;


