open Make_test_v;;


(* toplevel 

*)


(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;


test_number 2 (
tag_ver_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
[(Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_vertex
       "a"),
  [5])]
);;

