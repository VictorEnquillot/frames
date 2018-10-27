open Make_test_v;;


(* toplevel 

*)



Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nam_cod = "Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_u_any.ml";;
Management_v.entering_of_current_module_name nam_cod;;
Parameters_general_register_v.store_force "trace-provide" "false";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [3])
);;

(* Database_db1_database 1 Db1 *)

let tag_ed1 = Database_db1_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
tag_ed1 
(* : Database_db1_database_tag_t.database_db1_database_tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor
    "db1",
   [1; 3])
);;

(* Database_db1_component list for Db1 *)

let tag_ec1_l = Database_db1_component_tag_list_by_database_db1_database_tag_provider_v.provide tag_ed1;;

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

(* Component 1 Triangle T *)

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


test_number 5 (
tag_clu_l 
=
       "label"),
    [1; 1; 1; 3]);
       "vertex"),
    [2; 1; 1; 3])]
);;

(* 2 Triangle u *)

let nam_et1 = "u";;
let tag_et1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_et1) tag_ec1_l;;

test_number 6 ( 
tag_et1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "u"),
   [2; 1; 3])
);;


test_number 7 (
tag_clu_l 
=
       "label"),
    [1; 2; 1; 3]);
       "vertex"),
    [2; 2; 1; 3])]
);;

(* 3 Triangle v *)

let nam_com = "v";;
let tag_et1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_ec1_l;;

test_number 8 ( 
tag_et1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "v"),
   [3; 1; 3])
);;


test_number 9 (
tag_clu_l 
=
       "label"),
    [1; 3; 1; 3]);
       "vertex"),
    [2; 3; 1; 3])]
);;

(* 4 Segment bc *)

let nam_com = "bc";;
let tag_et1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_ec1_l;;

test_number 10 ( 
tag_et1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
    (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
      "bc"),
   [4; 1; 3])
);;


test_number 11 (
tag_clu_l 
=
       "label"),
    [1; 4; 1; 3]);
       "vertex"),
    [2; 4; 1; 3])]
);;

(* 5 Vertex a *)

let nam_com = "a";;
let tag_et1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_com) tag_ec1_l;;

test_number 12 ( 
tag_et1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
    (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
      "a"),
   [5; 1; 3])
);;


test_number 13 (
tag_clu_l 
=
       "label"),
    [1; 5; 1; 3]);
       "vertex"),
    [2; 5; 1; 3])]
);;


Database_db1_creation_module_name_by_sole_index_register_v.dump ();;

Management_v.exiting_of_current_module_name nam_cod;;
Parameters_general_register_v.store_force "trace-provide" "false";;
