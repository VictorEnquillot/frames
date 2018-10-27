open Make_test_v;;

testing "Elementary_tag_tree_by_coordinate_tuple_spherical_tag_provider_v with
   Elementary_tag_tree_by_coordinate_tuple_spherical_tag_provider_u.ml";;

(* toplevel 
   #use "Elementary_tag_tree_by_coordinate_tuple_spherical_tag_provider_u.ml";;

*)


let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

(* Elementary_body_coordinate_tuple_spherical Tag *)

let sym_cts = Elementary_body_coordinate_tuple_spherical_symbol_v.make "coordinate_tuple_spherical_constructor" "spherical_trio";;
let soi_poi = [1; 1; 1; 3];; (* Ex.: in Figure Domain *)

let soi_cts = Sole_index_v.make 1 soi_poi;;
let tag_cts = Tag_v.make sym_cts soi_cts;;
let sym_cts = Elementary_symbol_v.elementary_symbol_of_elementary_body_coordinate_tuple_spherical_symbol sym_cts;;

Elementary_symbol_by_sole_index_register_v.store soi_cts sym_cts;
Elementary_symbol_by_sole_index_register_v.dump ();;

let tag_cts = Elementary_any_category_by_sole_index_extractor_v.elementary_body_coordinate_tuple_spherical_tag_off_sole_index soi_cts;;

test_number 2 (
tag_cts
(* :  Elementary_body_coordinate_tuple_spherical_symbol_t.coordinate_tuple_spherical_symbol
  Tag_t.tag *)
=
  (Elementary_body_coordinate_tuple_spherical_symbol_t.Elementary_body_coordinate_tuple_spherical_constructor
    "spherical_trio",
   [1; 1; 1; 1; 3])
);;

let tag_ele_cts_t = Elementary_tag_tree_by_coordinate_tuple_spherical_tag_provider_v.provide tag_cts;;

test_number 3 (
tag_ele_cts_t
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_spherical_symbol
          (Elementary_body_coordinate_tuple_spherical_symbol_t.Elementary_body_coordinate_tuple_spherical_constructor
            "spherical_trio"))),
     [1; 1; 1; 1; 3]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_coordinate_symbol
        (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
          (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_spherical_symbol
            (Elementary_border_coordinate_spherical_symbol_t.Spherical_rho "spherical_rho"))),
       [1; 1; 1; 1; 1; 3]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none,
        [1; 1; 1; 1; 1; 1; 3])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_coordinate_symbol
        (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
          (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_spherical_symbol
            (Elementary_border_coordinate_spherical_symbol_t.Spherical_phi "spherical_phi"))),
       [2; 1; 1; 1; 1; 3]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none,
        [1; 2; 1; 1; 1; 1; 3])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_coordinate_symbol
        (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
          (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_spherical_symbol
            (Elementary_border_coordinate_spherical_symbol_t.Spherical_theta "spherical_theta"))),
       [3; 1; 1; 1; 1; 3]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none,
        [1; 3; 1; 1; 1; 1; 3])])])
);;

let fen_l = Tree_v.leaf_node_list_off_tree tag_ele_cts_t;; 
