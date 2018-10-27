open Make_test_v;;

testing "Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v with
   Database_db1_tag_all_list_by_database_db1_domain_tag_provider_u_any.ml";;

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
   #use "Database_db1_tag_all_list_by_database_db1_domain_tag_provider_u_any.ml";;

*)

let tag_ddo = Database_db1_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_ddo
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_d1d = Database_db1_database_tag_by_unit_provider_v.provide ();;
test_number 2 (
 tag_d1d
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let tag_dd1_t = Database_db1_tag_tree_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let tag_dd1_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let soi_dd1_l = Doublet_list_v.right_list_off_doublet_list tag_dd1_l;;
let sub_l = List_v.sublist_of_int_of_int_of_list 0 30 soi_dd1_l;;

test_number 3 (
( sub_l : Sole_index_t.sole_index list ) =
  [[3]; [1; 3]; [1; 1; 3]; [1; 1; 1; 3]; [2; 1; 1; 3]; [3; 1; 1; 3];
   [4; 1; 1; 3]; [1; 4; 1; 1; 3]; [2; 4; 1; 1; 3]; [3; 4; 1; 1; 3];
   [5; 1; 1; 3]; [1; 5; 1; 1; 3]; [2; 5; 1; 1; 3]; [3; 5; 1; 1; 3];
   [2; 1; 3]; [1; 2; 1; 3]; [2; 2; 1; 3]; [3; 2; 1; 3]; [1; 3; 2; 1; 3];
   [2; 3; 2; 1; 3]; [3; 3; 2; 1; 3]; [4; 2; 1; 3]; [1; 4; 2; 1; 3];
   [2; 4; 2; 1; 3]; [3; 4; 2; 1; 3]; [3; 1; 3]; [1; 3; 1; 3]; [2; 3; 1; 3];
   [3; 3; 1; 3]; [1; 3; 3; 1; 3]; [2; 3; 3; 1; 3]]
);;

let sub_l = List_v.sublist_of_int_of_int_of_list 31 60 soi_dd1_l;;

test_number 4 (
( sub_l : Sole_index_t.sole_index list ) =
  [[3; 3; 3; 1; 3]; [4; 3; 1; 3]; [1; 4; 3; 1; 3]; [2; 4; 3; 1; 3];
   [3; 4; 3; 1; 3]; [5; 3; 1; 3]; [1; 5; 3; 1; 3]; [2; 5; 3; 1; 3];
   [3; 5; 3; 1; 3]; [4; 1; 3]; [1; 4; 1; 3]; [2; 4; 1; 3]; [3; 4; 1; 3];
   [1; 3; 4; 1; 3]; [2; 3; 4; 1; 3]; [3; 3; 4; 1; 3]; [4; 4; 1; 3];
   [1; 4; 4; 1; 3]; [2; 4; 4; 1; 3]; [3; 4; 4; 1; 3]; [5; 4; 1; 3];
   [1; 5; 4; 1; 3]; [2; 5; 4; 1; 3]; [3; 5; 4; 1; 3]; [5; 1; 3];
   [1; 5; 1; 3]; [2; 5; 1; 3]; [3; 5; 1; 3]; [1; 3; 5; 1; 3];
   [2; 3; 5; 1; 3]]
);;

let count = List.length tag_dd1_l;;

test_number 5 (
count = 78
);;

(* Component Tag *)

let tag_eco_l = Doublet_list_v.filter_if_left Database_db1_symbol_v.is_database_db1_component_symbol_off_database_db1_symbol tag_dd1_l;;

let count = List.length tag_eco_l;;

test_number 6 (
count = 6
);;

(* Element Tag *)

let tag_eel_l = Doublet_list_v.filter_if_left Database_db1_symbol_v.is_database_db1_element_symbol_off_database_db1_symbol tag_dd1_l;;

let count = List.length tag_eel_l;;

test_number 7 (
count = 28
);;

(* Float Tag *)

let tag_efl_l = Doublet_list_v.filter_if_left Database_db1_symbol_v.is_database_db1_float_symbol_off_database_db1_symbol tag_dd1_l;;

let count = List.length tag_efl_l;;

test_number 8 (
count = 42
);;

let count = 2 + (List.length tag_eco_l) + (List.length tag_eel_l) + (List.length tag_efl_l) ;;

test_number 9 (
count = List.length tag_dd1_l
);;

