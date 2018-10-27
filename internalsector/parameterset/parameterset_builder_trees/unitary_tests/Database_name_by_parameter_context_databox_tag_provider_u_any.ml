open Make_test_v;;

testing "Database_name_by_parameter_context_databox_tag_provider_v with
    Database_name_by_parameter_context_databox_tag_provider_u_any.ml";;

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
   #use "Database_name_by_parameter_context_databox_tag_provider_u_any.ml";; 

*)

open Database_name_by_parameter_context_databox_tag_provider_v;;
  
let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "try_ao",
   [22; 5; 16; 5])
);;

let soi_pbo = Tag_v.sole_index_off_tag tag_pbo;;

test_number 2 ( 
(soi_pbo : Sole_index_t.sole_index ) = 
[22; 5; 16; 5]
);;

let ord_pba = Sole_index_v.father_index_off_sole_index soi_pbo;;

test_number 3 (
(ord_pba : int ) = 
5
);;

let nam_dba = Database_name_by_ordinal_provider_v.provide ord_pba;;

test_number 4 ( 
(nam_dba : string ) = 
"nwchem"
);;

test_number 5 (
nam_dba = provide tag_pbo
);;
