open Make_test_v;;

testing "Check_consistency_by_databox_name_n_database_name_provider_v with
        Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Check_consistency_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Check_consistency_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
() = provide (nam_dbo, nam_dba)
);;
