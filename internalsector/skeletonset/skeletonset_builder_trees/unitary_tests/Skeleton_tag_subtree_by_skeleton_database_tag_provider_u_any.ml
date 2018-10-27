open Make_test_v;;

testing "Skeleton_tag_subtree_by_skeleton_database_tag_provider_v with
    Skeleton_tag_subtree_by_skeleton_database_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;










(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_subtree_by_skeleton_database_tag_provider_u_any.ml";;

*)

let nam_dba = "db1";;
let tag_fdb = Skeleton_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
tag_fdb 
(* : Skeleton_database_symbol_t.skeleton_database_symbol Tag_t.tag *)
  =
(Skeleton_database_symbol_t.Skeleton_database_constructor "db1",
 [1; 6])
);;

let tag_fig_st = Skeleton_tag_subtree_by_skeleton_database_tag_provider_v.provide tag_fdb;;

let tag_fig_roo = Tree_v.root_off_tree tag_fig_st;;

(* Root Database Db1 *)

test_number 2 (
tag_fig_roo 
(* : Skeleton_symbol_t.skeleton_symbol Tag_t.tag *)
  =  
Skeleton_symbol_t.Skeleton_context_symbol
  (Skeleton_context_symbol_t.Skeleton_database_symbol
     (Skeleton_database_symbol_t.Skeleton_database_constructor "db1"))
);;

test_number 3 (
 tag_fig_st 
(* : Skeleton_symbol_t.skeleton_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_database_symbol
       (Skeleton_database_symbol_t.Skeleton_database_constructor "db1")),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
         (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
           (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_acute
             "T"))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "T_B")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "T_C")))]);
    Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
         (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
           (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_obtuse
             "V"))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "V_A")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "V_B")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "V_C")))]);
    Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
         (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
           (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_right
             "U"))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "U_A")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "U_B")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "U_C")))]);
    Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_cc_pvtzymbol
         (Skeleton_cc_pvtzymbol_t.Skeleton_segment_constructor "BC")),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_B")));
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_C")))]);
    Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_builder_symbol
       (Skeleton_builder_symbol_t.Skeleton_point_symbol
         (Skeleton_point_symbol_t.Skeleton_point_constructor "A_A")))])
);;

let sym_fig_roo = Tree_v.root_off_tree sym_fig_st;;

(* Root Database Db1 *)

test_number 4 (
sym_fig_roo 
(* : Skeleton_symbol_t.skeleton_symbol Tag_t.tag *)
  =  
Skeleton_symbol_t.Skeleton_context_symbol
  (Skeleton_context_symbol_t.Skeleton_database_symbol
     (Skeleton_database_symbol_t.Skeleton_database_constructor "db1"))
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
