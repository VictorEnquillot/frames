open Make_test_v;;

testing "Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_v
   Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

(* toplevel 
   #use "Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

*)

let nam_cod = "Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_u_any.ml";;

let nam_dir_dba = Tools_dcfig_v.nameofdatabasesdirectory ();;

test_number 1 (
 nam_dir_dba
(* : string *)
=
  "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/"
);;

let dta_dba_l = Local_database_tag_by_unit_provider_v.provide ();;

(* 1 Database Db_1 *)

let nam_dba = "db1";;
let tag_ldb = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_dba) dta_dba_l;;

test_number 2 ( 
tag_ldb
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_database_symbol_t.Database_db1_database_constructor "db1"),
   [1])
);;

let dta_tri_l = Triangle_isoacuteag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
dta_tri_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
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

(* 1 Triangle T *)

let nam_tri = "t";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 4 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "T"),
   [1; 1])
);;


test_number 5 (
dta_ver_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "A"),
    [1; 1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "B"),
    [2; 1; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "C"),
    [3; 1; 1])]
);;

(* 2 Triangle U *)

let nam_tri = "u";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 6 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "u"),
   [2; 1])
);;


test_number 7 (
dta_ver_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "A"),
    [1; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "B"),
    [2; 2; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "C"),
    [3; 2; 1])]
);;

(* 1 Vertex A *)

let nam_ver = "a";;
let dta_ver = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_ver) dta_ver_l;;

test_number 8 ( 
dta_ver
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_vertex "A"),
   [1; 2; 1])
);;

let dta_n_val_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 9 (
dta_n_val_flo_l  
(* : (Db_tag_t.db_tag, float) Doublet_list_t.doublet_list *)
  =
[((Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
   [1; 1; 2; 1]),
  0.);
 ((Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
   [2; 1; 2; 1]),
  0.);
 ((Database_entity_symbol_t.Database_db1_symbol
     Database_db1_symbol_t.Database_db1_float,
   [3; 1; 2; 1]),
  -3.)]
);;

(* 2 Triangle V *)

let nam_tri = "v";;
let dta_tri = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_symbol_v.string_off s) = nam_tri) dta_tri_l;;

test_number 10 ( 
dta_tri
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag *)
=
  (Database_entity_symbol_t.Database_db1_symbol
    (Database_db1_symbol_t.Db1_triangle "v"),
   [3; 1])
);;


test_number 11 (
dta_ver_l 
(* : Database_entity_symbol_t.db1_symbol Tag_t.tag list *)
=
  [(Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "A"),
    [1; 3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "B"),
    [2; 3; 1]);
   (Database_entity_symbol_t.Database_db1_symbol
     (Database_db1_symbol_t.Db1_vertex "C"),
    [3; 3; 1])]
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
   [1; 3; 1])
);;

let dta_n_val_flo_l = Float_tag_n_basic_as_string_list_by_database_db1_component_vertex_tag_provider_v.provide dta_ver;;

test_number 13 (
dta_n_val_flo_l  
(* : (Db_tag_t.db_tag, float) Doublet_list_t.doublet_list *)
  =
  [((Database_entity_symbol_t.Database_db1_symbol
      Database_db1_symbol_t.Database_db1_float,
     [1; 1; 3; 1]),
    1.);
   ((Database_entity_symbol_t.Database_db1_symbol
      Database_db1_symbol_t.Database_db1_float,
     [2; 1; 3; 1]),
    0.5);
   ((Database_entity_symbol_t.Database_db1_symbol
      Database_db1_symbol_t.Database_db1_float,
     [3; 1; 3; 1]),
    -2.)]
);;

let dta = Database_entity_symbol_by_sole_index_provider_v.provide  [3; 1; 3; 1];;
test_number 14 (
dta 
(* : Database_entity_symbol_t.database_entity_symbol *)
  =
Database_entity_symbol_t.Database_db1_symbol
  Database_db1_symbol_t.Database_db1_float
);;
