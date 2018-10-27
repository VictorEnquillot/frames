open Make_test_v;;

testing "Elementary_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
   Elementary_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;


(* Tracing *)

(* Debugging *)


(* toplevel 
   #use "Elementary_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

*)

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

open Elementary_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

(* Argument tag_dbo *)

let sym_db1_dsf_stl =
    Db1pointsdata_as_body_sequence_float_symbol_subtree_list_by_databox_name_n_database_name_provider_v.provide
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

 let sym_ele_ect_stl = List.map 
      Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl;;

test_number 2 (
(sym_ele_ect_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
        (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
          (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
            (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
              "A")))),

    [Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
            (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
              (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
                (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Meter)))]);

     Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
            (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
              (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
                (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
              Elementary_fence_units_angle_symbol_t.Radian)))]);

     Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
          (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
            (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
              (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol
                (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
              Elementary_fence_units_angle_symbol_t.Radian)))])])]
);;

let sym_ele_ebo = 
    elementary_as_context_databox_symbol_of_db1pointsdata_context_databox_tag 
      tag_dbo;;

test_number 3 (
(sym_ele_ebo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol
       (Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
         "point_a")))
);;

let sym_db1_dbo_st = Tree_v.make_of_node sym_ele_ebo sym_ele_ect_stl;;

test_number 4 (
( sym_db1_dbo_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol
         (Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
           "point_a"))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
         (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
           (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
             (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
               "A")))),
     [Tree_t.Inner
       (Elementary_symbol_t.Elementary_border_symbol
         (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
           (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
             (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
               (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
                 (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Elementary_symbol_t.Elementary_fence_symbol
           (Elementary_fence_symbol_t.Elementary_fence_units_symbol
             (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
               Elementary_fence_units_actual_length_symbol_t.Meter)))]);
      Tree_t.Inner
       (Elementary_symbol_t.Elementary_border_symbol
         (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
           (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
             (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
               (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
                 (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Elementary_symbol_t.Elementary_fence_symbol
           (Elementary_fence_symbol_t.Elementary_fence_units_symbol
             (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
               Elementary_fence_units_angle_symbol_t.Radian)))]);
      Tree_t.Inner
       (Elementary_symbol_t.Elementary_border_symbol
         (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
           (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
             (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
               (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol
                 (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Elementary_symbol_t.Elementary_fence_symbol
           (Elementary_fence_symbol_t.Elementary_fence_units_symbol
             (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
               Elementary_fence_units_angle_symbol_t.Radian)))])])])
);;

test_number 5 (
sym_db1_dbo_st = provide tag_dbo
);;
