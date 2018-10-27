open Make_test_v;;

testing "Check_consistency_by_skeleton_context_name_quatuor_provider_v with
        Check_consistency_by_skeleton_context_name_quatuor_provider_u_any.ml";;

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
   #use "Check_consistency_by_skeleton_context_name_quatuor_provider_u_any.ml";; 

*)

open Check_consistency_by_skeleton_context_name_quatuor_provider_v;;

let nam_ecs = "internal";;
let nam_ecd = "skeleton";;
let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

Check_consistency_by_basicname_databox_n_basicname_database_provider_v.provide (nam_ebo, nam_eba);;

let nam_sec = Skeleton_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"internal"
);;

let nam_dom = Skeleton_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_dom : string ) = 
"skeleton"
);;

let nam_qua = Quadruplet_v.make nam_ebo nam_eba nam_ecd nam_ecs;;

test_number 3 (
(nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("try_ao", "nwchem", "skeleton", "internal")
);;

test_number 4 (
() = provide nam_qua
);;
