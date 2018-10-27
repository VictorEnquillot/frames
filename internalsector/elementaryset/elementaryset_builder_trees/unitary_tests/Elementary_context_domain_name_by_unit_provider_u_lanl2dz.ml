open Make_test_v;;

testing "Elementary_context_domain_name_by_unit_provider_v with
    Elementary_context_domain_name_by_unit_provider_u_lanl2dz.ml";;

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
   #use "Elementary_context_domain_name_by_unit_provider_u_lanl2dz.ml";; 

*)

(* Debug *)

open Elementary_context_domain_name_by_unit_provider_v;;

let nam_dom = provide ();;

test_number 1 (
(nam_dom : string ) = 
"database"
);;
