open Make_test_v;;

testing "Skeleton_context_sector_name_by_unit_provider_v with
    Skeleton_context_sector_name_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Skeleton_context_sector_name_by_unit_provider_u_any.ml";; 

*)

open Skeleton_context_sector_name_by_unit_provider_v;;
  
let fnd_cur = Unix.getenv ("BSKE");;

test_number 1 (
(fnd_cur : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/internalsector/skeletonset/skeletonset_builder_trees"
);;

let (_, nam_sec) =
    Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide
      fnd_cur;;

test_number 2 (
(nam_sec : string ) =
"internal"
);;

test_number 3 (
nam_sec = provide ()
);;
