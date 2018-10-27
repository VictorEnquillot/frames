open Make_test_v;;

testing "Check_consistency_by_basicname_databox_n_basicname_database_provider_v with
        Check_consistency_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Check_consistency_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Check_consistency_by_basicname_databox_n_basicname_database_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
() = provide (nam_ebo, nam_eba)
);;
