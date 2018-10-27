(** {3 Elementary_as_context_database_tag_by_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_database_tag_by_database_name_provider_v";
   "Needs : CON:Context_database_index_by_database_name_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_database_tag from Database_name";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dba =
  let soi_dom = Elementary_context_domain_sole_index_by_unit_provider_v.provide () in
  let idx_dba = Context_database_index_by_database_name_provider_v.provide nam_dba in
  let soi_dba = Sole_index_v.make idx_dba soi_dom in
  let sym_ele_dba = Elementary_symbol_v.elementary_context_database_constructor nam_dba in
  Tag_v.make sym_ele_dba soi_dba
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_as_context_database_tag_by_database_name_provider_v.ml on mercredi 25 mai 2016, 10:04:03 (UTC+0200) *)
