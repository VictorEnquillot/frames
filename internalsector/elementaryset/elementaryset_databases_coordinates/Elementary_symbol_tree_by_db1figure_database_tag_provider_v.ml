(** {3 Elementary_tree_symbol_tree_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_tree_by_db1figure_database_tag_provider_v";
   "Needs : DB1DBA:Db1figure_tag_subtree_by_db1figure_database_tag_provider_v";
   "Needs : DELE:Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the tree of all Elementary_symbol in Db1 Elementary_context_database_tag";
   "How-is-it-done : by translating the Db1_elementary_context_database tree Tags";
   "How-is-it-done : Db1figure_component_vertex and Db1figure_element_vertex";
   "How-is-it-done : are both translated as Point. Component node is skipped";
   "Remark : No storage. Only Tags are stored";
  ]
;;

(** {6 Translating} *)

let elementary_symbol_of_db1figure_database_tag tag_dld =
  let sym_dld = Tag_v.entity_off_tag tag_dld in
  let sof_dld = Db1figure_database_symbol_v.string_off sym_dld in
  Elementary_symbol_v.elementary_context_database sof_dld 
;;

(** {6 Building} *)

let build tag_dld =
  let tag_den_t = 
    Db1figure_tag_subtree_by_db1figure_database_tag_provider_v.provide 
      tag_dld 
  in

  let tag_den_eve_l = 
    Tree_v.node_filter_of_node_predicate_off_tree 
       (fun t -> Db1figure_symbol_v.is_db1figure_element_vertex_symbol_off_db1figure_symbol 
	  (Tag_v.entity_off_tag t)) 
    tag_den_t
  in

  let tag_dev_l = List.map (* coerce down *)
      (Tag_v.map_entity
	 Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol)
      tag_den_eve_l 
  in  

  let sym_ele_sut_l = List.map
      Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide 
      tag_dev_l 
  in

  let sym_ele_dba = elementary_symbol_of_db1figure_database_tag tag_dld in

  Tree_v.make_of_node sym_ele_dba sym_ele_sut_l
;;

let build_n_store tag_dld =
  build tag_dld 
;;

let provide_without_trace tag_dld =
  build tag_dld
;;

let provide_with_trace tag_dld =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_dld in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_dld =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_dld
  else provide_without_trace tag_dld
;;


