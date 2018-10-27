open Make_test_v;;

testing "Database_db1_component_tag_list_by_database_db1_database_tag_provider_v with
   Database_db1_component_tag_list_by_database_db1_database_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_component_tag_list_by_database_db1_database_tag_provider_u_any.ml";; 

*)



Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

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
let tag_ldb = Tag_v.make sym_ldb [1; 3];; (* from ../ *)

test_number 2 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let tag_com_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 3 (
tag_com_l
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

