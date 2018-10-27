open Make_test_v;;

testing "Basic_as_string_list_by_database_db1_element_tag_provider_v with
   Basic_as_string_list_by_database_db1_element_tag_provider_u_any.ml";;

(* toplevel 
   #use "Basic_as_string_list_by_database_db1_element_tag_provider_u_any.ml";; 

*)


Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

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

(* Cluster 1 label *)

let nam_clu = "label";;

test_number 5 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "label"),
   [1; 1; 1; 3])
);;


test_number 6 ( 
tag_ele_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.ta
g list *)
=
  [(Database_db1_element_symbol_t.Database_db1_element_label_symbol
     (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
       "T"),
    [1; 1; 1; 1; 3])]
);;

(* Element T *)

let nam_ele = "t";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_ele_l;;

test_number 7 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_label_symbol
    (Database_db1_element_label_symbol_t.Database_db1_element_label_constructor
      "T"),
   [1; 1; 1; 1; 3])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 8 ( 
str_val_l 
(* : string list *)
= 
["T"]
);;

(* Cluster 2 vertex *)

let nam_clu = "vertex";;

test_number 9 ( 
tag_clu
  Sole_index_t.sole_index *)
=
      "vertex"),
   [2; 1; 1; 3])
);;

let tag_eel_l = Doublet_list_v.sort_by_right Sole_index_v.compare tag_eel_l;;

test_number 10 ( 
tag_eel_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.tag list *)
= 
  [(Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "T_A"),
    [1; 2; 1; 1; 3]);
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "T_B"),
    [2; 2; 1; 1; 3]);
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
     (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
       "T_C"),
    [3; 2; 1; 1; 3])]
);;

(* Element T_A *)

let nam_ele = "t_a";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_eel_l;;

test_number 11 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "T_A"),
   [1; 2; 1; 1; 3])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 12 ( 
str_val_l 
(* : string list *)
= 
["1."; "2."; "-2."]
);;

(* Element T_B *)

let nam_ele = "t_b";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_eel_l;;

test_number 13 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
   (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "T_B"),
   [2; 2; 1; 1; 3])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 14 ( 
str_val_l 
(* : string list *)
= 
["0."; "0."; "-2."]
);;

(* Element T_C *)

let nam_ele = "t_c";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_eel_l;;

test_number 15 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
    (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
      "T_C"),
   [3; 2; 1; 1; 3])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 16 ( 
str_val_l 
(* : string list *)
= 
["2."; "0."; "-2."]
);;

