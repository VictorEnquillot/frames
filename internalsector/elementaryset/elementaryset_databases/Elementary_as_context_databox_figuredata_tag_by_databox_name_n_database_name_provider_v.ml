(** {3 Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Global_databox_sole_index_by_databox_name_n_database_name_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
   "Author : François Colonna 18 February 2016. Use Global";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dbo, nam_dba) =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom in
  let soi_dfi_fig = 
    Global_databox_sole_index_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba)
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


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_as_context_databox_figuredata_tag_by_databox_name_n_database_name_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
