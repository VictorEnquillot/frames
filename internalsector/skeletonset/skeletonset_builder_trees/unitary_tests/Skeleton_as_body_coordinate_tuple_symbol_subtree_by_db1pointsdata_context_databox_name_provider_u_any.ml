open Make_test_v;;

testing "Skeleton_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
   Skeleton_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

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

(* Debugging *)


(* toplevel 
   #use "Skeleton_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

*)

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

open Skeleton_as_body_coordinate_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

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

 let sym_ske_ect_stl = List.map 
      Skeleton_as_body_coordinate_tuple_symbol_subtree_from_db1pointsdata_as_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl;;

test_number 2 (
(sym_ske_ect_stl : Skeleton_symbol_t.skeleton_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_coordinate_tuple_symbol
        (Skeleton_body_coordinate_tuple_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_symbol
          (Skeleton_body_coordinate_tuple_heterogeneous_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol
            (Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_constructor
              "A")))),

    [Tree_t.Inner
      (Skeleton_symbol_t.Skeleton_border_symbol
        (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
          (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
            (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
              (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_rho_symbol
                (Skeleton_border_coordinate_heterogeneous_spherical_rho_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_rho_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Skeleton_symbol_t.Skeleton_fence_symbol
          (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
            (Skeleton_fence_units_symbol_t.Skeleton_fence_units_actual_length_symbol
              Skeleton_fence_units_actual_length_symbol_t.Meter)))]);

     Tree_t.Inner
      (Skeleton_symbol_t.Skeleton_border_symbol
        (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
          (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
            (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
              (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_phi_symbol
                (Skeleton_border_coordinate_heterogeneous_spherical_phi_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_phi_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Skeleton_symbol_t.Skeleton_fence_symbol
          (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
            (Skeleton_fence_units_symbol_t.Skeleton_fence_units_angle_symbol
              Skeleton_fence_units_angle_symbol_t.Radian)))]);

     Tree_t.Inner
      (Skeleton_symbol_t.Skeleton_border_symbol
        (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
          (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
            (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
              (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_theta_symbol
                (Skeleton_border_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_theta_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Skeleton_symbol_t.Skeleton_fence_symbol
          (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
            (Skeleton_fence_units_symbol_t.Skeleton_fence_units_angle_symbol
              Skeleton_fence_units_angle_symbol_t.Radian)))])])]
);;

let sym_ske_ebo = 
    skeleton_as_context_databox_symbol_of_db1pointsdata_context_databox_tag 
      tag_dbo;;

test_number 3 (
(sym_ske_ebo : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
     (Skeleton_context_databox_symbol_t.Skeleton_context_databox_figuredata_symbol
       (Skeleton_context_databox_figuredata_symbol_t.Skeleton_context_databox_figuredata_constructor
         "point_a")))
);;

let sym_db1_dbo_st = Tree_v.make_of_node sym_ske_ebo sym_ske_ect_stl;;

test_number 4 (
( sym_db1_dbo_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_figuredata_symbol
         (Skeleton_context_databox_figuredata_symbol_t.Skeleton_context_databox_figuredata_constructor
           "point_a"))),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_coordinate_tuple_symbol
         (Skeleton_body_coordinate_tuple_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_symbol
           (Skeleton_body_coordinate_tuple_heterogeneous_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol
             (Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_constructor
               "A")))),
     [Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_border_symbol
         (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
           (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
             (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
               (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_rho_symbol
                 (Skeleton_border_coordinate_heterogeneous_spherical_rho_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_rho_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_fence_symbol
           (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
             (Skeleton_fence_units_symbol_t.Skeleton_fence_units_actual_length_symbol
               Skeleton_fence_units_actual_length_symbol_t.Meter)))]);
      Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_border_symbol
         (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
           (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
             (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
               (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_phi_symbol
                 (Skeleton_border_coordinate_heterogeneous_spherical_phi_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_phi_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_fence_symbol
           (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
             (Skeleton_fence_units_symbol_t.Skeleton_fence_units_angle_symbol
               Skeleton_fence_units_angle_symbol_t.Radian)))]);
      Tree_t.Inner
       (Skeleton_symbol_t.Skeleton_border_symbol
         (Skeleton_border_symbol_t.Skeleton_border_coordinate_symbol
           (Skeleton_border_coordinate_symbol_t.Skeleton_border_coordinate_heterogeneous_symbol
             (Skeleton_border_coordinate_heterogeneous_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_symbol
               (Skeleton_border_coordinate_heterogeneous_spherical_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_theta_symbol
                 (Skeleton_border_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_border_coordinate_heterogeneous_spherical_theta_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Skeleton_symbol_t.Skeleton_fence_symbol
           (Skeleton_fence_symbol_t.Skeleton_fence_units_symbol
             (Skeleton_fence_units_symbol_t.Skeleton_fence_units_angle_symbol
               Skeleton_fence_units_angle_symbol_t.Radian)))])])])
);;

test_number 5 (
sym_db1_dbo_st = provide tag_dbo
);;
