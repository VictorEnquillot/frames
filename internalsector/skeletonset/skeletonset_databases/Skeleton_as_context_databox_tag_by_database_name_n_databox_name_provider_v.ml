(** {3 Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Context_database_index_by_database_name_provider_v";
   "Needs : CON:Context_databox_nameoffile_by_database_name_n_databox_name_provider_v";
   "Needs : SSKE:Skeleton_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Skeleton_context_databox_tag from Databox_name";
  ]
;;

let is_valid_of_doublet_database_name_n_databox_name (nam_dba, nam_dfi) =
  let nam_dfi_l = Context_name_son_list_by_context_name_provider_v.provide nam_dba in
  (List.exists (fun s -> s = nam_dfi) nam_dfi_l)
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dfi) =
  if is_valid_of_doublet_database_name_n_databox_name (nam_dba, nam_dfi)
  then
    begin
      let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
      let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom in
      let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba in
      let nof_dfi = 
	Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide
	  (nam_dba, nam_dfi) 
      in 
      let idx_dfi = Context_index_by_context_nameoffile_provider_v.provide nof_dfi in
      
      let soi_dfi = [idx_dfi; idx_dba; idx_dom] in
      
      let sym_ske_dfi = Skeleton_symbol_v.skeleton_context_databox_constructor nam_dfi in
      Tag_v.make sym_ske_dfi soi_dfi
	
    end
  else 
    begin
      let nam_dfi_l = Context_name_son_list_by_context_name_provider_v.provide nam_dba in
      Error_messages_v.print_fatal_error __LOC__ "build"
	(Format.sprintf "Databox name >%s< were son of Database >%s<" nam_dfi nam_dba)
	(Format.sprintf "Databox list is:@  %s" (List_v.name_in_column (fun s -> s) nam_dfi_l))
	"Check"
    end
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:29:51 (UTC+0200) *)
