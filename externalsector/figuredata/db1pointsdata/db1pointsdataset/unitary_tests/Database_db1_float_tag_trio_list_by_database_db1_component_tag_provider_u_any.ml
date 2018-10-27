open Make_test_v;;

testing "Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_v with 
   Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_u_any.ml";; 

*)

let tag_ldb = Local_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
 tag_ldb 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1", [])
);;

let tag_com_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ldb;;

test_number 2 (
tag_com_l
(* : Database_db1_component_symbol_t.database_db1_component_symbol Tag_t.tag list *)
  =
[(Database_db1_component_symbol_t.Database_db1_component_triangle "T", [1]);
 (Database_db1_component_symbol_t.Database_db1_component_triangle "u", [2]);
 (Database_db1_component_symbol_t.Database_db1_component_triangle "v", [3]);
 (Database_db1_component_symbol_t.Database_db1_component_segment "bc", [4]);
 (Database_db1_component_symbol_t.Database_db1_component_vertex "a", [5])]
);;

(* 1 Triangle T *)

let nam_com = "t";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_com_l;;

test_number 3 ( 
tag_com
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle "T", [1])
);;

let tag_flo_tri_l = Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 4 ( 
tag_flo_tri_l
(* : Database_db1_float_symbol_t.database_db1_float_symbol Tag_t.tag Trio_t.trio
  list *)
=
  [((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 1; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 1; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 1; 2; 1]));
   ((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 2; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 2; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 2; 2; 1]));
   ((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 3; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 3; 2; 1]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 3; 2; 1]))]
);;

(*  Segment bc *)

let nam_com = "bc";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_com_l;;

test_number 5 ( 
tag_com
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_segment "bc", [4])
);;

let tag_flo_tri_l = Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 6 ( 
tag_flo_tri_l
(* : Database_db1_float_symbol_t.database_db1_float_symbol Tag_t.tag Trio_t.trio
  list *)
=
  [((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 1; 2; 4]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 1; 2; 4]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 1; 2; 4]));
   ((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 2; 2; 4]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 2; 2; 4]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 2; 2; 4]))]
);;

(*  Vertex bc *)

let nam_com = "a";;
let tag_com = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_com_l;;

test_number 7 ( 
tag_com
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_vertex "a", [5])
);;

let tag_flo_tri_l = Database_db1_float_tag_trio_list_by_database_db1_component_tag_provider_v.provide tag_com;;

test_number 8 ( 
tag_flo_tri_l
(* : Database_db1_float_symbol_t.database_db1_float_symbol Tag_t.tag Trio_t.trio
  list *)
=
   [((Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [1; 1; 1; 5]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [2; 1; 1; 5]),
    (Database_db1_float_symbol_t.Database_db1_float_constructor
      "undefined_units",
     [3; 1; 1; 5]))]
);;

