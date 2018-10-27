(** {3 Elementary_as_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_figuredata_tag_by_database_name_n_databox_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Global_databox_sole_index_by_database_name_n_databox_name_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
   "Author : François Colonna 18 February 2016. Use Global";
  ]
;;

(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom in
  let soi_dfi_fig = 
    Global_databox_sole_index_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in
  let soi_dfi_ele = 
    List_v.replace_last_element_of_element_of_list 
      idx_dom 
      soi_dfi_fig
  in
  let sym_ele_dfi = 
    Elementary_symbol_v.elementary_context_databox_figuredata_constructor 
      nam_dbo 
  in
  Tag_v.make sym_ele_dfi soi_dfi_ele
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


