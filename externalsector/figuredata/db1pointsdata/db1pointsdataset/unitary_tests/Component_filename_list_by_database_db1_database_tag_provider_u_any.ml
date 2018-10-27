open Make_test_v;;

testing "Component_filename_list_by_database_db1_database_tag_provider_v";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Component_filename_list_by_database_db1_database_tag_provider_u_any.ml";; 

*)

let tag_ddo = Database_db1_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_ddo : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag ) =
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_ddd = Database_db1_database_tag_by_unit_provider_v.provide ();;
test_number 2 (
(tag_ddd : Database_db1_database_symbol_t.database_db1_database_symbol Tag_t.tag ) =
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let com_fin_l = Component_filename_list_by_database_db1_database_tag_provider_v.provide tag_ddd;;
let com_fin_l = List.sort compare com_fin_l;;

test_number 3 (
(com_fin_l :  Filename_p.filename list ) =
  [Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/segment_bc.db1";
   Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/segment_s.db1";
   Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/triangle_isoacute.db1";
   Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/triangle_isoobtuse.db1";
   Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/triangle_isoright.db1";
   Filename_p.filename "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1/vertex_a.db1"]
);;

