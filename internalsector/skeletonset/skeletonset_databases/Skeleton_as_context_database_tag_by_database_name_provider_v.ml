(** {3 Skeleton_as_context_database_tag_by_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_as_context_database_tag_by_database_name_provider_v";
   "Needs : DSKE:Skeleton_context_domain_tag_by_unit_provider_v";
   "Needed-by :"; 
   "What-is-it : the Skeleton_context_database_tag from Database_name";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dba =
  let soi_con_dba = Context_sole_index_by_context_name_provider_v.provide nam_dba in
  let soi_dba = List_v.cut_off_last_element_off_list soi_con_dba in
  let sym_ske_dba = Skeleton_symbol_v.skeleton_context_database_constructor nam_dba in
  Tag_v.make sym_ske_dba soi_dba
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_as_context_database_tag_by_database_name_provider_v.ml on jeudi 19 mai 2016, 18:29:51 (UTC+0200) *)
