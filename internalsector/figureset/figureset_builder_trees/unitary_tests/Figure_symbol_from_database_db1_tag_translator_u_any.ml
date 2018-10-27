open Make_test_v;;

testing "Figure_symbol_from_database_db1_database_tag_translator_v with
    Figure_symbol_from_database_db1_database_tag_translator_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;










(* Tracing *)


(* toplevel 
   #use "Figure_symbol_from_database_db1_database_tag_translator_u_any.ml";;

*)

let tag_ddo = Database_db1_domain_tag_by_unit_translator_v.provide ();;

test_number 1 (
tag_ddo
(* : Database_db1_domain_symbol_t.database_db1_domain_symbol Tag_t.tag *)
=
(Database_db1_domain_symbol_t.Database_db1_domain_constructor, [3])
);;

let tag_dd1_l = Database_db1_tag_all_list_by_database_db1_domain_tag_provider_v.provide tag_ddo;;

let tag_dd1_db1 = List.find (fun t -> Database_db1_symbol_v.is_database_db1_database_symbol_off_database_db1_symbol (Tag_v.entity_off_tag t)) tag_dd1_l;;

let tag_d1d = Tag_v.map_entity Database_db1_symbol_v.database_db1_database_symbol_off_database_db1_symbol tag_dd1_db1;;

test_number 2 (
tag_d1d
(* : Database_db1_database_symbol_t.database_db1_database_symbol Tag_t.tag *)
=
  (Database_db1_database_symbol_t.Database_db1_database_constructor "db1",
   [1; 3])
);;

let tag_dd1_t = Database_db1_tag_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

let sym_fig_st = Figure_symbol_subtree_by_database_db1_database_tag_provider_v.provide tag_d1d;;

test_number 3 (
 sym_fig_st 
(* : Figure_symbol_t.figure_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_database_symbol
       (Figure_database_symbol_t.Figure_database_constructor "db1")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_triangle_symbol
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
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_triangle_symbol
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
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_triangle_symbol
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
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_cc_pvtzymbol
         (Figure_cc_pvtzymbol_t.Figure_segment_constructor "BC")),
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
 (Figure_symbol_t.Figure_set_body_symbol
   (Figure_set_body_symbol_t.Coordinate_tuple_symbol
     (Coordinate_tuple_symbol_t.Coordinate_tuple_homogeneous_symbol
       (Coordinate_tuple_homogeneous_symbol_t.Coordinate_tuple_cartesian_symbol
         (Coordinate_tuple_cartesian_symbol_t.Coordinate_tuple_cartesian_constructor
           "T_A")))),
 [Tree_t.Inner
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_y "cartesian_y")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Coordinate_symbol
       (Coordinate_symbol_t.Coordinate_homogeneous_symbol
         (Coordinate_homogeneous_symbol_t.Coordinate_cartesian_symbol
           (Coordinate_cartesian_symbol_t.Cartesian_z "cartesian_z")))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Nanometer)))])])
);;

*)
