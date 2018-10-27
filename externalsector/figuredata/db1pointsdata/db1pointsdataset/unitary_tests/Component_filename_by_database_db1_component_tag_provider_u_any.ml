open Make_test_v;;

testing "Component_filename_by_database_db1_component_tag_provider_v";;

(* toplevel 
   #use "Component_filename_by_database_db1_component_tag_provider_u_any.ml";; 

*)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_ldb
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
  =
(Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;


let tag_com_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
tag_com_l 
(* : Database_db1_component_symbol_t.database_db1_component_symbol Tag_t.tag list *)
  =
[(Database_db1_component_symbol_t.Database_db1_component_triangle "T", [1]);
 (Database_db1_component_symbol_t.Database_db1_component_triangle "u", [2]);
 (Database_db1_component_symbol_t.Database_db1_component_triangle "v", [3]);
 (Database_db1_component_symbol_t.Database_db1_component_segment "bc", [4]);
 (Database_db1_component_symbol_t.Database_db1_component_vertex "a", [5])]
);;

let tag_com = List.nth tag_com_l 0;;
let cfi = Component_filename_by_database_db1_component_tag_provider_v.provide tag_com;;

let cfi_l = List.map Component_filename_by_database_db1_component_tag_provider_v.provide tag_com_l;;

test_number 3 (
cfi_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
[Filename_p.filename "./triangle_isoacute.db1"; 
 Filename_p.filename "./triangle_isoright.db1"; 
 Filename_p.filename "./triangle_isoobtuse.db1";
 Filename_p.filename "./segment_bc.db1"; 
 Filename_p.filename "./vertex_a.db1"]
);;

test_number 4 (
cfi_l 
  = 
Component_filename_list_by_database_db1_database_tag_provider_v.provide tag_ldb
);;


