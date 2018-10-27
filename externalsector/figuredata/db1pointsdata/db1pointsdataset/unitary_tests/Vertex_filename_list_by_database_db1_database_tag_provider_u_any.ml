open Make_test_v;;

testing "Vertex_filename_list_by_database_db1_database_tag_provider_v
   Vertex_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Vertex_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

*)
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_cod = "Vertex_filename_list_by_database_db1_database_tag_provider_u_any.ml";;

(* Db_1 *)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let fin_ver_l = Vertex_filename_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
fin_ver_l 
(* : Filename_p.filename list *)
= 
[ Filename_p.filename "./vertex_a.db1"]
);;

