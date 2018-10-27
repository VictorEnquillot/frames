open Make_test_v;;

testing "Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_v with
    Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_u_any.ml";;

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
   #use "Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;
    
  let tag_dcs = Db1pointsdata_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_dcd = Db1pointsdata_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_dba = Db1pointsdata_context_database_tag_by_unit_provider_v.provide ();;
  let tag_dbo = Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v.provide nam_dbo;;
  
  let tag_qua = Quadruplet_v.make tag_dbo tag_dba tag_dcd tag_dcs;;

let nam_qua = Quadruplet_v.map 
    Db1pointsdata_context_databox_tag_v.string_off 
    Db1pointsdata_context_database_tag_v.string_off 
    Db1pointsdata_context_domain_tag_v.string_off 
    Db1pointsdata_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 1 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Point_a", "db1points", "figure", "external")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;;

test_number 2 (
( tag_qua :
  (Db1pointsdata_context_databox_symbol_t.db1pointsdata_context_databox_symbol
   Tag_t.tag,
   Db1pointsdata_context_database_symbol_t.db1pointsdata_context_database_symbol
   Tag_t.tag,
   Db1pointsdata_context_domain_symbol_t.db1pointsdata_context_domain_symbol
   Tag_t.tag,
   Db1pointsdata_context_sector_symbol_t.db1pointsdata_context_sector_symbol
   Tag_t.tag)
     Quadruplet_t.quadruplet ) =
  ((Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
      "Point_a",
    [5; 1; 7; 2]),
   (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
      "db1points",
    [1; 7; 2]),
   (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
      "figure",
    [7; 2]),
   (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
      "external",
    [2]))
 );;

test_number 3 (
tag_qua = provide nam_dbo
);;
