(** {3 Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Register : D1FIG:Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_register_v";
   "Register-main : D1FIG:Db2figurefigurefigure_entity_symbol_by_sole_index_register_v";
   "Register-creation : D1FIG:Db2figurefigurefigure_entity_creation_module_name_by_sole_index_register_v";
   "Needs : D1FIG:Db2figurefigurefigure_entity_content_list_list_by_db2figure_entity_local_database_tag_provider_v";
   "Current : D1FIG:Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_provider_v";
   "Needed-by : D1FIG:";
   "What-is-it : for each Database the BT-Tree of Db2figurefigurefigure_entity_tag";
   "Invariant : Non-leaf Symbol Tree has unique nodes";
   "Invariant : Symbol Tree is complete";
 ]
;;

(** {6 Building} *)

let build tag_eld =
  let sym_ent_t = Tree_v.empty in

  let soi_eld = Tag_v.sole_index_off_tag tag_eld in
  let soi_dom = List.tl soi_eld in
  let soi_ent_t = Sole_index_v.sole_index_tree_of_tree_of_int_list sym_ent_t soi_dom in

  Tree_v.map2 Tag_v.make sym_ent_t soi_ent_t
;;

let build_n_store tag_eld =
  let tag_ent_t = build tag_eld in

  Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_register_v.store tag_eld tag_ent_t;

(* tag_eld is excluded : already stored *)
  let tag_son_l = Tree_v.noroot_node_list_off_tree tag_ent_t in
  let sym_son_l = Doublet_list_v.left_list_off_doublet_list tag_son_l in
  let soi_son_l = Doublet_list_v.right_list_off_doublet_list tag_son_l in

  Db2figurefigurefigure_entity_creation_module_name_by_sole_index_register_v.store_of_son_sole_index_list soi_son_l;
  List.iter2 Db2figurefigurefigure_entity_symbol_by_sole_index_register_v.store soi_son_l sym_son_l;
 
  tag_ent_t
;;

let provide_without_trace tag_eld =
  if Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_register_v.is_stored tag_eld 
  then Db2figurefigurefigure_entity_tag_tree_by_db2figure_entity_local_database_tag_register_v.retrieve tag_eld
  else build_n_store tag_eld 
;;

let provide_with_trace tag_eld =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_eld in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_eld =
  if Parameters_figureset_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_eld
  else provide_without_trace tag_eld
;;


