open Make_test_v;;

testing "Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v with
    Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let nam_ecs = Elementary_context_sector_name_by_unit_provider_v.provide ();;
  
let nam_ecd = Elementary_context_domain_name_by_unit_provider_v.provide ();;
  
let nam_qua = Quatuor_v.make nam_ebo nam_eba nam_ecd nam_ecs;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "elementary", "internal")
);;

test_number 2 (
() = Check_consistency_by_elementary_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 3 (
nam_qua = provide (nam_ebo, nam_eba)
);;
