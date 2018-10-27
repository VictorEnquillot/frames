open Make_test_v;;

testing "Db1_domain_tag_by_domain_tag_provider_v with
   Database_db1_database_tag_by_domain_tag_provider_u_any.ml"
;;

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Database_db1_database_tag_by_domain_tag_provider_u_any.ml";; 

*)

let tag_ddo = Database_db1_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_ddo
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_ddd = Database_db1_database_tag_by_unit_provider_v.provide ();;

test_number 2 (
 tag_ddd
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let tag_dd1_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let tag_dd1_t = Database_db1_tag_tree_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let tag_roo = Tree_v.root_off_tree tag_dd1_t;;

test_number 3 (
tag_roo 
(* : Database_db1_symbol_t.database_db1_symbol Tag_t.tag *)
  =
(Database_db1_symbol_t.Database_db1_context_symbol
   (Database_db1_context_symbol_t.Database_db1_domain_symbol
      Database_db1_domain_symbol_t.Database_db1_domain_constructor),
 [3])
);;
