open Make_test_v;;

testing "Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v
   Triangle_isoacuteag_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_isoacuteag_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Triangle_isoacuteag_list_by_database_db1_database_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
tag_tri_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
 [(Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Db1_triangle
       "T"),
    [1]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Db1_triangle
       "u"),
    [2]);
   (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Db1_triangle
       "v"),
    [3])]
);;

