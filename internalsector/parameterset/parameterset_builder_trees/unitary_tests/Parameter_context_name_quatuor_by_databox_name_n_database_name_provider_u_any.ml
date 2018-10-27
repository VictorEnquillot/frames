open Make_test_v;;

testing "Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_v with
    Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let nam_ecs = Parameter_context_sector_name_by_unit_provider_v.provide ();;
  
let nam_ecd = Parameter_context_domain_name_by_unit_provider_v.provide ();;
  
let nam_qua = Quatuor_v.make nam_dbo nam_dba nam_ecd nam_ecs;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "parameter", "internal")
);;

test_number 2 (
() = Check_consistency_by_parameter_context_name_quatuor_provider_v.provide nam_qua
);;

test_number 3 (
nam_qua = provide (nam_dbo, nam_dba)
);;
