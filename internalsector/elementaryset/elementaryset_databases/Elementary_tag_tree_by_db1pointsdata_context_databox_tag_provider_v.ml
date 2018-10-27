(** {3 Elementary_tag_tree_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by : DELE:";
   "Needs : DELE:Elementary_as_context_tag_trio_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_context_domain_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_context_database_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_context_databox_skeletondata_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : DELE:Db1pointsdata_context_databox_tag_v";
   "Definition : a (\"Y-Tree\") Wye-tree is a Tree the root of which is prolongated upwards with a linear Tree";
   "What-is-it : the Elementary Tag Wye-Builder-Tree from Databox_tag";
   "How-is-it-done : getting Elementary_symbol subtree rooted by Databox_symbol"; 
   "How-is-it-done : adding Elementary Context Tag Triplet on Top of it (Wye-tree)";
   "Abbreviation : ddb = db1pointsdata_context_database";
   "Abbreviation : ddf = db1pointsdata_context_databox";
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

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ddf =
  let sym_ele_edf_st =
    Elementary_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.provide
      tag_ddf
  in

  let (tag_ele_ecd, tag_ele_edb, tag_ele_edf) = 
    Elementary_as_context_tag_trio_by_db1pointsdata_context_databox_tag_provider_v.provide
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


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:06 (UTC+0200) *)
