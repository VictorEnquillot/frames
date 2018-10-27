(** {3 Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DPRT:Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Context_database_index_by_database_name_provider_v";
   "Needs : CON:Context_databox_nameoffile_by_database_name_n_databox_name_provider_v";
   "Needs : SPRT:Figure_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Figure_context_databox_tag from Databox_name";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let idx_dom = Global_domainset_index_by_domain_name_provider_v.provide nam_dom in
  let soi_dbo = 
    Global_databox_sole_index_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in
  let soi_dbo_fig = 
    List_v.replace_last_element_of_element_of_list 
      idx_dom 
      soi_dbo
  in
  let sym_fig_dbo = 
    Figure_symbol_v.figure_context_databox_constructor 
      nam_dbo 
  in
  Tag_v.make sym_fig_dbo soi_dbo_fig
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:35:56 (UTC+0200) *)
