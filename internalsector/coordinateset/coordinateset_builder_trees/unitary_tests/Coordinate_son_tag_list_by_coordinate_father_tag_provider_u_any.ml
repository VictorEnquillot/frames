open Make_test_v;;

testing "Coordinate_son_tag_list_by_coordinate_father_tag_provider_v with
    Coordinate_son_tag_list_by_coordinate_father_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_son_tag_list_by_coordinate_father_tag_provider_u_any.ml";; 

*)

open Coordinate_son_tag_list_by_coordinate_father_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Coordinate_symbol_v.string_off s = "A_A") 
	&& 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_symbol s)
    )
    tag_coo_l;;

test_number 1 (
(tag_coo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
            (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
              "A_A"))))),
   [1; 10; 1; 5; 5])
);;

let soi_coo = Tag_v.sole_index_off_tag tag_coo;;

let tag_dbo = 
    Coordinate_any_category_by_sole_index_extractor_v.coordinate_context_databox_tag_off_sole_index
      soi_coo;;

test_number 2 (
(tag_dbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "Point_a",
   [10; 1; 5; 5])
);;

let tag_coo_t = 
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v.provide  
      tag_dbo;;

let boo = Tree_v.is_leaf_of_node_off_tree tag_coo tag_coo_t;;

test_number 3 (
boo = false
);;

let tag_coo_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_coo) 
	  tag_coo_t;;

let tag_coo_tsn_l = Tree_v.topson_node_list_off_tree tag_coo_st;;

test_number 4 (
(tag_coo_tsn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =  
[(Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
           (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
             "A_A"))))),
  [1; 1; 10; 1; 5; 5]);
 (Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
           (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
             "A_A"))))),
  [2; 1; 10; 1; 5; 5]);
 (Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
           (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
             "A_A"))))),
  [3; 1; 10; 1; 5; 5])]
);;

test_number 5 (
tag_coo_tsn_l = provide tag_coo
);;
