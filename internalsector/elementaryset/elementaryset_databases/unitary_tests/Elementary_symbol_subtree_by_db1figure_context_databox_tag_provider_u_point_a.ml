open Make_test_v;;

testing "Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_v with
   Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_u_point_a.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;




(* Tracing *)

(* Debugging *)


(* toplevel 
   #use "Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_u_point_a.ml";;

*)

let nam_dbo = "point_a";;
let nam_dba = "db1figure";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_v;;

(* Argument tag_dbo *)

let tag_dbo = Db1figure_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_dbo :
  Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol Tag_t.tag ) =
  (Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
    "point_a",
   [1; 1; 8; 6])
);;

let tag_db1_dsf_stl =
    Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

test_number 2 (
(tag_db1_dsf_stl :
  Db1figure_symbol_t.db1figure_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Db1figure_symbol_t.Db1figure_body_symbol
       (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
         (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
           (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
             "A"))),
      [3; 1; 2; 1; 1; 8; 6]),
    [Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "1.")))),
       [1; 3; 1; 2; 1; 1; 8; 6]);
     Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "0.785398163397448279")))),
       [2; 3; 1; 2; 1; 1; 8; 6]);
     Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "0.785398163397448279")))),
       [3; 3; 1; 2; 1; 1; 8; 6])])]
);;

 let sym_ele_ect_stl = List.map 
      Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v.translate
      tag_db1_dsf_stl;;

test_number 3 (
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
    elementary_as_context_databox_symbol_of_db1figure_context_databox_tag 
      tag_dbo;;

test_number 4 (
(sym_ele_ebo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol
       (Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
         "point_a")))
);;

let sym_db1_dbo_st = Tree_v.make_of_node sym_ele_ebo sym_ele_ect_stl;;

test_number 5 (
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

test_number 6 (
sym_db1_dbo_st = provide tag_dbo
);;
