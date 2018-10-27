(** {3 Elementary_context_databox_tag_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_databox_tag_by_parameters_general_provider_v";
   "Needs : CON:Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needs : DELE:Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "Definition : a Database is a Directory were Databox are stored";
   "Example : Database : frames/databaseset/figuredata/db1figure/";
   "Example : Databox figurefile : .../db1figure/files/triangle_isoright.db1";
   "Example : Database : frames/databaseset/skeletondata/nwchem";
   "Example : Databox databox : .../nwchem/files/cc_pvtz.nwc";
   "What-is-it : the Elementary_context_databox_tag from Parameters";
   "Improve : Need figure etc ...";
   "Improve : move domaindata_name_of_database_name_n_databox_name to CONTEXT ";
  ]
;;

(** {6 Building} *)

let build () =

  let nam_dba = Parameters_general_provider_v.provide "database-name" in
  let nam_dbo = Parameters_general_provider_v.provide "databox-name" in

  Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
  
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


