open Make_test_v;;

testing "Db1pointsdata_context_database_tag_by_unit_provider_v with
        Db1pointsdata_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Db1pointsdata_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Db1pointsdata_context_database_tag_by_unit_provider_v;;
  
let (nam_dba, nam_dom, nam_sec) =
  Db1pointsdata_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_dba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("db1points", "figure", "external")
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
    (nam_dba, nam_dom, nam_sec)
;;
  
test_number 2 (
(soi_dba : int list ) = 
[1; 7; 2]
);;

let sym_dba = 
  Db1pointsdata_context_database_symbol_v.db1pointsdata_context_database_constructor 
    nam_dba 
;;

test_number 3 (
(sym_dba : Db1pointsdata_context_database_symbol_t.db1pointsdata_context_database_symbol ) =
  Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
   "db1points"
);;
 
let tag_dba = Tag_v.make sym_dba soi_dba;;

test_number 4 (
(tag_dba : Db1pointsdata_context_database_symbol_t.db1pointsdata_context_database_symbol
  Tag_t.tag ) =
  (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
    "db1points",
   [1; 7; 2])
);;

test_number 5 (
tag_dba = provide ()
);;
