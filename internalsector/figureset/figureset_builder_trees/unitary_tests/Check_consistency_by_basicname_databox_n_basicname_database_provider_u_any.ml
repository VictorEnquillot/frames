open Make_test_v;;

testing "Check_consistency_by_basicname_databox_n_basicname_database_provider_v with
        Check_consistency_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Check_consistency_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Check_consistency_by_basicname_databox_n_basicname_database_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

Check_consistency_by_box_name_n_base_name_provider_v.provide (nam_fbo, nam_fba);;

test_number 1 (
() = provide (nam_fbo, nam_fba)
);;
