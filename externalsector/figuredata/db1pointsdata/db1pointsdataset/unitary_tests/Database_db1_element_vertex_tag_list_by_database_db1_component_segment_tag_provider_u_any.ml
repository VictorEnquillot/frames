open Make_test_v;;

testing "Database_db1_element_vertex_tag_list_by_database_db1_component_segment_tag_provider_v with
   Database_db1_element_vertex_tag_list_by_database_db1_component_segment_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_element_vertex_tag_list_by_database_db1_component_segment_tag_provider_u_any.ml";; 

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

(* Component 4 Segment BC *)

let nam_com = "bc";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_ec1_l;;

test_number 4 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
    (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
      "bc"),
   [4; 1; 3])
);;


test_number 5 (
tag_clu_l 
=
       "label"),
    [1; 4; 1; 3]);
       "vertex"),
    [2; 4; 1; 3])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 6 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 4; 1; 3])
);;

(* Element vertex *)


test_number 7 ( 
tag_ele_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.tag list *)
= 
  [(Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "B"),
    [1; 2; 4; 1; 3]);
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "C"),
    [2; 2; 4; 1; 3])]
);;

let tag_ev1 = Tag_v.map_entity Database_db1_component_symbol_v.database_db1_component_segment_symbol_off_database_db1_component_symbol tag_ec1;;
let tag_ele_l = Database_db1_element_vertex_tag_list_by_database_db1_component_segment_tag_provider_v.provide tag_ev1;;

test_number 8 ( 
tag_ele_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.tag list *)
= 
  [(Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
     "B",
    [1; 2; 4; 1; 3]);
   (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
     "C",
    [2; 2; 4; 1; 3])]
);;

