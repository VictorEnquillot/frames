open Make_test_v;;

testing "Record_list_by_database_db1_component_vertex_tag_provider_v
   Record_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

(* toplevel 
   #use "Record_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

*)
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_cod = "Record_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;


(* 1 Vertex a *)

let nam_ver = "a";;
let tag_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) tag_ver_l;;

test_number 2 ( 
tag_ver
(* : Database_entity_symbol_t.alien_database_entity_symbol Tag_t.tag *)
=
 (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_vertex "a"),
   [5])
);;

let rec_l = Record_list_by_database_db1_component_vertex_tag_provider_v.provide tag_ver;;

test_number 3 ( 
 rec_l 
(* : string list *)
  =
["vertex A       2. 0. -1."]
);;
