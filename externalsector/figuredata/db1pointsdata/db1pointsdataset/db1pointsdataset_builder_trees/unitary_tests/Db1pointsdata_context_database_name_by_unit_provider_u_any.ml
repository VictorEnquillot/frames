open Make_test_v;;

testing "Db1pointsdata_context_database_name_by_unit_provider_v with
    Db1pointsdata_context_database_name_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;

(* Tracing *)


(* toplevel 
   #use "Db1pointsdata_context_database_name_by_unit_provider_u_any.ml";; 

*)

(* Debug *)

open Db1pointsdata_context_database_name_by_unit_provider_v;;

let (nam_dba, _, _) = Db1pointsdata_context_name_trio_by_unit_provider_v.provide ();;

test_number 1 (
(nam_dba : string ) = 
"db1points"
);;

test_number 2 (
nam_dba = provide ()
);;
