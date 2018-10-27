(** {3 Elementary_context_database_tag_by_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_context_database_tag_by_database_name_provider_v";
   "Needs : DELE:Elementary_as_context_database_tag_by_database_name_provider_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Elementary_context_database_tag from Database_name";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dba =
  let tag_ele_dba = Elementary_as_context_database_tag_by_database_name_provider_v.provide nam_dba in
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_context_database_symbol_off_elementary_symbol 
    tag_ele_dba
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_context_database_tag_by_database_name_provider_v.ml on mercredi 25 mai 2016, 10:04:04 (UTC+0200) *)
