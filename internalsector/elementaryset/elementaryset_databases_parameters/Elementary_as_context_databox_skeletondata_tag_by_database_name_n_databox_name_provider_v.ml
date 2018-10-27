(** {3 Elementary_as_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Context_database_index_by_database_name_provider_v";
   "Needs : CON:Context_databox_nameoffile_by_database_name_n_databox_name_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
  ]
;;

let is_valid_of_doublet_database_name_n_databox_name (nam_dba, nam_dbo) =
  let nam_dfi_l = Context_name_son_list_by_context_name_provider_v.provide nam_dba in
  (List.exists (fun s -> s = nam_dbo) nam_dfi_l)
;;

(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  if is_valid_of_doublet_database_name_n_databox_name (nam_dba, nam_dbo)
  then
    begin

      let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
      let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom in
      let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba in
      let nof_dfi = 
	Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide
	  (nam_dba, nam_dbo) 
      in 
      let idx_bas = Context_index_by_context_nameoffile_provider_v.provide nof_dfi in
      
      let soi_bas = [idx_bas; idx_dba; idx_dom] in
      
      let sym_ele_bas = Elementary_symbol_v.elementary_context_databox_skeletondata_constructor nam_dbo in
      Tag_v.make sym_ele_bas soi_bas
	
    end
  else 
    begin
      let nam_dfi_l = Context_name_son_list_by_context_name_provider_v.provide nam_dba in
      Error_messages_v.print_fatal_error __LOC__ "build"
	(Format.sprintf "Databox name >%s< were son of Database >%s<" nam_dbo nam_dba)
	(Format.sprintf "Databox list is:@  %s" (List_v.name_in_column (fun s -> s) nam_dfi_l))
	"Check"
    end
;;

let build_n_store (nam_dba, nam_dbo) =
  build (nam_dba, nam_dbo) 
;;

let provide_without_trace (nam_dba, nam_dbo) =
  build (nam_dba, nam_dbo)
;;

let provide_with_trace (nam_dba, nam_dbo) =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace (nam_dba, nam_dbo) in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide (nam_dba, nam_dbo) =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace (nam_dba, nam_dbo)
  else provide_without_trace (nam_dba, nam_dbo)
;;


