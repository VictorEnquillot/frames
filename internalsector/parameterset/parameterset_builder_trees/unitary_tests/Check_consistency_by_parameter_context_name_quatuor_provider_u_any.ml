open Make_test_v;;

testing "Check_consistency_by_parameter_context_name_quatuor_provider_v with
        Check_consistency_by_parameter_context_name_quatuor_provider_u_any.ml";;

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
   #use "Check_consistency_by_parameter_context_name_quatuor_provider_u_any.ml";; 

*)

open Check_consistency_by_parameter_context_name_quatuor_provider_v;;

let nam_ecs = "internal";;
let nam_ecd = "parameter";;
let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

Check_consistency_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let nam_sec = Parameter_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string ) = 
"internal"
);;

let nam_dom = Parameter_context_domain_name_by_unit_provider_v.provide ();;

test_number 2 (
(nam_dom : string ) = 
"parameter"
);;

let nam_qua = Quadruplet_v.make nam_dbo nam_dba nam_ecd nam_ecs;;

test_number 3 (
(nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("try_ao", "nwchem", "parameter", "internal")
);;

test_number 4 (
() = provide nam_qua
);;
