open Make_test_v;;

testing "Parameter_as_context_database_tag_by_database_name_provider_v with
        Parameter_as_context_database_tag_by_database_name_provider_u_any.ml";;

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
   #use "Parameter_as_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

open Parameter_as_context_database_tag_by_database_name_provider_v;;

let nam_dba = "nwchem";;

let nam_ecs = Parameter_context_sector_name_by_unit_provider_v.provide ();;

let nam_ecd = Parameter_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_pba = Database_ordinal_by_database_name_provider_v.provide nam_dba;;
  
let soi_pba = [ord_pba; ord_ecd; ord_ecs];;

test_number 1 (
(soi_pba : int list ) = 
[5; 6; 5]
);;

let sym_par_pba = 
  Parameter_symbol_v.parameter_context_database_constructor 
    nam_dba 
;;

test_number 2 (
(sym_par_pba : Parameter_symbol_t.parameter_symbol ) =
 Parameter_symbol_t.Parameter_context_symbol
   (Parameter_context_symbol_t.Parameter_context_database_symbol
     (Parameter_context_database_symbol_t.Parameter_context_database_constructor
       "nwchem"))
);;
 
let tag_par_pba = Tag_v.make sym_par_pba soi_pba;;

test_number 3 (
(tag_par_pba : Parameter_symbol_t.parameter_symbol
  Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_database_symbol
      (Parameter_context_database_symbol_t.Parameter_context_database_constructor
        "nwchem")),
   [5; 6; 5])
);;

test_number 4 (
tag_par_pba = provide nam_dba
);;
