open Make_test_v;;

testing "Skeleton_symbol_from_database_db1_database_tag_translator_v with
    Skeleton_symbol_from_database_db1_database_tag_translator_u_any.ml";;

(* Deleting Registers *)










(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_from_database_db1_database_tag_translator_u_any.ml";;

*)

(* Database_db1 Domain *)

let tag_ddo = Database_db1_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
tag_ddo
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_d1d_dom = Tag_v.map_entity Database_db1_symbol_v.database_db1_symbol_of_database_db1_domain_symbol tag_ddo;;


(* Database_db1 Database *)

let tag_d1d = Database_db1_database_tag_by_unit_provider_v.provide ();;

test_number 2 (
tag_d1d
(* : Database_db1_database_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let sym_fig_t = Skeleton_symbol_tree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

test_number 3 (
( sym_fig_t : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_domain_symbol
       (Skeleton_domain_symbol_t.Skeleton_domain_constructor "skeleton")),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_context_symbol
       (Skeleton_context_symbol_t.Skeleton_createdby_symbol
         (Skeleton_createdby_symbol_t.Skeleton_database_symbol
           (Skeleton_database_symbol_t.Skeleton_database_constructor "db1"))),
     [Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_body_symbol
           (Skeleton_field_body_symbol_t.Skeleton_cc_pvtzymbol
             (Skeleton_cc_pvtzymbol_t.Skeleton_segment_constructor "BC"))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_B"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_C"))))]);
      Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_body_symbol
           (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
             (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
               (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_acute
                 "T")))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "T_B"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "T_C"))))]);
      Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_body_symbol
           (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
             (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
               (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_obtuse
                 "V")))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "V_A"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "V_B"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "V_C"))))]);
      Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_body_symbol
           (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
             (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
               (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_right
                 "U")))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "U_A"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "U_B"))));
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_field_symbol
           (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
             (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
               (Skeleton_point_symbol_t.Skeleton_point_constructor "U_C"))))]);
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_field_symbol
         (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
           (Skeleton_field_fence_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "A_A"))))])])
);;

let sym_fig_roo = Tree_v.root_off_tree sym_fig_t;;

(* Root Domain *)

test_number 4 (
(sym_fig_roo : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_domain_symbol
     (Skeleton_domain_symbol_t.Skeleton_domain_constructor "skeleton"))
);;

(*
(* T_A *)

let sym_fig_sut = List.nth sym_bod_sut_l 0;;

test_number 5 (
sym_fig_sut 
(* : Skeleton_symbol_t.skeleton_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Skeleton_symbol_t.Skeleton_field_body_symbol
   (Skeleton_field_body_symbol_t.Coordinate_tuple_symbol
     (Coordinate_tuple_symbol_t.Coordinate_tuple_homogeneous_symbol
       (Coordinate_tuple_homogeneous_symbol_t.Coordinate_tuple_cartesian_symbol
         (Coordinate_tuple_cartesian_symbol_t.Coordinate_tuple_cartesian_constructor
           "T_A")))),
 [Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_y "cartesian_y")))),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_field_body_symbol
     (Skeleton_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_z "cartesian_z")))),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))])])
);;

*)
