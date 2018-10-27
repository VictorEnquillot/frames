(** {3 Figure_as_context_database_tag_by_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_as_context_database_tag_by_database_name_provider_v";
   "Needs : DFIG:Figure_context_domain_tag_by_unit_provider_v";
   "Needed-by :"; 
   "What-is-it : the Figure_context_database_tag from Database_name";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dba =
  let soi_con_dba = Context_sole_index_by_context_name_provider_v.provide nam_dba in
  let soi_dba = List_v.cut_off_last_element_off_list soi_con_dba in
  let sym_prt_dba = Figure_symbol_v.figure_context_database_constructor nam_dba in
  Tag_v.make sym_prt_dba soi_dba
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_as_context_database_tag_by_database_name_provider_v.ml on jeudi 19 mai 2016, 18:35:56 (UTC+0200) *)
