open Make_test_v;;

testing "Figure_tag_subtree_by_figure_database_tag_provider_v with
    Figure_tag_subtree_by_figure_database_tag_provider_u_any.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;









(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_tag_subtree_by_figure_database_tag_provider_u_any.ml";;

*)

let nam_dba = "db1";;
let tag_fdb = Figure_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 1 (
tag_fdb 
(* : Figure_database_symbol_t.figure_database_symbol Tag_t.tag *)
  =
(Figure_database_symbol_t.Figure_database_constructor "db1",
 [1; 6])
);;

let tag_fig_st = Figure_tag_subtree_by_figure_database_tag_provider_v.provide tag_fdb;;

let tag_fig_roo = Tree_v.root_off_tree tag_fig_st;;

(* Root Database Db1 *)

test_number 2 (
tag_fig_roo 
(* : Figure_symbol_t.figure_symbol Tag_t.tag *)
  =  
Figure_symbol_t.Figure_context_symbol
  (Figure_context_symbol_t.Figure_database_symbol
     (Figure_database_symbol_t.Figure_database_constructor "db1"))
);;

test_number 3 (
 tag_fig_st 
(* : Figure_symbol_t.figure_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_database_symbol
       (Figure_database_symbol_t.Figure_database_constructor "db1")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_triangle_symbol
         (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
           (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
             "T"))),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "T_A")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "T_B")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "T_C")))]);
    Tree_t.Inner
     (Figure_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_triangle_symbol
         (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
           (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
             "V"))),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "V_A")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "V_B")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "V_C")))]);
    Tree_t.Inner
     (Figure_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_triangle_symbol
         (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
           (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
             "U"))),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "U_A")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "U_B")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "U_C")))]);
    Tree_t.Inner
     (Figure_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "BC")),
     [Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "BC_B")));
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "BC_C")))]);
    Tree_t.Leaf
     (Figure_symbol_t.Figure_builder_symbol
       (Figure_builder_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "A_A")))])
);;

let sym_fig_roo = Tree_v.root_off_tree sym_fig_st;;

(* Root Database Db1 *)

test_number 4 (
sym_fig_roo 
(* : Figure_symbol_t.figure_symbol Tag_t.tag *)
  =  
Figure_symbol_t.Figure_context_symbol
  (Figure_context_symbol_t.Figure_database_symbol
     (Figure_database_symbol_t.Figure_database_constructor "db1"))
);;

(*
(* T_A *)

let sym_fig_sut = List.nth sym_bod_sut_l 0;;

test_number 5 (
sym_fig_sut 
(* : Figure_symbol_t.figure_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Figure_symbol_t.Figure_field_body_symbol
   (Figure_field_body_symbol_t.Coordinate_tuple_symbol
     (Coordinate_tuple_symbol_t.Coordinate_tuple_homogeneous_symbol
       (Coordinate_tuple_homogeneous_symbol_t.Coordinate_tuple_cartesian_symbol
         (Coordinate_tuple_cartesian_symbol_t.Coordinate_tuple_cartesian_constructor
           "T_A")))),
 [Tree_t.Inner
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_y "cartesian_y")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Figure_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_z "cartesian_z")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))])])
);;

*)
