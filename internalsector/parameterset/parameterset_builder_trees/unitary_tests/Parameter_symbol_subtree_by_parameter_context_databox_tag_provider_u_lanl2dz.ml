open Make_test_v;;

testing "Parameter_symbol_subtree_by_parameter_context_databox_tag_provider_v with
    Parameter_symbol_subtree_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";;

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
   #use "Parameter_symbol_subtree_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

open Parameter_symbol_subtree_by_parameter_context_databox_tag_provider_v;;

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 ( 
(tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "LANL2DZ",
   [9; 5; 6; 5])
);;

(* Argument tag_pbo *)

test_number 2 (
(nam_dbo, nam_dba) = 
    Databox_name_n_database_name_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo 
);;

let sym_nwc_st = Parameter_symbol_subtree_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 3 (
sym_nwc_st = provide tag_pbo
);;
