open Make_test_v;;

testing "Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_v
   Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

(* toplevel 
   #use "Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

*)

let nam_cod = "Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_u_any.ml";;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let idx_dab = 1;;
let tag_ldb = List.nth dta_dab_l (idx_dab-1);;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
 (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),   [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
dta_tri_l 
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "T"),
    [1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "u"),
    [2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_triangle "v"),
    [3; 1])]
);;

let wha_tri_l = List.map Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri_l;;

test_number 3 (
wha_tri_l
(* : float list *)
=
  ["triangle_isoceles_acute"; 
   "triangle_isoceles_right";
   "triangle_isoceles_obtuse"]
);;

let nam_tri = "t";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;
let wha_tri = Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 4 (
wha_tri
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag * string *)
=
   "triangle_isoceles_acute"
);;

let nam_tri = "u";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;
let wha_tri = Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 5 (
wha_tri
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag * string *)
=
   "triangle_isoceles_right"
);;

let nam_tri = "v";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;
let wha_tri = Triangle_what_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 6 (
wha_tri
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag * string *)
=
   "triangle_isoceles_obtuse"
);;

