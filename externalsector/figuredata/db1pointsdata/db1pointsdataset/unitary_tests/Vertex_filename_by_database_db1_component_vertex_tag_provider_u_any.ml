open Make_test_v;;

testing "Vertex_filename_by_database_db1_component_vertex_tag_provider_v
   Vertex_filename_by_database_db1_component_vertex_tag_provider_u_any.ml";;

(* toplevel 
   #use "Vertex_filename_by_database_db1_component_vertex_tag_provider_u_any.ml";;

*)

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Component_filename_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_content_list_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_database_tag_by_domain_tag_register_v.register;;
Register_v.delete  Database_db1_symbol_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_all_list_by_database_db1_domain_tag_register_v.register;;
Register_v.delete  Database_db1_tag_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_n_value_float_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_database_db1_tag_list_by_father_database_db1_tag_register_v.register;;
Register_v.delete  String_by_database_db1_component_tag_register_v.register;;
Register_v.delete  String_by_database_db1_database_tag_register_v.register;;
Register_v.delete  String_list_by_database_db1_tag_register_v.register;;

(* Tracing *)



let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let nam_ver = "a";;
let tag_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) tag_ver_l;;

test_number 2 (
tag_ver
(* : Database_db1_symbol_t.database_db1_database_symbol * Sole_index_t.sole_index *)
=
  (Database_db1_symbol_t.Database_db1_component_symbol
    (Database_db1_component_symbol_t.Db1_vertex
      "a"),
   [5])
);;

let fna_ver = Vertex_filename_by_database_db1_component_vertex_tag_provider_v.provide tag_ver;;

test_number 3 (
fna_ver 
(* : Filename_p.filename list *)
=
  Filename_p.filename "./vertex_a.db1"
);;
