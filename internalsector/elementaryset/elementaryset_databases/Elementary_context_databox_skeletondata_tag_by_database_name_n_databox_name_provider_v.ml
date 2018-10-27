(** {3 Elementary_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v";
   "Needs : CON:Global_domainset_index_by_domain_name_provider_v";
   "Needs : CON:Global_databox_sole_index_by_database_name_n_databox_name_provider_v";
   "Needs : SELE:Elementary_context_databox_skeletondata_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_databox_tag from Databox_name";
   "Author : François Colonna 18 february 2016. Use Global";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let nam_sec = "internal" in 
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let nam_qua = Quatuor_v.make nam_sec nam_dom nam_dba nam_dbo in
  let (ord_sec, ord_dom, ord_dba, ord_dbo) = 
       Context_ordinal_quatuor_by_context_name_quatuor_provider_v.provide nam_qua 
  in
  let soi_ebo = [ord_dbo; ord_dba; ord_dom; ord_sec] in
  let sym_ebo = 
    Elementary_context_databox_skeletondata_symbol_v.elementary_context_databox_skeletondata_constructor 
      nam_dbo 
  in
  Tag_v.make sym_ebo soi_ebo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v.ml on mercredi 25 mai 2016, 10:04:04 (UTC+0200) *)
