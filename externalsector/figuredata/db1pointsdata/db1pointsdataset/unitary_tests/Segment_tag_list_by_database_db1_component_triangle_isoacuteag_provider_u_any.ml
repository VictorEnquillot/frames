open Make_test_v;;

testing "Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v
   Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

let dta_dba_l = Local_database_tag_by_unit_provider_v.provide ();;

(* Db_1 *)

let nam_dba = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),
   [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;
let nam_tri = "t";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 2 (
dta_tri 
(* : Database_entity_symbol_t.database_entity_symbol * Sole_index_t.sole_index *)
  =
(Database_entity_symbol_t.Database_db1_symbol
   (Database_db1_symbol_t.Db1_triangle "T"),
 [1; 1])
);;

let tag_vec_l = Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 3 (
tag_vec_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_segment "bc"),
    [4; 1])]
);;

(* Db_2 *)

let nam_dba = "db_2";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

test_number 4 ( 
tag_ldb
(* : Database_entity_symbol_t.db_2_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"),
   [1])
);;

let tag_vec_l = Segment_tag_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide tag_ldb;;

test_number 5 (
tag_vec_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
  =
[]
);;
