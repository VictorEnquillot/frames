open Make_test_v;;

testing "Skeleton_tag_tree_by_skeleton_database_tag_provider_v with
    Skeleton_tag_tree_by_skeleton_database_tag_provider_u_any.ml";;

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
   #use "Skeleton_tag_tree_by_skeleton_database_tag_provider_u_any.ml";;

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

let tag_ddd = Database_db1_database_tag_by_unit_provider_v.provide ();;

test_number 2 (
tag_ddd 
(* : Database_db1_database_symbol_t.database_db1_database_symbol Tag_t.tag *)
  =
(Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
 [1; 3])
);;

(*
let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_ddd;;


open Skeleton_tag_tree_by_skeleton_database_tag_provider_v;;
  
let tag_fig_dom = skeleton_tag_as_domain ();;
let soi_fig_dom = Tag_v.sole_index_off_tag tag_fig_dom;;
let tag_ddd = database_db1_database_of_skeleton_database_tag tag_fdb;;
let soi_ddd = Tag_v.sole_index_off_tag tag_ddd;;
let sym_fig_t = Skeleton_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_ddd;;
let sym_fig_t = skeleton_symbol_tree_of_skeleton_database_tag tag_fdb;;
*)


let tag_fig_t = Skeleton_tag_tree_by_skeleton_database_tag_provider_v.provide tag_fdb;;

test_number 3 (
 tag_fig_t 
(* : Skeleton_tag_t.skeleton_tag Tree_t.tree *)
=
 Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_context_symbol
      (Skeleton_context_symbol_t.Skeleton_domain_symbol
        Skeleton_domain_symbol_t.Skeleton_domain_constructor),
     [6]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_context_symbol
        (Skeleton_context_symbol_t.Skeleton_database_symbol
          (Skeleton_database_symbol_t.Skeleton_database_constructor "db1")),
       [1; 6]),
     [Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_field_body_symbol
          (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
            (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
              (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_acute
                "T"))),
         [1; 1; 6]),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "T_A")),
          [1; 1; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "T_B")),
          [2; 1; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "T_C")),
          [3; 1; 1; 6])]);
      Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_field_body_symbol
          (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
            (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
              (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_obtuse
                "V"))),
         [2; 1; 6]),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "V_A")),
          [1; 2; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "V_B")),
          [2; 2; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "V_C")),
          [3; 2; 1; 6])]);
      Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_field_body_symbol
          (Skeleton_field_body_symbol_t.Skeleton_triangle_symbol
            (Skeleton_triangle_symbol_t.Skeleton_triangle_isosceles_symbol
              (Skeleton_triangle_isosceles_symbol_t.Skeleton_triangle_isosceles_right
                "U"))),
         [3; 1; 6]),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "U_A")),
          [1; 3; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "U_B")),
          [2; 3; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "U_C")),
          [3; 3; 1; 6])]);
      Tree_t.Inner
       ((Skeleton_symbol_t.Skeleton_field_body_symbol
          (Skeleton_field_body_symbol_t.Skeleton_cc_pvtzymbol
            (Skeleton_cc_pvtzymbol_t.Skeleton_segment_constructor "BC")),
         [4; 1; 6]),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_B")),
          [1; 4; 1; 6]);
        Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_builder_symbol
           (Skeleton_builder_symbol_t.Skeleton_point_symbol
             (Skeleton_point_symbol_t.Skeleton_point_constructor "BC_C")),
          [2; 4; 1; 6])]);
      Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_builder_symbol
         (Skeleton_builder_symbol_t.Skeleton_point_symbol
           (Skeleton_point_symbol_t.Skeleton_point_constructor "A_A")),
        [5; 1; 6])])])
);;

let tag_fig_roo = Tree_v.root_off_tree tag_fig_t;;

(* Root Database Db1 *)

test_number 4 (
 tag_fig_roo
(* : Skeleton_tag_t.skeleton_tag *)
=
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_domain_symbol
      Skeleton_domain_symbol_t.Skeleton_domain_constructor),
   [6])
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
