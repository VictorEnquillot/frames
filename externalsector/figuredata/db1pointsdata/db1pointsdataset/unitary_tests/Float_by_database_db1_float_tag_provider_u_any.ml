open Make_test_v;;

testing "Float_by_database_db1_float_tag_provider_v";;

(* toplevel 
   #use "Float_by_database_db1_float_tag_provider_u_any.ml";; 

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


test_number 4 (
tag_clu_l 
=
);;

(* Cluster triangle *)

let nam_clu = "triangle";;

test_number 5 ( 
tag_clu
  Sole_index_t.sole_index *)
=
);;


test_number 6 ( 
tag_ele_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.ta
g list *)
=
[(Database_db1_element_symbol_t.Database_db1_element_label "T", [1; 1; 1])]
);;

(* Element T *)

let nam_ele = "t";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_ele_l;;

test_number 7 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
(Database_db1_element_symbol_t.Database_db1_element_label "T", [1; 1; 1])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 8 ( 
str_val_l 
(* : string list *)
= 
["T"]
);;

(* Cluster vertex *)

let nam_clu = "vertex";;

test_number 9 ( 
tag_clu
  Sole_index_t.sole_index *)
=
);;


test_number 10 ( 
tag_ele_l 
(* : Database_db1_element_symbol_t.database_db1_element_symbol Tag_t.tag list *)
= 
[(Database_db1_element_symbol_t.Database_db1_element_vertex "A", [1; 2; 1]);
 (Database_db1_element_symbol_t.Database_db1_element_vertex "B", [2; 2; 1]);
 (Database_db1_element_symbol_t.Database_db1_element_vertex "C", [3; 2; 1])]
);;

(* Element A *)

let nam_ele = "a";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_ele_l;;

test_number 11 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex "A", [1; 2; 1])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 12 ( 
str_val_l 
(* : string list *)
= 
["1."; "2."; "-2."]
);;

(* Element B *)

let nam_ele = "b";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_ele_l;;

test_number 13 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex "B", [2; 2; 1])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 14 ( 
str_val_l 
(* : string list *)
= 
["0."; "0."; "-2."]
);;

(* Element C *)

let nam_ele = "c";;
let tag_ele = List.find (fun s -> String.lowercase (Database_db1_element_tag_v.string_off s) = nam_ele) tag_ele_l;;

test_number 15 ( 
tag_ele
(* : Database_db1_element_symbol_t.database_db1_element_symbol *
  Sole_index_t.sole_index *)
=
  (Database_db1_element_symbol_t.Database_db1_element_vertex "C", [3; 2; 1])
);;

let str_val_l = Basic_as_string_list_by_database_db1_element_tag_provider_v.provide tag_ele;;

test_number 16 ( 
str_val_l 
(* : string list *)
= 
["2."; "0."; "-2."]
);;

