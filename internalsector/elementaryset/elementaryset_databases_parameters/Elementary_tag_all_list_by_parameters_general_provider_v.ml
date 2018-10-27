(** {3 Elementary_tag_all_list_by_parameters_general_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_all_list_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_context_databox_tag_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_provider_v";
   "What-is-it : the list of all Nodes of the Tag Builder-tree (including Root))";
   "Remark : need to fill register in Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_provider_v";
 ]
;;

(** {6 Building} *)

let build () =
  let tag_ecd = Elementary_context_databox_tag_by_parameters_general_provider_v.provide () in
  let soi_ecd = Tag_v.sole_index_off_tag tag_ecd in
  let sym_ecd = Tag_v.entity_off_tag tag_ecd in
  match sym_ecd with
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_edb ->
      let tag_edb = Tag_v.make sym_edb soi_ecd in
      Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_provider_v.provide tag_edb

  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_edf ->
      let tag_edf = Tag_v.make sym_edf soi_ecd in
      Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_provider_v.provide tag_edf

  (* | _ ->    *)
  (*     Error_messages_v.print_fatal_error __LOC__ "build" *)
  (*     (Format.sprintf "Elementary_context_databox_symbol >%s< were defined"  *)
  (* 	 (Elementary_context_databox_symbol_v.fullname sym_ecd) *)
  (*     ) *)
  (* 	"it is NOT"	 *)
  (* 	"Check or add it" *)
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


