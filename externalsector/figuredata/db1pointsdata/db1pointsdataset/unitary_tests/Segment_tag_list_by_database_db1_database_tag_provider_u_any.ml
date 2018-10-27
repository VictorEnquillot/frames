open Make_test_v;;

testing "Segment_tag_list_by_database_db1_database_tag_provider_v
   Segment_tag_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Segment_tag_list_by_database_db1_database_tag_provider_u_any.ml";;

*)

let nam_cod = "Segment_tag_list_by_database_db1_database_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_vec_l = Segment_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
tag_vec_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
[(Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_segment
       "bc"),
  [4])]
);;

