open Make_test_v;;

testing "Elementary_symbol_from_database_db1_float_tag_translator_v with
   Elementary_symbol_from_database_db1_float_tag_translator_u_any.ml";;

(* toplevel 
   #use "Elementary_symbol_from_database_db1_float_tag_translator_u_any.ml";;

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
  =
(Domain_symbol_t.Figure, [3])
);;

(* From ../common *)
let ndi_ldb_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide tag_dom;;

test_number 2 (
ndi_ldb_l 
(* : String.t list *)
=
  ["/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1";
   "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db2"]
);;

let sym_ded = Database_db1_database_symbol_v.make "database_db1_database_constructor" "db1";;
let tag_ded = Tag_v.make sym_ded [1; 3];; (* defined in DFIG *)

test_number 3 (
 tag_ded 
(* : Database_db1_database_symbol_t.database_db1_database_symbol
  Tag_t.tag *)
  =
(Database_db1_database_symbol_t.Database_db1_database_constructor
   "db1",
 [1; 3])
);;

let tag_den_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_ded;;

let tag_den_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ded;;

(* Float "0.100000" *)

let tag_den_flo = List.find (fun t -> Database_db1_tag_v.string_off t = "0.100000") tag_den_l;;

let tag_def = Tag_v.map_entity Database_db1_symbol_v.database_db1_float_symbol_off_database_db1_symbol tag_den_flo;;

test_number 4 (
tag_def
(* : Database_db1_float_symbol_t.database_db1_float_symbol Tag_t.tag *)
=
  (Database_db1_float_symbol_t.Database_db1_float_constructor "0.100000",
   [1; 3; 1; 1; 3])
);;

let sym_uni_ang = Elementary_symbol_from_database_db1_float_tag_translator_v.symbol_units_angle_of_database_db1_float_tag tag_def;;

test_number 5 (
sym_uni_ang 
(* : Units_symbol_t.units_symbol *)
= 
Units_symbol_t.Units_none
);;

let soi_def = Tag_v.sole_index_off_tag tag_def;;

let tag_com = 
    Database_db1_any_category_by_sole_index_extractor_v.database_db1_component_tag_off_sole_index 
      soi_def 
;;
let tag_son_l = 
  Database_db1_any_category_by_sole_index_extractor_v.son_database_db1_tag_list_of_string_predicate_of_father_tag 
     "is_database_db1_element_coordinates_units_length_constructor"
    tag_com
;;


let sym_uni_len = Elementary_symbol_from_database_db1_float_tag_translator_v.symbol_units_length_of_database_db1_float_tag tag_def;;

test_number 6 (
sym_uni_len 
(* : Units_symbol_t.units_symbol *)
= 
Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer
);;

let str_kin_coo = Elementary_symbol_from_database_db1_float_tag_translator_v.coordinates_kind_string_of_database_db1_float_tag tag_def;;

test_number 7 (
 str_kin_coo 
(* : string *)
= 
"cartesian"
);;

let sym_uni_coo = Elementary_symbol_from_database_db1_float_tag_translator_v.coordinate_symbol_units_of_database_db1_float_tag tag_def;;

test_number 8 (
sym_uni_coo 
(* : Units_symbol_t.units_symbol *)
  =
Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer
);;
