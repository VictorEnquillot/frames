(** {3 Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v";
   "Needs : DELE:Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v";
   "Needs : DELE:Elementary_as_context_databox_skeletondata_tag_by_databox_name_n_database_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Elementary as context_databox_tag from Database and Databox_name";
   "Author : François Colonna 18 february 2016. Use Global";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dbo, nam_dba) =

  let soi_dfi_glo = 
    Global_databox_sole_index_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba)
  in
  let soi_dom_glo = [List_v.last_element_off_list soi_dfi_glo] in
  let nam_dom = 
    Context_name_by_databaseset_global_sole_index_provider_v.provide
      soi_dom_glo
  in
  match nam_dom with 
  | "figure" ->
      Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v.provide
	(nam_dbo, nam_dba)
	
  | "skeleton" ->
	Elementary_as_context_databox_skeletondata_tag_by_databox_name_n_database_name_provider_v.provide
	  (nam_dbo, nam_dba)
  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Domain data name were figure|skeleton"
	nam_dom
	"Check or add it"
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
