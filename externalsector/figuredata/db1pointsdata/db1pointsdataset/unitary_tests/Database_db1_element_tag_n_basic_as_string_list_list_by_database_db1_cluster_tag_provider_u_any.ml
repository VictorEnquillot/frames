open Make_test_v;;


(* toplevel 

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

(* Cluster label *)

let nam_clu = "label";;

test_number 5 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "label"),
   [1; 1; 1; 3])
);;


test_number 6 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
   [((Database_db1_element_symbol_t.Database_db1_element_label_symbol
      (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
        "T"),
     [1; 1; 1; 1; 3]),
    ["T"])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 7 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 1; 1; 3])
);;


test_number 8 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "A"),
     [1; 2; 1; 1; 3]),
    ["1."; "2."; "-2."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "B"),
     [2; 2; 1; 1; 3]),
    ["0."; "0."; "-2."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "C"),
     [3; 2; 1; 1; 3]),
    ["2."; "0."; "-2."])]
);;

(* 2 Triangle u *)

let nam_ec1 = "u";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 9 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "u"),
   [2; 1; 3])
);;


test_number 10 (
tag_clu_l 
=
       "label"),
    [1; 2; 1; 3]);
       "vertex"),
    [2; 2; 1; 3])]
);;

(* Cluster label *)

let nam_clu = "label";;

test_number 11 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "label"),
   [1; 2; 1; 3])
);;


test_number 12 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_label_symbol
      (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
        "U"),
     [1; 1; 2; 1; 3]),
    ["U"])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 13 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 2; 1; 3])
);;


test_number 14 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "A"),
     [1; 2; 2; 1; 3]),
    ["0."; "0."; "-3."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "B"),
     [2; 2; 2; 1; 3]),
    ["0."; "1."; "-3."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "C"),
     [3; 2; 2; 1; 3]),
    ["1."; "0."; "-3."])]
);;
  
(* 3 Triangle v *)

let nam_ec1 = "v";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 15 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
    (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
      "v"),
   [3; 1; 3])
);;


test_number 16 (
tag_clu_l 
=
       "label"),
    [1; 3; 1; 3]);
       "vertex"),
    [2; 3; 1; 3])]
);;

(* Cluster label *)

let nam_clu = "label";;

test_number 17 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "label"),
   [1; 3; 1; 3])
);;


test_number 18 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
   [((Database_db1_element_symbol_t.Database_db1_element_label_symbol
      (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
        "V"),
     [1; 1; 3; 1; 3]),
    ["V"])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 19 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 3; 1; 3])
);;


test_number 20 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "A"),
     [1; 2; 3; 1; 3]),
    ["1."; "0.5"; "-2."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "B"),
     [2; 2; 3; 1; 3]),
    ["0."; "0."; "-2."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "C"),
     [3; 2; 3; 1; 3]),
    ["2."; "0."; "-2."])]
);;

(* 4 Segment bc *)

let nam_ec1 = "bc";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 21 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_component_symbol_t.Database_db1_component_segment_symbol
    (Database_db1_component_segment_symbol_t.Database_db1_component_segment_constructor
      "bc"),
   [4; 1; 3])
);;


test_number 22 (
tag_clu_l 
=
       "label"),
    [1; 4; 1; 3]);
       "vertex"),
    [2; 4; 1; 3])]
);;

(* Cluster label *)

let nam_clu = "label";;

test_number 23 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "label"),
   [1; 4; 1; 3])
);;


test_number 24 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_label_symbol
      (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
        "BC"),
     [1; 1; 4; 1; 3]),
    ["BC"])]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 25 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 4; 1; 3])
);;


test_number 26 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "B"),
     [1; 2; 4; 1; 3]),
    ["4."; "1."; "-1."]);
   ((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "C"),
     [2; 2; 4; 1; 3]),
    ["1."; "4."; "-1."])]
);;

(* 5 Vertex a *)

let nam_ec1 = "a";;
let tag_ec1 = Doublet_list_v.find_if_left (fun s -> String.lowercase (Database_db1_component_symbol_v.string_off s) = nam_ec1) tag_ec1_l;;

test_number 27 ( 
tag_ec1
(* : Database_db1_component_symbol_t.database_db1_component_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_component_symbol_t.Database_db1_component_vertex_symbol
    (Database_db1_component_vertex_symbol_t.Database_db1_component_vertex_constructor
      "a"),
   [5; 1; 3])
);;


(* 5 Element vertex *)

test_number 28 (
tag_clu_l 
=
       "label"),
    [1; 5; 1; 3]);
       "vertex"),
    [2; 5; 1; 3])]
);;

let nam_clu = "vertex";;

test_number 29 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 5; 1; 3])
);;


test_number 30 ( 
tag_ele_n_val_l_l 
(* : (Database_db1_element_tag_t.database_db1_element_tag, string list)
  Doublet_list_t.doublet_list *)
=
  [((Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
      (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
        "A"),
     [1; 2; 5; 1; 3]),
    ["2."; "0."; "-1."])]
);;
