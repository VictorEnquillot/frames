open Make_test_v;;

testing "Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v with
        Parameter_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Parameter_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;

let nam_dba = "nwchem";;

let nam_qua = Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba) ;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "parameter", "internal")
);;

let (nam_dbo, nam_dba, nam_ecd, nam_ecs) = nam_qua;;

let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_pba = Database_ordinal_by_database_name_provider_v.provide nam_dba;;
    
let ord_pbo = Databox_ordinal_by_databox_name_provider_v.provide nam_dbo;;
  
let soi_pbo = [ord_pbo; ord_pba; ord_ecd; ord_ecs];;

test_number 2 (
(soi_pbo : int list ) = 
[22; 5; 16; 5]
);;

let sym_pbo = 
    Parameter_context_databox_symbol_v.parameter_context_databox_constructor 
      nam_dbo;;

test_number 3 (
(sym_pbo : Parameter_context_databox_symbol_t.parameter_context_databox_symbol ) =
  Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
   "try_ao"
);;
 
let tag_pbo = Tag_v.make sym_pbo soi_pbo;;

test_number 4 (
(tag_pbo : Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "try_ao",
   [22; 5; 16; 5])
);;

test_number 5 (
tag_pbo = provide (nam_dbo, nam_dba)
);;
