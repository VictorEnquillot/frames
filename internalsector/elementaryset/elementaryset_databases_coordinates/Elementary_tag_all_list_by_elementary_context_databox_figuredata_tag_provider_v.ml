(** {3 Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_provider_v";
   "Register : DELE:Elementary_creation_module_name_by_sole_index_register_v";
   "Register : DELE:Elementary_symbol_by_sole_index_register_v";
   "Register : DELE:Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_register_v";
   "Needed-by : DELE:";
   "What-is-it : the list of all Nodes of the Tag Builder-tree for a Figurefile";
   "What-is-it : prolongated upwards with Domain Tag Node (Root of Tree)";
 ]
;;

(** {6 Building} *)

let build tag_eba =
  let tag_ele_t = 
    Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v.provide
      tag_eba
  in
  Tree_v.node_list_off_tree tag_ele_t 
;;

(** {6 Storing} *)

let store_creation_module_n_symbol nam_mod tag =
  let (sym, soi) = tag in
  Elementary_creation_module_name_by_sole_index_register_v.store soi nam_mod; 
  Elementary_symbol_by_sole_index_register_v.store soi sym;
;;

let store_all tag_eba =
  let tag_ele_l = build tag_eba in
  let nam_mod = Management_v.current_module_name (documentation ()) in
  List.iter (store_creation_module_n_symbol nam_mod) tag_ele_l  
;;

let build_n_store tag_eba =
  let tag_ele_l = build tag_eba in
  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.store tag_eba tag_ele_l; 
  store_all tag_eba;
  tag_ele_l
;;

let provide_without_trace tag_eba =
  if Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.is_stored tag_eba 
  then Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.retrieve tag_eba
  else build_n_store tag_eba 
;;

let provide_with_trace tag_eba =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_eba in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_eba =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_eba
  else provide_without_trace tag_eba
;;


