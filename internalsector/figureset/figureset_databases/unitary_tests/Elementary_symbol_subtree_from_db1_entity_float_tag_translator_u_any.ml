open Make_test_v;;

testing "Elementary_symbol_subtree_from_db1_entity_float_tag_translator_v with
   Elementary_symbol_subtree_from_db1_entity_float_tag_translator_u_any.ml";;

(* toplevel 
   #use "Elementary_symbol_subtree_from_db1_entity_float_tag_translator_u_any.ml";;

*)

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;










(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;
let tag_ldo = Local_entity_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_ldo 
(* : Local_entity_domain_symbol_t.local_entity_domain_symbol Tag_t.tag *)
=
(Local_entity_domain_symbol_t.Local_entity_domain_constructor "figure", [3])
);;

let tag_ldb_l = Local_entity_database_tag_list_by_local_entity_domain_tag_provider_v.provide tag_ldo;;
test_number 2 (
 tag_ldb_l  
(* : Local_entity_database_tag_t.local_entity_database_tag Tag_t.tag list *)
  =
  [(Local_entity_database_symbol_t.Local_entity_database_constructor "db1", [1; 3]);
   (Local_entity_database_symbol_t.Local_entity_database_constructor "db2", [2; 3])]
);;

(* Db1 *)

let nam_ldb = "db1";;
let sym_ldb = Local_entity_database_symbol_v.local_entity_database_constructor nam_ldb;;
let tag_ldb = Doublet_list_v.find_if_left Local_entity_database_symbol_v.is_local_entity_database_constructor tag_ldb_l;;

test_number 3 (
tag_ldb 
(* : Local_entity_database_symbol_t.local_database_symbol * Sole_index_t.sole_index *)
=
  (Local_entity_database_symbol_t.Local_entity_database_constructor "db1", [1; 3])
);;

let tag_ded = Db1_entity_local_database_tag_from_local_entity_database_tag_translator_v.translate tag_ldb;;

test_number 4 (
tag_ded 
(* : Db1_entity_local_database_tag_t.db1_entity_local_database_tag *)
=
(Db1_entity_local_database_symbol_t.Db1_entity_local_database_constructor "db1", [1; 3])
);;

(* Db1 B-Tree *)

let tag_den_t = Db1_entity_tag_tree_by_db1_entity_local_database_tag_provider_v.provide tag_ded;;

let tag_den_l = Db1_entity_tag_all_list_by_db1_entity_local_database_tag_provider_v.provide tag_ded;;

(* Float "0.100000" *)

let tag_den_flo = List.find (fun t -> Db1_entity_tag_v.string_off t = "0.100000") tag_den_l;;

let tag_def = Tag_v.map_entity Db1_entity_symbol_v.db1_entity_float_symbol_off_db1_entity_symbol tag_den_flo;;

test_number 5 (
tag_def
(* : Db1_entity_float_symbol_t.db1_entity_float_symbol Tag_t.tag *)
=
  (Db1_entity_float_symbol_t.Db1_entity_float_constructor "0.100000",
   [1; 3; 1; 1; 3])
);;

let sym_uni_ang = Elementary_symbol_from_db1_entity_float_tag_translator_v.symbol_units_angle_of_db1_entity_float_tag tag_def;;

test_number 6 (
sym_uni_ang 
(* : Units_symbol_t.units_symbol *)
= 
Units_symbol_t.Units_none
);;

let sym_uni_len = Elementary_symbol_from_db1_entity_float_tag_translator_v.symbol_units_length_of_db1_entity_float_tag tag_def;;

test_number 7 (
sym_uni_len 
(* : Units_symbol_t.units_symbol *)
= 
Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer
);;

let str_kin_coo = Elementary_symbol_from_db1_entity_float_tag_translator_v.coordinates_kind_string_of_db1_entity_float_tag tag_def;;

test_number 8 (
str_kin_coo 
(* : string *)
= 
"cartesian"
);;

let sym_coo = 
  Elementary_symbol_from_db1_entity_float_tag_translator_v.coordinate_symbol_of_db1_entity_float_tag 
    tag_def;;

test_number 9 (
sym_coo 
(* : Coordinate_symbol_t.coordinate_symbol *)
=
  Coordinate_symbol_t.Coordinate_homogeneous_symbol
   (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
     (Coordinate_cartesian_symbol_t.X_3d "x_3d"))
);;


let sym_ele_t = Elementary_symbol_subtree_from_db1_entity_float_tag_translator_v.trnaslate tag_def;;
