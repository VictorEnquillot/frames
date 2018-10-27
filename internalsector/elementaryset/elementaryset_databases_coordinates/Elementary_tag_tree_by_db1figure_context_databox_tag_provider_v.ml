(** {3 Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v";
   "Register : DELE:Elementary_tag_tree_by_elementary_tag_register_v";
   "Register : DELE:Elementary_symbol_by_sole_index_register_v";
   "Register : DELE:Elementary_creation_module_name_by_sole_index_register_v";
   "Needed-by : DELE:";
   "Needs : DELE:Elementary_as_context_tag_trio_by_db1figure_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_context_domain_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_context_database_tag_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_context_databox_skeletondata_tag_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_v";
   "Needs : BNWC:Db1figure_context_databox_tag_v";
   "Definition : a (\"Y-Tree\") Wye-tree is a Tree the root of which is prolongated upwards with a linear Tree";
   "What-is-it : the Elementary Tag Wye-Builder-Tree from Databox_tag";
   "How-is-it-done : getting Elementary_symbol subtree rooted by Databox_symbol"; 
   "How-is-it-done : adding Elementary Context Tag Triplet on Top of it (Wye-tree)";
   "Abbreviation : ddb = db1figure_context_database";
   "Abbreviation : ddf = db1figure_context_databox";
   "Abbreviation : edf = elementary_context_databox";
 ]
;;

(*  Context Wye-Tree        *)

(*  Domain Tag        ecd   *)
(*      |                   *)
(*  Database Tag      edb   *)
(*      |                   *)
(*  Databox Tag Tree edf_t *)

(** {6 Context Tags} *)

let build tag_ddf =
  let sym_ele_edf_st =
    Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_v.provide
      tag_ddf
  in

  let (tag_ele_ecd, tag_ele_edb, tag_ele_edf) = 
    Elementary_as_context_tag_trio_by_db1figure_context_databox_tag_provider_v.provide
      tag_ddf 
  in

  let soi_ele_edf = Tag_v.sole_index_off_tag tag_ele_edf in
  let soi_ele_edf_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ele_edf_st 
      soi_ele_edf 
  in
  let tag_ele_edf_st = Tree_v.map2 Tag_v.make sym_ele_edf_st soi_ele_edf_st in
  let tag_ele_edb_st = Tree_v.make_of_node tag_ele_edb [tag_ele_edf_st] in
  
  Tree_v.make_of_node tag_ele_ecd [tag_ele_edb_st]
;;

let build_n_store tag_ddf =
  build tag_ddf 
;;

let provide_without_trace tag_ddf =
  build tag_ddf
;;

let provide_with_trace tag_ddf =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_ddf in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_ddf =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_ddf
  else provide_without_trace tag_ddf
;;


