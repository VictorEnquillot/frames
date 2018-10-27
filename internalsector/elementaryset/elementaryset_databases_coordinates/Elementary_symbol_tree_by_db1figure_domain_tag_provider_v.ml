(** {3 Elementary_tree_symbol_tree_by_elementary_context_domain_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_tree_by_db1figure_domain_tag_provider_v";
   "Needs : DB1DBA:Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v";
   "Needs : DELE:Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the tree of all Elementary_symbol Rooted by Elementary_context_domain_tag";
   "How-is-it-done : by translation from the Db1figure_domain tree Tags";
   "How-is-it-done : The Elementary_symbol_tree is built in three parts :";
   "How-is-it-done : Context : Elementary Domain and Database";
   "How-is-it-done : Db1figure_component_vertex and Db1figure_element_vertex";
   "How-is-it-done : Db1figure_component_vertex and Db1figure_element_vertex";
   "How-is-it-done : Db1figure_component_vertex and Db1figure_element_vertex";
   "How-is-it-done : are both translated as Point. Component node is skipped";
   "Remark : Domain and Database Symbols are Constants here";
   "Remark : No storage. Only Tags are stored";
  ]
;;

let body_symbol_subtree_list tag_ddo =
  let tag_dd1_l = 
    Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v.provide 
      tag_ddo 
  in

  let tag_dd1_eve_l = 
    List.filter (fun t -> 
      Db1figure_symbol_v.is_db1figure_element_vertex_symbol_off_db1figure_symbol 
	(Tag_v.entity_off_tag t) ) 
      tag_dd1_l
  in

  let tag_dev_l = List.map (* coerce down *)
      (Tag_v.map_entity
	 Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol)
      tag_dd1_eve_l 
  in  

  List.map
    Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide 
    tag_dev_l 
;;

let context_symbol_tree sym_bod_sut_l =
  let sym_ele_dom = Elementary_symbol_v.elementary_context_domain_constructor "elementary" in
  let sym_ele_dba = Elementary_symbol_v.elementary_context_database "db1" in

  let sym_ele_dba_st = Tree_v.make_of_node sym_ele_dba sym_bod_sut_l in
  Tree_v.make_of_node sym_ele_dom [sym_ele_dba_st] 
;;

(** {6 Building} *)

let build tag_ddo =
  let sym_bod_sut_l = body_symbol_subtree_list tag_ddo in
  context_symbol_tree sym_bod_sut_l
;;

let build_n_store tag_ddo =
  build tag_ddo 
;;

let provide_without_trace tag_ddo =
  build tag_ddo
;;

let provide_with_trace tag_ddo =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_ddo in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_ddo =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_ddo
  else provide_without_trace tag_ddo
;;


