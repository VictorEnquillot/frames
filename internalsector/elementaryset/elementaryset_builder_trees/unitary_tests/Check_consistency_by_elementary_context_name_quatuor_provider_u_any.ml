open Make_test_v;;

testing "Check_consistency_by_elementary_context_name_quatuor_provider_v with
        Check_consistency_by_elementary_context_name_quatuor_provider_u_any.ml";;

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
   #use "Check_consistency_by_elementary_context_name_quatuor_provider_u_any.ml";; 

*)

open Check_consistency_by_elementary_context_name_quatuor_provider_v;;

let nam_ecs = "internal";;
let nam_ecd = "elementary";;
let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

Check_consistency_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba);;

let nam_sec = Elementary_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"internal"
);;

let nam_dom = Elementary_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_dom : string ) = 
"elementary"
);;

let nam_qua = Quadruplet_v.make nam_ebo nam_eba nam_ecd nam_ecs;;

test_number 3 (
(nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("try_ao", "nwchem", "elementary", "internal")
);;

test_number 4 (
() = provide nam_qua
);;
