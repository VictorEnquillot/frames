open Make_test_v;;

testing "Vertex_record_by_database_db1_component_vertex_tag_provider_v
   Vertex_record_by_database_db1_component_vertex_tag_provider_u_any.ml";;

(* toplevel 
   #use "Vertex_record_by_database_db1_component_vertex_tag_provider_u_any.ml";;

*)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_cod = "Vertex_record_by_database_db1_component_vertex_tag_provider_u_any.ml";;

let dta_dab_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let nam_dab = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dab) dta_dab_l;;

test_number 1 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
 (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),
   [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Triangle T *)

let nam_tri = "t";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 2 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "T"),
   [1; 1])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 3 (
rec_tri_l
(* : string list *)
=
  ["triangle T";
   "vertex A       1. 2. -2.";
   "vertex B       0. 0. -2.";
   "vertex C       2. 0. -2."]
);;


(* 1 Vertex A *)

let idx_ver = 1;;
let dta_ver = List.nth dta_ver_l (idx_ver-1);;

test_number 4 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"),
   [1; 1; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 5 (
rec_ver
(* : string list *)
=
"vertex A       1. 2. -2."
);;

(* 2 Vertex B *)

let idx_ver = 2;;
let dta_ver = List.nth dta_ver_l (idx_ver-1);;

test_number 6 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"),
   [2; 1; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 7 (
rec_ver
(* : string list *)
=
"vertex B       0. 0. -2."
);;

(* 3 Vertex C *)

let idx_ver = 3;;
let dta_ver = List.nth dta_ver_l (idx_ver-1);;

test_number 8 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
(Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"),
   [3; 1; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 9 (
rec_ver
(* : string list *)
=
"vertex C       2. 0. -2."
);;

(* 2 Triangle U *)

let nam_tri = "u";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 10 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "u"),
   [2; 1])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 11 (
rec_tri_l
(* : string list *)
=
  ["triangle U";
   "vertex A       0. 0. -3.";
   "vertex B       0. 1. -3.";
   "vertex C       1. 0. -3."]
);;


(* 1 Vertex A *)

let nam_ver = "a";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 12 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"),
   [1; 2; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 13 (
rec_ver
(* : string list *)
=
"vertex A       0. 0. -3."
);;

(* 2 Vertex B *)

let nam_ver = "b";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 14 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"),
   [2; 2; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 15 (
rec_ver
(* : string list *)
=
"vertex B       0. 1. -3."
);;

(* 3 Vertex C *)

let nam_ver = "c";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 16 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"),
   [3; 2; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 17 (
rec_ver
(* : string list *)
=
"vertex C       1. 0. -3."
);;

(* 2 Triangle V *)

let nam_tri = "v";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 18 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "v"),
   [3; 1])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 19 (
rec_tri_l
(* : string list *)
=
  ["triangle V";
   "vertex A       1. 0.5 -2.";
   "vertex B       0. 0. -2.";
   "vertex C       2. 0. -2."]
);;


(* 1 Vertex A *)

let nam_ver = "a";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 20 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"),
   [1; 3; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 21 (
rec_ver
(* : string list *)
=
"vertex A       1. 0.5 -2."
);;

(* 2 Vertex B *)

let nam_ver = "b";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 22 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"),
   [2; 3; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 23 (
rec_ver
(* : string list *)
=
"vertex B       0. 0. -2."
);;

(* 3 Vertex C *)

let nam_ver = "c";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 24 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"),
   [3; 3; 1])
);;

let rec_ver = Vertex_record_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 25 (
rec_ver
(* : string list *)
=
"vertex C       2. 0. -2."
);;

(* 2 Database Db_2 *)

let nam_dab = "db_2";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dab) dta_dab_l;;

test_number 26 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_database "db_2"),
   [2])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

(* 1 Triangle ire *)

let nam_tri = "ire";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 27 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "ire"),
   [1; 2])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 28 (
rec_tri_l
(* : string list *)
=
  ["name     IRE"; 
   "units    angstroms"; 
   "summit   3. 3. -3.     ";
   "basis    0. 0. -3.   0. 6. -3."]
);;


test_number 29 ( 
dta_ver_l
(* : Database_entity_symbol_t.database_entity_symbol Tag_t.tag list *)
=
[]
);;

(* 2 Triangle ISO *)

let idx_tri = 2;;
let dta_tri = List.nth dta_tri_l (idx_tri-1);;

test_number 30 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_entity_db_2_symbol
    (Database_entity_db_2_symbol_t.Database_entity_db_2_triangle "iso"),
   [2; 2])
);;

let rec_tri_l = Record_list_by_database_db1_component_triangle_isoacuteag_provider_v.provide dta_tri;;

test_number 31 (
rec_tri_l
(* : string list *)
=
  ["name     ISO"; 
   "units    Angstroms"; 
   "summit   1. 3. 1. ";
   "basis    1. 1. 1.    1. 4. 1."]
);;


test_number 32 ( 
dta_ver_l
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
[]
);;

let ent_l = Register_v.entry_list String_by_database_db1_tag_register_v.register ;;
let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length (Tag_v.sole_index_off_tag t)) = 3 ) ent_l;;

test_number 33 (
ver_l
(* : (Db_tag_t.db_tag * string) list *)
=
 [((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "C"),
     [3; 3; 1]),
    "vertex C       2. 0. -2.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "C"),
     [3; 1; 1]),
    "vertex C       2. 0. -2.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "B"),
     [2; 3; 1]),
    "vertex B       0. 0. -2.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "B"),
     [2; 1; 1]),
    "vertex B       0. 0. -2.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "B"),
     [2; 2; 1]),
    "vertex B       0. 1. -3.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "A"),
     [1; 1; 1]),
    "vertex A       1. 2. -2.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "C"),
     [3; 2; 1]),
    "vertex C       1. 0. -3.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "A"),
     [1; 2; 1]),
    "vertex A       0. 0. -3.");
   ((Database_entity_symbol_t.Database_db1_symbol
      (Database_db1_symbol_t.Db1_vertex "A"),
     [1; 3; 1]),
    "vertex A       1. 0.5 -2.")]
);;

let ent_l = Register_v.entry_list Database_entity_symbol_by_sole_index_register_v.register ;;
let ver_l = Doublet_list_v.filter_if_left (fun t -> (List.length t = 3) ) ent_l;;

test_number 34 (
ver_l
(* : (Sole_index_t.sole_index, Database_entity_symbol_t.database_entity_symbol)
   Doublet_list_t.doublet_list *)
  =
[([1; 1; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"));
 ([3; 1; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"));
 ([1; 2; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"));
 ([2; 3; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"));
 ([2; 2; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"));
 ([2; 1; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "B"));
 ([3; 3; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"));
 ([3; 2; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "C"));
 ([1; 3; 1],
  Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"))]
);;
