open Make_test_v;;

testing "Coordinate_as_set_body_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
   Coordinate_as_set_body_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Debugging *)

(* toplevel 
   #use "Coordinate_as_set_body_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

*)

open Coordinate_as_set_body_tuple_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

(* Argument tag_dbo *)

let sym_db1_dsf_stl =
    Db1pointsdata_as_set_body_sequence_float_symbol_subtree_list_by_databox_name_n_database_name_provider_v.provide
      nam_dbo;;

test_number 1 (
(sym_db1_dsf_stl :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
        (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
          (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
            "A"))),
    [Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
        (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
          (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
            (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
              (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                "1."))));
     Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
        (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
          (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
            (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
              (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                "0.785398163397448279"))));
     Tree_t.Leaf
      (Db1pointsdata_symbol_t.Db1pointsdata_set_fence_symbol
        (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
          (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
            (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
              (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                "0.785398163397448279"))))])]
);;

 let sym_coo_cbt_stl = List.map 
      Coordinate_as_set_body_tuple_symbol_subtree_from_db1pointsdata_as_set_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl;;

test_number 2 (
(sym_coo_cbt_stl : Coordinate_symbol_t.coordinate_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_body_symbol_t.Coordinate_body_tuple_symbol
        (Coordinate_body_tuple_symbol_t.Coordinate_body_tuple_heterogeneous_symbol
          (Coordinate_body_tuple_heterogeneous_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_symbol
            (Coordinate_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_constructor
              "A")))),

    [Tree_t.Inner
      (Coordinate_symbol_t.Coordinate_border_symbol
        (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
          (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
            (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
              (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_rho_symbol
                (Coordinate_border_coordinate_heterogeneous_spherical_rho_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_rho_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
            (Coordinate_fence_units_symbol_t.Coordinate_fence_units_actual_length_symbol
              Coordinate_fence_units_actual_length_symbol_t.Meter)))]);

     Tree_t.Inner
      (Coordinate_symbol_t.Coordinate_border_symbol
        (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
          (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
            (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
              (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_phi_symbol
                (Coordinate_border_coordinate_heterogeneous_spherical_phi_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_phi_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
            (Coordinate_fence_units_symbol_t.Coordinate_fence_units_angle_symbol
              Coordinate_fence_units_angle_symbol_t.Radian)))]);

     Tree_t.Inner
      (Coordinate_symbol_t.Coordinate_border_symbol
        (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
          (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
            (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
              (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_theta_symbol
                (Coordinate_border_coordinate_heterogeneous_spherical_theta_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_theta_constructor
                  "A"))))),
      [Tree_t.Leaf
        (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
            (Coordinate_fence_units_symbol_t.Coordinate_fence_units_angle_symbol
              Coordinate_fence_units_angle_symbol_t.Radian)))])])]
);;

let sym_coo_cbo = 
    coordinate_as_context_databox_symbol_of_db1pointsdata_context_databox_tag 
      tag_dbo;;

test_number 3 (
(sym_coo_cbo : Coordinate_symbol_t.coordinate_symbol ) =
  Coordinate_symbol_t.Coordinate_context_symbol
   (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
     (Coordinate_context_databox_symbol_t.Coordinate_context_databox_figuredata_symbol
       (Coordinate_context_databox_figuredata_symbol_t.Coordinate_context_databox_figuredata_constructor
         "point_a")))
);;

let sym_db1_dbo_st = Tree_v.make_of_node sym_coo_cbo sym_coo_cbt_stl;;

test_number 4 (
( sym_db1_dbo_st : Coordinate_symbol_t.coordinate_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_figuredata_symbol
         (Coordinate_context_databox_figuredata_symbol_t.Coordinate_context_databox_figuredata_constructor
           "point_a"))),
   [Tree_t.Inner
     (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_body_symbol_t.Coordinate_body_tuple_symbol
         (Coordinate_body_tuple_symbol_t.Coordinate_body_tuple_heterogeneous_symbol
           (Coordinate_body_tuple_heterogeneous_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_symbol
             (Coordinate_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_constructor
               "A")))),
     [Tree_t.Inner
       (Coordinate_symbol_t.Coordinate_border_symbol
         (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
           (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
             (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
               (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_rho_symbol
                 (Coordinate_border_coordinate_heterogeneous_spherical_rho_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_rho_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
           (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
             (Coordinate_fence_units_symbol_t.Coordinate_fence_units_actual_length_symbol
               Coordinate_fence_units_actual_length_symbol_t.Meter)))]);
      Tree_t.Inner
       (Coordinate_symbol_t.Coordinate_border_symbol
         (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
           (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
             (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
               (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_phi_symbol
                 (Coordinate_border_coordinate_heterogeneous_spherical_phi_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_phi_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
           (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
             (Coordinate_fence_units_symbol_t.Coordinate_fence_units_angle_symbol
               Coordinate_fence_units_angle_symbol_t.Radian)))]);
      Tree_t.Inner
       (Coordinate_symbol_t.Coordinate_border_symbol
         (Coordinate_border_symbol_t.Coordinate_border_coordinate_symbol
           (Coordinate_border_coordinate_symbol_t.Coordinate_border_coordinate_heterogeneous_symbol
             (Coordinate_border_coordinate_heterogeneous_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_symbol
               (Coordinate_border_coordinate_heterogeneous_spherical_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_theta_symbol
                 (Coordinate_border_coordinate_heterogeneous_spherical_theta_symbol_t.Coordinate_border_coordinate_heterogeneous_spherical_theta_constructor
                   "A"))))),
       [Tree_t.Leaf
         (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
           (Coordinate_fence_symbol_t.Coordinate_fence_units_symbol
             (Coordinate_fence_units_symbol_t.Coordinate_fence_units_angle_symbol
               Coordinate_fence_units_angle_symbol_t.Radian)))])])])
);;

test_number 5 (
sym_db1_dbo_st = provide tag_dbo
);;
