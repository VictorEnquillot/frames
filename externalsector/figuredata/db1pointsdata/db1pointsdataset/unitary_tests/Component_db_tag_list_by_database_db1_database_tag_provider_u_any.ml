open Make_test_v;;

testing "Component_db_tag_list_by_database_db1_database_tag_provider_v";;

(* toplevel 
   #use "Component_db_tag_list_by_database_db1_database_tag_provider_u_any.ml";; 

*)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_cts_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
tag_cts_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "T")),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "u")),
    [2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_triangle "v")),
    [3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_segment "bc")),
    [4; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Database_db1_group_symbol
       (Database_db1_group_symbol_t.Db1_vertex "a")),
    [5; 1])]
);;

