open Make_test_v;;

testing "Coordinate_symbol_subtree_by_databox_name_n_database_name_provider_v with
    Coordinate_symbol_subtree_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_symbol_subtree_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Coordinate_symbol_subtree_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let sym_db1_st = 
  Coordinate_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v.provide nam_dbo;;

let tag_db1_rtn_l = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 1 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol list ) =
  [Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "Point_a"));
   Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
            (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
              "A_A")))))]
);;

test_number 2 (
sym_db1_st = provide (nam_dbo, nam_dba)
);;

