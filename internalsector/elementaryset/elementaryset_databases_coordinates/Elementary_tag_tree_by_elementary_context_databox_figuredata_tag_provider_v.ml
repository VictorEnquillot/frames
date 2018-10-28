(** {3 Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v";
   "Needs : DELE:Elementary_context_databox_figuredata_tag_v";
   "Needs : DELE:Db1figure_context_databox_tag_by_databox_name_provider_v";
   "Needs : DELE:Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v";
   "Needed-by : DELE:";
   "What-is-it : the Full Elementary Tag Builder-Tree";
   "How-is-it-done : by getting Elementary_tag_tree from Db1figure_context_databox_tag";
 ]
;;

let database_name_of_elementary_context_databox_figuredata_tag tag_edf =
  let nam_dbo = Elementary_context_databox_figuredata_tag_v.string_off tag_edf in
  let nam_dba = Parameters_general_provider_v.provide "database-name" in
  let nam_dfi_l = Context_name_son_list_by_context_name_provider_v.provide nam_dba in
  if not (List.exists (fun s -> s = nam_dbo) nam_dfi_l)
  then
    Error_messages_v.print_fatal_error __LOC__ "database_name_of_elementary_context_databox_figuredata_tag"
      (Format.sprintf "Databox name >%s< were son of Database >%s<" nam_dbo nam_dba)
      (Format.sprintf "Databox list is:@  %s" (List_v.name_in_column (fun s -> s) nam_dfi_l))
      "Check"
  else nam_dba
;;

let build tag_edf =
  let nam_dba = database_name_of_elementary_context_databox_figuredata_tag tag_edf in
  match nam_dba with 
  | "db1figure" ->
      let nam_dbo = Elementary_context_databox_figuredata_tag_v.string_off tag_edf in
      let tag_ncb = Db1figure_context_databox_tag_by_databox_name_provider_v.provide nam_dbo in
      Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v.provide tag_ncb

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Database name >%s< exists" nam_dba)
        "it does NOT"
        "Add it"
;;

let build_n_store tag_edf =
  build tag_edf 
;;

let provide_without_trace tag_edf =
  build tag_edf
;;

let provide_with_trace tag_edf =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_edf in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_edf =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_edf
  else provide_without_trace tag_edf
;;

