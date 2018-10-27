open Make_test_v;;

testing "Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v with
   Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_u_any.ml";;

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
   #use "Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_u_any.ml";;

*)

let nam_dom = "database";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;
let tag_ddo = Db1figure_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_ddo 
(* : Db1figure_domain_symbol_t.db1figure_domain_symbol Tag_t.tag *)
=
  (Db1figure_domain_symbol_t.Db1figure_domain_constructor Domain_symbol_t.Database,
  [2])
);;

let tag_d1d = Db1figure_database_tag_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
 tag_d1d 
(* : Db1figure_symbol_t.db1figure_database_symbol Tag_t.tag *)
=
  (Db1figure_database_symbol_t.Db1figure_database_constructor
    "db1",
   [1; 2])
);;

let tag_den_t = Db1figure_tag_subtree_by_db1figure_database_tag_provider_v.provide tag_d1d;;

let tag_den_l = Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v.provide tag_d1d;;

let tag_den_eve_l = List.filter (fun t -> Db1figure_symbol_v.is_db1figure_element_vertex_symbol_off_db1figure_symbol (Tag_v.entity_off_tag t)) tag_den_l;;

(* Vertex T_A *)

let nam_dev = "T_A";;

let tag_den_eve = List.find (fun t -> Db1figure_tag_v.string_off t = nam_dev) tag_den_eve_l;;

let tag_son_l = 
    Db1figure_any_category_by_sole_index_extractor_v.son_db1figure_tag_list_of_string_predicate_of_father_tag 
      "is_db1figure_float_symbol_off_db1figure_symbol"
      tag_den_eve;;

let tag_dev = Tag_v.map_entity Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol tag_den_eve;;

test_number 3 (
tag_dev 
(* : Db1figure_element_vertex_symbol_t.db1figure_element_vertex_symbol
   Tag_t.tag *)
  =
(Db1figure_element_vertex_symbol_t.Db1figure_element_vertex_constructor
   "T_A",
 [3; 1; 1; 3])
);;

let sym_ctu = Elementary_body_coordinate_tuple_symbol_from_db1figure_element_vertex_tag_translator_v.translate tag_dev;;

test_number 4 (
sym_ctu
(* : Elementary_body_coordinate_tuple_symbol_t.coordinate_tuple_symbol *)
=
  Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
   (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol
     (Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_symbol_t.Elementary_body_coordinate_tuple_elementary_border_coordinate_cartesian_constructor
       "T_A"))
);;

let clo_uni = Elementary_body_coordinate_tuple_units_symbol_closure_from_db1figure_element_vertex_tag_translator_v.translate tag_dev;;

let clo_ele = List.map (* coerce up *)
    Elementary_symbol_v.elementary_symbol_of_units_symbol
    clo_uni;;

test_number 5 (
clo_ele
(* : Elementary_symbol_t.elementary_symbol list *)
=
  [Elementary_symbol_t.Elementary_closure_symbol
    (Elementary_closure_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer));
   Elementary_symbol_t.Elementary_closure_symbol
    (Elementary_closure_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer));
   Elementary_symbol_t.Elementary_closure_symbol
    (Elementary_closure_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

let sym_ele_st = Elementary_symbol_subtree_by_elementary_body_coordinate_tuple_symbol_builder_v.build clo_ele sym_ctu;;

test_number 6 (
 sym_ele_st 
(* : Elementary_symbol_t.elementary_symbol Tree_t.tree *)
= 
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
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_x "elementary_border_coordinate_cartesian_x")))),
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
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_y "elementary_border_coordinate_cartesian_y")))),
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
             (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_z "elementary_border_coordinate_cartesian_z")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Nanometer)))])])
);;

test_number 7 ( 
sym_ele_st = Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide tag_dev
);;


