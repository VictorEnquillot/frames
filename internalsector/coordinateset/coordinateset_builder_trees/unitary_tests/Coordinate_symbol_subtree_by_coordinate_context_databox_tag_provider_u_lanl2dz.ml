open Make_test_v;;

testing "Coordinate_symbol_subtree_by_coordinate_context_databox_tag_provider_v with
    Coordinate_symbol_subtree_by_coordinate_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Coordinate_symbol_subtree_by_coordinate_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_nbo = "lanl2dz";;
let nam_dba = "db1points";;

let tag_nbo = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

(* Argument tag_nbo *)

open Coordinate_symbol_subtree_by_coordinate_context_databox_tag_provider_v;;

let sym_db1_st = Coordinate_parser_v.coordinate_symbol_tree_root_databox_of_databox_name_n_database_name (nam_dba, nam_nbo);;
let sym_rtn_l = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 2 (
( sym_rtn_l : Coordinate_symbol_t.coordinate_symbol list ) =
  [Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "LANL2DZ"));
   Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_version_symbol
      (Coordinate_context_version_symbol_t.Coordinate_context_version_constructor
        "v1.2.2"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aobasis_block "LANL2DZ"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_ecpbasis_block "LANL2DZ"))]
);;

let sym_db1_st = provide tag_nbo;;
let sym_rtn_l = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 3 (
( sym_rtn_l : Coordinate_symbol_t.coordinate_symbol list ) =
  [Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "lanl2dz"));
   Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_version_symbol
      (Coordinate_context_version_symbol_t.Coordinate_context_version_constructor
        "v1.2.2"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aobasis_block "lanl2dz"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_ecpbasis_block "lanl2dz"))]
);;

(* 
let t = Tree_v.map lowercase_string_off_of_coordinate_symbol sym_db1_st;;
 
let sym_nod_l = Tree_v.node_list_off_tree sym_db1_st;;
*)
