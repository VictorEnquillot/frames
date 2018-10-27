open Make_test_v;;

testing "Parameter_as_context_database_tag_by_unit_provider_v with
    Parameter_as_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Parameter_as_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Parameter_as_context_database_tag_by_unit_provider_v;;
  
let (nam_dba, nam_dom, nam_sec) = 
  Parameter_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide () 
;;

test_number 1 (
((nam_dba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("nwchem", "skeleton", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_dba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_nwc_pba = 
  Parameter_symbol_v.parameter_context_database_constructor 
    nam_dba 
;;

test_number 3 (
(sym_nwc_pba : Parameter_symbol_t.parameter_symbol ) =
  Parameter_symbol_t.Parameter_context_symbol
   (Parameter_context_symbol_t.Parameter_context_database_symbol
     (Parameter_context_database_symbol_t.Parameter_context_database_constructor
       "nwchem"))
);;
 
let tag_nwc_pba = Tag_v.make sym_nwc_pba soi_dba;;

test_number 4 (
(tag_nwc_pba : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_database_symbol
      (Parameter_context_database_symbol_t.Parameter_context_database_constructor
        "nwchem")),
   [5; 20; 2])
);;

test_number 5 (
tag_nwc_pba = provide ()
);;
