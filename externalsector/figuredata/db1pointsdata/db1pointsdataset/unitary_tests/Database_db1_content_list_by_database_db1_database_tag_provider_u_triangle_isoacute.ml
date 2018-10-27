open Make_test_v;;

testing "Database_db1_content_list_by_database_db1_database_tag_provider_v with
   Database_db1_content_list_by_database_db1_database_tag_provider_u_triangle_isoacute.ml";;

(* toplevel 
   #use "Database_db1_content_list_by_database_db1_database_tag_provider_u_triangle_isoacute.ml";;

*)

let nam_dom = "figure";;
let nof = "../triangle_isoacute.db1";;

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

let sym_ldb = Database_db1_database_symbol_v.make "database_db1_database_constructor" "db1";;
let tag_ldb = Tag_v.make sym_ldb [1; 3];; (* defined in DFIG *)

test_number 3 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let con_ent_l = Db1_parser_v.database_db1_content_list_of_nameoffile nof;;

test_number 4 (
 con_ent_l 
(* :
   (Database_db1_symbol_t.database_db1_symbol,
   Database_db1_symbol_t.database_db1_symbol list)
   Doublet_t.doublet list *)
  =
[
 (Database_db1_symbol_t.Database_db1_component_symbol
     (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
	(Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "T")),
  
  [Database_db1_symbol_t.Database_db1_element_symbol
     (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A"));
   Database_db1_symbol_t.Database_db1_element_symbol
     (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_B"));
   Database_db1_symbol_t.Database_db1_element_symbol
     (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
        (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_C"))]
 );
 
 (Database_db1_symbol_t.Database_db1_element_symbol
    (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
       (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "T_A")),
  [Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 1.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 2.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor (-2.))]);
 (Database_db1_symbol_t.Database_db1_element_symbol
    (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
       (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "T_B")),
  [Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 0.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 0.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor (-2.))]);
 (Database_db1_symbol_t.Database_db1_element_symbol
    (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
       (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
          "T_C")),
  [Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 2.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor 0.);
   Database_db1_symbol_t.Database_db1_float_symbol
     (Database_db1_float_symbol_t.Database_db1_float_constructor (-2.))]
 )
]
);;
