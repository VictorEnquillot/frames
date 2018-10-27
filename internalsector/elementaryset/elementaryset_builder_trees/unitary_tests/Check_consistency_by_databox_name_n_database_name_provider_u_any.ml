open Make_test_v;;

testing "Check_consistency_by_databox_name_n_database_name_provider_v with
        Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Check_consistency_by_databox_name_n_database_name_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
() = provide (nam_ebo, nam_eba)
);;
