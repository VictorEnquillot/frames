open Make_test_v;;

testing "Figure_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
   Figure_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

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

(* Debugging *)


(* toplevel 
   #use "Figure_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

*)

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

open Figure_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

(* Argument tag_dbo *)

let sym_db1_dsf_stl =
    Db1pointsdata_as_body_sequence_float_symbol_subtree_list_by_basicname_databox_n_basicname_database_provider_v.provide
      nam_dbo;;

test_number 1 (
(sym_db1_dsf_stl :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
      (Db1pointsdata_body_symbol_t.Db1pointsdata_body_sequence_symbol
        (Db1pointsdata_body_sequence_symbol_t.Db1pointsdata_body_sequence_float_symbol
          (Db1pointsdata_body_sequence_float_symbol_t.Db1pointsdata_body_sequence_float_constructor
            "A"))),
    [Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
        (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
          (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
            (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
              (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                "1.")))));
     Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
        (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
          (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
            (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
              (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                "0.785398163397448279")))));
     Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
        (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
          (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
            (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
              (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                "0.785398163397448279")))))])]
);;

 let sym_fig_ect_stl = List.map 
      Figure_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl;;

test_number 2 (
(sym_fig_ect_stl : Figure_symbol_t.figure_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_coordinate_tuple_symbol
        (Figure_set_body_coordinate_tuple_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_symbol
          (Figure_set_body_coordinate_tuple_heterogeneous_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol
            (Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_constructor
              "A")))),

    [Tree_t.Inner
      (Figure_symbol_t.Figure_border_symbol
        (Figure_border_symbol_t.Figure_border_coordinate_symbol
          (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
            (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
              (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_rho_symbol
                (Figure_border_coordinate_heterogeneous_spherical_rho_symbol_t.Figure_border_coordinate_heterogeneous_spherical_rho_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Figure_symbol_t.Figure_set_fence_symbol
          (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
            (Figure_set_fence_units_symbol_t.Figure_set_fence_units_actual_length_symbol
              Figure_set_fence_units_actual_length_symbol_t.Meter)))]);

     Tree_t.Inner
      (Figure_symbol_t.Figure_border_symbol
        (Figure_border_symbol_t.Figure_border_coordinate_symbol
          (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
            (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
              (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_phi_symbol
                (Figure_border_coordinate_heterogeneous_spherical_phi_symbol_t.Figure_border_coordinate_heterogeneous_spherical_phi_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Figure_symbol_t.Figure_set_fence_symbol
          (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
            (Figure_set_fence_units_symbol_t.Figure_set_fence_units_angle_symbol
              Figure_set_fence_units_angle_symbol_t.Radian)))]);

     Tree_t.Inner
      (Figure_symbol_t.Figure_border_symbol
        (Figure_border_symbol_t.Figure_border_coordinate_symbol
          (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
            (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
              (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_theta_symbol
                (Figure_border_coordinate_heterogeneous_spherical_theta_symbol_t.Figure_border_coordinate_heterogeneous_spherical_theta_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Figure_symbol_t.Figure_set_fence_symbol
          (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
            (Figure_set_fence_units_symbol_t.Figure_set_fence_units_angle_symbol
              Figure_set_fence_units_angle_symbol_t.Radian)))])])]
);;

let sym_fig_fbo = 
    figure_as_context_databox_symbol_of_db1pointsdata_context_databox_tag 
      tag_dbo;;

test_number 3 (
(sym_fig_fbo : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
     (Figure_context_databox_symbol_t.Figure_context_databox_figuredata_symbol
       (Figure_context_databox_figuredata_symbol_t.Figure_context_databox_figuredata_constructor
         "point_a")))
);;

let sym_db1_dbo_st = Tree_v.make_of_node sym_fig_fbo sym_fig_ect_stl;;

test_number 4 (
( sym_db1_dbo_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_figuredata_symbol
         (Figure_context_databox_figuredata_symbol_t.Figure_context_databox_figuredata_constructor
           "point_a"))),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_coordinate_tuple_symbol
         (Figure_set_body_coordinate_tuple_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_symbol
           (Figure_set_body_coordinate_tuple_heterogeneous_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol
             (Figure_set_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Figure_set_body_coordinate_tuple_heterogeneous_spherical_constructor
               "A")))),
     [Tree_t.Inner
       (Figure_symbol_t.Figure_border_symbol
         (Figure_border_symbol_t.Figure_border_coordinate_symbol
           (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
             (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
               (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_rho_symbol
                 (Figure_border_coordinate_heterogeneous_spherical_rho_symbol_t.Figure_border_coordinate_heterogeneous_spherical_rho_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
             (Figure_set_fence_units_symbol_t.Figure_set_fence_units_actual_length_symbol
               Figure_set_fence_units_actual_length_symbol_t.Meter)))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_border_symbol
         (Figure_border_symbol_t.Figure_border_coordinate_symbol
           (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
             (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
               (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_phi_symbol
                 (Figure_border_coordinate_heterogeneous_spherical_phi_symbol_t.Figure_border_coordinate_heterogeneous_spherical_phi_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
             (Figure_set_fence_units_symbol_t.Figure_set_fence_units_angle_symbol
               Figure_set_fence_units_angle_symbol_t.Radian)))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_border_symbol
         (Figure_border_symbol_t.Figure_border_coordinate_symbol
           (Figure_border_coordinate_symbol_t.Figure_border_coordinate_heterogeneous_symbol
             (Figure_border_coordinate_heterogeneous_symbol_t.Figure_border_coordinate_heterogeneous_spherical_symbol
               (Figure_border_coordinate_heterogeneous_spherical_symbol_t.Figure_border_coordinate_heterogeneous_spherical_theta_symbol
                 (Figure_border_coordinate_heterogeneous_spherical_theta_symbol_t.Figure_border_coordinate_heterogeneous_spherical_theta_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_units_symbol
             (Figure_set_fence_units_symbol_t.Figure_set_fence_units_angle_symbol
               Figure_set_fence_units_angle_symbol_t.Radian)))])])])
);;

test_number 5 (
sym_db1_dbo_st = provide tag_dbo
);;
