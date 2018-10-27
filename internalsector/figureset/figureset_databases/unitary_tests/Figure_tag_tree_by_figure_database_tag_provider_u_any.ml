open Make_test_v;;

testing "Figure_tag_tree_by_figure_database_tag_provider_v with
    Figure_tag_tree_by_figure_database_tag_provider_u_any.ml";;

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
   #use "Figure_tag_tree_by_figure_database_tag_provider_u_any.ml";;

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


open Figure_tag_tree_by_figure_database_tag_provider_v;;
  
let tag_fig_dom = figure_tag_as_domain ();;
let soi_fig_dom = Tag_v.sole_index_off_tag tag_fig_dom;;
let tag_ddd = database_db1_database_of_figure_database_tag tag_fdb;;
let soi_ddd = Tag_v.sole_index_off_tag tag_ddd;;
let sym_fig_t = Figure_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_ddd;;
let sym_fig_t = figure_symbol_tree_of_figure_database_tag tag_fdb;;
*)


let tag_fig_t = Figure_tag_tree_by_figure_database_tag_provider_v.provide tag_fdb;;

test_number 3 (
 tag_fig_t 
(* : Figure_tag_t.figure_tag Tree_t.tree *)
=
 Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        Figure_domain_symbol_t.Figure_domain_constructor),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_database_symbol
          (Figure_database_symbol_t.Figure_database_constructor "db1")),
       [1; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                "T"))),
         [1; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_A")),
          [1; 1; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_B")),
          [2; 1; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_C")),
          [3; 1; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
                "V"))),
         [2; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_A")),
          [1; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_B")),
          [2; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_C")),
          [3; 2; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
                "U"))),
         [3; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_A")),
          [1; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_B")),
          [2; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_C")),
          [3; 3; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_segment_symbol
            (Figure_segment_symbol_t.Figure_segment_constructor "BC")),
         [4; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "BC_B")),
          [1; 4; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_builder_symbol
           (Figure_builder_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "BC_C")),
          [2; 4; 1; 6])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_builder_symbol
         (Figure_builder_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "A_A")),
        [5; 1; 6])])])
);;

let tag_fig_roo = Tree_v.root_off_tree tag_fig_t;;

(* Root Database Db1 *)

test_number 4 (
 tag_fig_roo
(* : Figure_tag_t.figure_tag *)
=
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_domain_symbol
      Figure_domain_symbol_t.Figure_domain_constructor),
   [6])
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
