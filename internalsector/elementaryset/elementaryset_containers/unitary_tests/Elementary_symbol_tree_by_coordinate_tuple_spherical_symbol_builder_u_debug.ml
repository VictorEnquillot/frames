open Make_test_v;;

testing "Elementary_symbol_tree_by_coordinate_tuple_spherical_symbol_builder_v with
   Elementary_symbol_tree_by_coordinate_tuple_spherical_symbol_builder_u_debug.ml";;

(* toplevel 
   #use "Elementary_symbol_tree_by_coordinate_tuple_spherical_symbol_builder_u_debug.ml";;

*)


(* Elementary_coordinate_tuple_spherical Symbol *)

let sym_cts = Elementary_coordinate_tuple_spherical_symbol_v.make "coordinate_tuple_spherical_constructor" "spherical_trio";;

let sym_ele_cts_t = Elementary_symbol_tree_by_coordinate_tuple_spherical_symbol_builder_v.build sym_cts;;

test_number 1 (
sym_ele_cts_t
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree *)
= 
Tree_t.Inner
  (Elementary_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
	(Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
           (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
              "spherical_trio"))),
   [Tree_t.Inner
      (Elementary_symbol_t.Elementary_coordinate_symbol
	 (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
               (Elementary_coordinate_spherical_symbol_t.Spherical_rho "spherical_rho"))),
       [Tree_t.Leaf
	  (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none)]);
    Tree_t.Inner
      (Elementary_symbol_t.Elementary_coordinate_symbol
	 (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
               (Elementary_coordinate_spherical_symbol_t.Spherical_phi "spherical_phi"))),
       [Tree_t.Leaf
	  (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none)]);
    Tree_t.Inner
      (Elementary_symbol_t.Elementary_coordinate_symbol
	 (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
               (Elementary_coordinate_spherical_symbol_t.Spherical_theta "spherical_theta"))),
       [Tree_t.Leaf
	  (Elementary_symbol_t.Units_symbol Units_symbol_t.Units_none)])])
);;


let sym_ctu = Elementary_coordinate_tuple_symbol_v.elementary_coordinate_tuple_symbol_of_elementary_coordinate_tuple_spherical_symbol sym_cts;;

test_number 2 (
sym_ele_cts_t = Elementary_symbol_tree_by_coordinate_tuple_symbol_builder_v.build sym_ctu
);;
