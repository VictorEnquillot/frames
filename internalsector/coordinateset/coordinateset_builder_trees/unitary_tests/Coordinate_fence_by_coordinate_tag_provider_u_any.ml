open Make_test_v;;

testing "Coordinate_fence_by_coordinate_tag_provider_v with
    Coordinate_fence_by_coordinate_tag_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Coordinate_fence_by_coordinate_tag_provider_u_any.ml";; 

*)

open Coordinate_fence_by_coordinate_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;
 
let tag_dbo =  Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_dbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "Point_a",
   [16; 5; 6; 5])
);;

let tag_coo_l = Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide tag_dbo;;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Coordinate_symbol_v.string_off s = "he p 2 2") 
	&& 
      (Coordinate_symbol_v.is_coordinate_set_fence_coordinate_aopef_exponent_constructor s)
    )
    tag_coo_l;;

test_number 2 (
(tag_coo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_fence_symbol_t.Coordinate_fence_coordinate_symbol
       (Coordinate_fence_coordinate_symbol_t.Coordinate_fence_coordinate_aopef_symbol
          (Coordinate_fence_coordinate_aopef_symbol_t.Coordinate_fence_coordinate_aopef_exponent_symbol
             (Coordinate_fence_coordinate_aopef_exponent_symbol_t.Coordinate_fence_coordinate_aopef_exponent_constructor
		"he p 2 2")))),
  [1; 5; 16; 5; 6; 5])
);;

let tag_coo_st = 
    Coordinate_tag_subtree_by_coordinate_tag_provider_v.provide tag_coo;;

let tag_coo_fl = Tree_v.leaf_node_list_off_tree tag_coo_st;;
