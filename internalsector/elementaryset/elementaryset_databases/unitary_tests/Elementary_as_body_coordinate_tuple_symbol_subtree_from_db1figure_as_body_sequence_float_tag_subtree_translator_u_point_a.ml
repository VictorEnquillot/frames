open Make_test_v;;

testing "Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v with
   Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_u_point_a.ml";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_u_point_a.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;
let sof_ect = "A";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_dbo = Db1figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);; 

test_number 1 (
(tag_dbo :
  Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol
  Tag_t.tag ) =
  (Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
    "point_a",
   [1; 1; 8; 6])
);;

let tag_db1_dsf_stl = 
    Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

let pre_tre t = Db1figure_tag_v.string_off (Tree_v.root_off_tree t) = sof_ect;;
let tag_db1_dsf_st = List_v.only_element_of_predicate_off_list pre_tre tag_db1_dsf_stl;;

test_number 2 (
(tag_db1_dsf_st :
  Db1figure_symbol_t.db1figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
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
      [3; 3; 1; 2; 1; 1; 8; 6])])
);;

open Elementary_as_body_coordinate_tuple_symbol_subtree_from_db1figure_as_body_sequence_float_tag_subtree_translator_v;;

(* Argument tag_db1_dsf_st *)

let tag_db1_dsf = Tree_v.root_off_tree tag_db1_dsf_st;;

test_number 3 (
(tag_db1_dsf : Db1figure_symbol_t.db1figure_symbol Tag_t.tag ) =
(Db1figure_symbol_t.Db1figure_body_symbol
   (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
      (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
	 (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
            "A"))),
 [3; 1; 2; 1; 1; 8; 6])
);;

let soi_db1_dsf = Tag_v.sole_index_off_tag tag_db1_dsf;;
 
let tag_dbo =  
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_context_databox_tag_off_sole_index
      soi_db1_dsf
;;

test_number 4 (
(tag_dbo : Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol Tag_t.tag ) =
(Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
  "point_a",
 [1; 1; 8; 6])
);;

let sym_dck = 
  Db1figure_fence_token_coordinates_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;

test_number 5 (
(sym_dck : Db1figure_fence_token_coordinates_kind_symbol_t.db1figure_fence_token_coordinates_kind_symbol ) =
  Db1figure_fence_token_coordinates_kind_symbol_t.Db1figure_fence_token_coordinates_kind_spherical
);;

let sym_dua = 
  Db1figure_fence_token_coordinates_units_angle_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;
  
test_number 6 (
(sym_dua :
   Db1figure_fence_token_coordinates_units_angle_symbol_t.db1figure_fence_token_coordinates_units_angle_symbol ) =
  Db1figure_fence_token_coordinates_units_angle_symbol_t.Db1figure_fence_token_coordinates_units_angle_radian
 );;

let sym_dul = 
  Db1figure_fence_token_coordinates_units_length_symbol_by_db1figure_context_databox_tag_provider_v.provide
    tag_dbo 
;;

test_number 7 (
(sym_dul :
   Db1figure_fence_token_coordinates_units_length_symbol_t.db1figure_fence_token_coordinates_units_length_symbol ) =
Db1figure_fence_token_coordinates_units_length_symbol_t.Db1figure_fence_token_coordinates_units_length_meter
);;

let tag_ele_st = translate tag_db1_dsf_st;;

test_number 8 (
(tag_ele_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
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
             Elementary_fence_units_angle_symbol_t.Radian)))])])
);;
