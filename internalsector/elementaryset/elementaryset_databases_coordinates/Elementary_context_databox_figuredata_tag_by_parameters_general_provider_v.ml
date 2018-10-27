(** {3 Elementary_context_databox_figuredata_tag_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_databox_figuredata_tag_by_parameters_general_provider_v";
   "Needs : CON:Elementary_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v";
   "Needs : DELE:Elementary_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
   "Author : François Colonna 18 february 2016";
  ]
;;

(** {6 Building} *)

let build () =
  let tag_ele_dfi = 
    Elementary_as_context_databox_figuredata_tag_by_parameters_general_provider_v.provide ()
  in
  Tag_v.map_entity (* Coerce Down *)
    Elementary_symbol_v.elementary_context_databox_figuredata_symbol_off_elementary_symbol 
    tag_ele_dfi
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


