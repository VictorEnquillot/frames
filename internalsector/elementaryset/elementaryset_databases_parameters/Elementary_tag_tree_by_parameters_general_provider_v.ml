(** {3 Elementary_tag_tree_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_context_databox_tag_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
   "What-is-it : the list of all Nodes of the Tag Builder-tree Partial";
   "Remark : need to fill register in Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
 ]
;;

(** {6 Building} *)

let build () =
  let tag_edf = Elementary_context_databox_tag_by_parameters_general_provider_v.provide () in
  let soi_edf = Tag_v.sole_index_off_tag tag_edf in
  let sym_edf = Tag_v.entity_off_tag tag_edf in
  match sym_edf with
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eba ->
      let tag_eba = Tag_v.make sym_eba soi_edf in
      Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v.provide tag_eba

  | _ ->   
      Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Elementary_context_databox_symbol >%s< were defined" 
	 (Elementary_context_databox_symbol_v.fullname sym_edf)
      )
	"it is NOT"	
	"Check or add it"
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
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace ()
  else provide_without_trace ()
;;


