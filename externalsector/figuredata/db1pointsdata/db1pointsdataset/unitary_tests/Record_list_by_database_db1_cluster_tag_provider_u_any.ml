open Make_test_v;;


(* toplevel 

*)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

(* From ../common *)
let ndi_ldb_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide tag_dom;;

test_number 1 (
ndi_ldb_l 
(* : String.t list *)
=
  ["/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1";
   "/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db2"]
);;

let sym_ldb = Database_db1_database_symbol_v.make "database_db1_database_constructor" "db1";;
let soi_ldb = [1; 3];; (* from ../ *)
let tag_ldb = Database_db1_database_tag_v.make sym_ldb soi_ldb;; 

test_number 2 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let tag_ec1_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
tag_ec1_l
(* : Database_db1_component_symbol_t.database_db1_component_symbol Tag_t.tag list *)
  =
  [(Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
     (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
       "T"),
    [1; 1; 3]);
   (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
     (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
       "u"),
    [2; 1; 3]);
   (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
     (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
       "v"),
    [3; 1; 3]);
   (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
     (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
       "bc"),
    [4; 1; 3]);
   (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
     (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
       "a"),
    [5; 1; 3])]
);;

(* 1 Component T *)

let nam_tri = "t";;
let tag_et1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_tri) tag_ec1_l;;

test_number 4 ( 
tag_et1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "T"),
   [1; 1; 3])
);;


(* Cluster label *)

let kin_clu = "label";;

test_number 5 (
tag_clu
  =
      "label"),
   [1; 1; 1; 3])
);;


test_number 6 (
rec_l
(* : string list *)
=
  ["label T"]
);;

(* Cluster vertex *)

let kin_clu = "vertex";;

test_number 7 (
tag_clu
=
      "vertex"),
   [2; 1; 1; 3])
);;


test_number 8 (
rec_l
(* : string list *)
=
  ["vertex A       1. 2. -2."; 
   "vertex B       0. 0. -2.";
   "vertex C       2. 0. -2."]
);;


