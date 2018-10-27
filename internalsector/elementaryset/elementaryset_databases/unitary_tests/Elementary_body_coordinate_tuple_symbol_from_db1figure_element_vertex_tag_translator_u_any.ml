open Make_test_v;;

testing "Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_v with
   Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_u_any.ml";;

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
   #use "Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_u_any.ml";;

*)

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

let tag_ddo = Db1figure_domain_tag_by_unit_provider_v.provide ();;

test_number 2 (
(tag_ddo : Db1figure_domain_symbol_t.db1figure_domain_symbol Tag_t.tag ) =
(Db1figure_domain_symbol_t.Db1figure_domain_constructor, [3])
);;

let tag_dd1_t = Db1figure_tag_tree_by_db1figure_domain_tag_provider_v.provide tag_ddo;;
let tag_dd1_l = Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v.provide tag_ddo;;

open Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_v;;

(* Vertex T_A *)

let nam_dev = "T_A";;
let tag_dd1_eve = List.find (fun t -> Db1figure_tag_v.string_off t = nam_dev) tag_dd1_l;;
let tag_dev = Tag_v.map_entity Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol tag_dd1_eve;;

test_number 3 (
tag_dev 
(* : Db1figure_element_vertex_symbol_t.db1figure_element_vertex_symbol
   Tag_t.tag *)
  =
(Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
   "T_A",
 [3; 1; 1; 3])
);;

let num_ctu = coordinate_number_of_db1figure_element_vertex_tag tag_dev;;

test_number 4 (
num_ctu = 3
);;

let sym_ctu = Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_v.translate tag_dev;;

test_number 5 (
sym_ctu
(* : Elementary_body_coordinate_tuple_symbol_t.coordinate_tuple_symbol *)
=
Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
  (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
     (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
	"T_A"))
);;

let sym_ele_st = Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide tag_dev;;

test_number 6 (
( sym_ele_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
             "T_A")))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_x
               "elementary_border_coordinate_cartesian_x")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_y
               "elementary_border_coordinate_cartesian_y")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
           (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_z
               "elementary_border_coordinate_cartesian_z")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)))])])
);;

(* Vertex A_A *)

let nam_dev = "A_A";;
let tag_dd1_eve = List.find (fun t -> Db1figure_tag_v.string_off t = nam_dev) tag_dd1_l;;
let tag_dev = Tag_v.map_entity Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol tag_dd1_eve;;

test_number 7 (
tag_dev 
(* : Db1figure_element_vertex_symbol_t.db1figure_element_vertex_symbol
   Tag_t.tag *)
  =
(Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
   "A_A",
 [4; 5; 1; 3])
);;

let num_ctu = coordinate_number_of_db1figure_element_vertex_tag tag_dev;;

test_number 8 (
num_ctu = 3
);;

let sym_ctu = Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_v.translate tag_dev;;

test_number 9 (
sym_ctu
(* : Elementary_body_coordinate_tuple_symbol_t.coordinate_tuple_symbol *)
=
  Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
   (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol
     (Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_constructor
       "A_A"))
);;

let sym_ele_st = Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide tag_dev;;

test_number 10 (
( sym_ele_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
         (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol
           (Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_spherical_constructor
             "A_A")))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
           (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol_t.Elementary_border_coordinate_spherical_rho
               "elementary_border_coordinate_spherical_rho")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Meter)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
           (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol_t.Elementary_border_coordinate_spherical_phi
               "elementary_border_coordinate_spherical_phi")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
             Elementary_fence_units_angle_symbol_t.Radian)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
         (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
           (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol
             (Elementary_border_coordinate_elementary_border_coordinate_spherical_symbol_t.Elementary_border_coordinate_spherical_theta
               "elementary_border_coordinate_spherical_theta")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_angle_symbol
             Elementary_fence_units_angle_symbol_t.Radian)))])])
);;
