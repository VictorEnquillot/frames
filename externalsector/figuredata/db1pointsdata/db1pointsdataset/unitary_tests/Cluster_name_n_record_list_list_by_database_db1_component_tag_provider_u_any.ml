open Make_test_v;;

testing "Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v with
   Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_u_any.ml";;

(* toplevel 
   #use "Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_u_any.ml";;

*)



Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;


let nam_cod = "Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_u_any.ml";;


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

(* 1 Triangle T *)

let nam_ec1 = "t";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 4 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
(Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
   (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "T"),
 [1; 1; 3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v.provide tag_ec1;;

test_number 5 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
  [("label", ["label T"]);
   ("vertex",
    ["vertex A       1. 2. -2."; 
     "vertex B       0. 0. -2.";
     "vertex C       2. 0. -2."])]
);;

(* 2 Triangle u *)

let nam_ec1 = "u";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 6 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
(Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
   (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "u"),
 [2; 1; 3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v.provide tag_ec1;;

test_number 7 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
[("label", ["label U"]);
 ("vertex",
  ["vertex A       0. 0. -3."; 
   "vertex B       0. 1. -3.";
   "vertex C       1. 0. -3."])]
);;

(* 3 Triangle v *)

let nam_ec1 = "v";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 8 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
(Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
   (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "v"),
 [3; 1; 3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v.provide tag_ec1;;

test_number 9 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
  [("label", ["label V"]);
   ("vertex",
    ["vertex A       1. 0.5 -2."; 
     "vertex B       0. 0. -2.";
     "vertex C       2. 0. -2."])]
);;

(* 4 Segment bc *)

let nam_ec1 = "bc";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 10 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
    (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
      "bc"),
   [4; 1; 3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v.provide tag_ec1;;

test_number 11 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
=
 [("label", ["label BC"]);
   ("vertex", ["vertex B       4. 1. -1."; "vertex C       1. 4. -1."])]
);;

(* 5 Vertex a *)

let nam_ec1 = "a";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 12 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
    (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
      "a"),
   [5; 1; 3])
);;

let clu_n_nam_l = Cluster_name_n_record_list_list_by_database_db1_component_tag_provider_v.provide tag_ec1;;

test_number 13 (
clu_n_nam_l
(* : (string, string list) Doublet_t.doublet list *)
= 
[("label", ["label A"]);
 ("vertex", ["vertex A       2. 0. -1."])]
);;

