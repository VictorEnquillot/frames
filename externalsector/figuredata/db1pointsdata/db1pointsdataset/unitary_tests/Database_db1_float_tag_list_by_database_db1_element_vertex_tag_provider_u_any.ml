open Make_test_v;;

testing "Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_v with 
   Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_u_any.ml";;

(* toplevel 
   #use "Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_u_any.ml";; 

*)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

let tag_ed1 = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 1 (
 tag_ed1 
(* : Database_db1_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

let tag_ec1_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ed1;;

test_number 2 (
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

(* 1 Triangle T *)

let nam_ec1 = "t";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 3 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
 (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "T"),
   [1; 1; 3])
);;


test_number 4 (
tag_clu_l 
=
       "label"),
    [1; 1; 1; 3]);
       "vertex"),
    [2; 1; 1; 3])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 5 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 1; 1; 3])
);;


test_number 6 ( 
tag_ee1_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.tag list *)
= 
  [(Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "A"),
    [1; 2; 1; 1; 3]);
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "B"),
    [2; 2; 1; 1; 3]);
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "C"),
    [3; 2; 1; 1; 3])]
);;

(* Element A *)

let nam_ee1 = "a";;
let tag_ee1 = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ee1) tag_ee1_l;;

test_number 7 ( 
tag_ee1
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "A"),
   [1; 2; 1; 1; 3])
);;

let tag_ev1 = Tag_v.map_entity Database_db1_element_symbol_v.database_db1_element_vertex_symbol_off_database_db1_element_symbol tag_ee1;;
let tag_flo_l = Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_v.provide tag_ev1;;

test_number 8 ( 
tag_flo_l 
(* : (Database_db1_float_tag_t.database_db1_float_tag, string)
   Doublet_list_t.doublet_list *)
  =
  [(Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [1; 1; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [2; 1; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [3; 1; 2; 1; 1; 3])]
);;

(* Element B *)

let nam_ee1 = "b";;
let tag_ee1 = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ee1) tag_ee1_l;;

test_number 9 ( 
tag_ee1
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "B"),
   [2; 2; 1; 1; 3])
);;

let tag_ev1 = Tag_v.map_entity Database_db1_element_symbol_v.database_db1_element_vertex_symbol_off_database_db1_element_symbol tag_ee1;;
let tag_flo_l = Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_v.provide tag_ev1;;

test_number 10 ( 
tag_flo_l 
(* : string list *)
= 
  [(Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [1; 2; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [2; 2; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor
    ,
    [3; 2; 2; 1; 1; 3])]
);;

(* Element_vertex 3 C *)

let nam_ee1 = "c";;
let tag_ee1 = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ee1) tag_ee1_l;;

test_number 11 ( 
tag_ee1
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "C"),
   [3; 2; 1; 1; 3])
);;

let tag_ev1 = Tag_v.map_entity Database_db1_element_symbol_v.database_db1_element_vertex_symbol_off_database_db1_element_symbol tag_ee1;;
let tag_flo_l = Database_db1_float_tag_list_by_database_db1_element_vertex_tag_provider_v.provide tag_ev1;;

test_number 12 ( 
tag_flo_l 
(* : string list *)
= 
  [(Database_db1_float_symbol_t.Database_db1_float_constructor,
    [1; 3; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor,
    [2; 3; 2; 1; 1; 3]);
   (Database_db1_float_symbol_t.Database_db1_float_constructor,
    [3; 3; 2; 1; 1; 3])]
);;

