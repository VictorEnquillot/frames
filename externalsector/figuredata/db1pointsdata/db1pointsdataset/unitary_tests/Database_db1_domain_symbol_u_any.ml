open Make_test_v;;

testing "Database_db1_domain_symbol_v
   Database_db1_domain_symbol_u_any.ml";;

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
   #use "Database_db1_domain_symbol_u_any.ml";;

*)

let nam_dom = "database";;
let sof_dom = "db1";;
let sym_dom = Domain_symbol_v.make nam_dom sof_dom;;

test_number 1 (
sym_dom 
(* : Domain_symbol_t.domain_symbol *)
=
Domain_symbol_t.Database "db1"
);;

test_number 2 (sym_dom = Database_db1_domain_symbol_v.domain_symbol);;

test_number 3 (sym_dom = Database_db1_symbol_v.domain_symbol);;

let sym_ddo = Database_db1_domain_symbol_v.database_db1_domain_symbol_of_domain_symbol sym_dom;;

test_number 4 (
sym_ddo 
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol *)
=
  Database_db1_domain_symbol_t.Database_db1_domain_constructor
);;

let sym_d1d_dom = Database_db1_symbol_v.database_db1_symbol_of_database_db1_domain_symbol sym_ddo;;

test_number 5 (
sym_d1d_dom 
(* : Database_db1_symbol_t.database_db1_symbol *)
=
Database_db1_symbol_t.Database_db1_context_symbol
  (Database_db1_context_symbol_t.Database_db1_domain_symbol
     Database_db1_domain_symbol_t.Database_db1_domain_constructor)
);;

let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom [];;

test_number 6 (
tag_dom
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
 (Domain_symbol_t.Database "db1", [3])
);;

let tag_ddo = Database_db1_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 7 (
tag_ddo 
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
 (Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_dom = Domain_tag_from_database_db1_domain_tag_translator_v.translate tag_ddo;;

test_number 8 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
 (Domain_symbol_t.Database "db1", [3])
);;
