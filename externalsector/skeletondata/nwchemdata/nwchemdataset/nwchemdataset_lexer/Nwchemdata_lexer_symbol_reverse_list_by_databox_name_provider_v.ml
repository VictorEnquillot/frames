(** {3 Nwchemdata_lexer_symbol_reverse_list_by_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LEXNWC:Nwchemdata_lexer_symbol_reverse_list_by_databox_name_provider_v";
   "Register : LEXNWC:Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v";
   "Needs : LEXNWC:Nwchemdata_tag_tree_by_databox_name_provider_v";
   "Needed-by : LEXNWC:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Databox_name_n_database_name with Domain as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_nbo =
  Nwchemdata_lexer_lexical_analysis_v.nwchemdata_lexer_symbol_revlist_of_databox_name nam_nbo 
;;

(** {6 Storing} *)

let store nam_nbo sym_lex_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v.store nam_mod nam_nbo sym_lex_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_nbo =
  let sym_lex_l = build nam_nbo in
  store nam_nbo sym_lex_l;
  sym_lex_l
;;

(** {6 Retrieving} *)

let retrieve nam_nbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result =
    if (Management_v.is_set_trace_of_module_name_of_function_name nam_mod nam_fun) 
    then Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v.retrieve_with_trace nam_nbo 
    else Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v.retrieve nam_mod nam_nbo
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_nbo =
  if Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v.is_stored nam_nbo
  then retrieve nam_nbo
  else build_n_store nam_nbo
;;

(** {6 Providing} *)

let provide nam_nbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh on vendredi 29 avril 2016, 12:08:51 (UTC+0200) *)
