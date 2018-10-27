open Make_test_v;;

testing "Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v with
        Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_u_any.ml";;

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
   #use "Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;
    
let tag_db1_sec = Db1pointsdata_as_context_sector_tag_by_unit_provider_v.provide ();;

let tag_db1_dcd = Db1pointsdata_as_context_domain_tag_by_unit_provider_v.provide ();;
  
let tag_db1_dba = Db1pointsdata_as_context_database_tag_by_unit_provider_v.provide ();;
 
let tag_db1_dbo = Db1pointsdata_as_context_databox_tag_by_basicname_databox_provider_v.provide nam_dbo;;
  
let tag_db1_q = Quatuor_v.make tag_db1_dbo tag_db1_dba tag_db1_dcd tag_db1_sec;;

test_number 1 (
(tag_db1_q :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [5; 1; 7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]))
);;

test_number 2 (
tag_db1_q = provide nam_dbo
);;
