open Make_test_v;;

testing "Elementary_symbol_tree_by_db1figure_domain_tag_provider_v with
   Elementary_symbol_tree_by_db1figure_domain_tag_provider_u_any.ml";;

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
   #use "Elementary_symbol_tree_by_db1figure_domain_tag_provider_u_any.ml";;

*)

let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up "database" "db1" [];;
let tag_ddo = Db1figure_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 1 (
tag_ddo
(* : Db1figure_domain_symbol_t.db1figure_domain_symbol Tag_t.tag *)
=
(Db1figure_domain_symbol_t.Db1figure_domain_constructor, [3])
);;

let tag_dd1_l = 
  Db1figure_tag_all_list_by_db1figure_domain_tag_provider_v.provide 
    tag_ddo 
;;

let tag_dd1_eve_l = 
  List.filter (fun t -> 
    Db1figure_symbol_v.is_db1figure_element_vertex_symbol_off_db1figure_symbol 
      (Tag_v.entity_off_tag t)
	      ) 
    tag_dd1_l
;;

let tag_dev_l = List.map (* coerce down *)
    (Tag_v.map_entity
       Db1figure_symbol_v.db1figure_element_vertex_symbol_off_db1figure_symbol)
    tag_dd1_eve_l 
;;  

let sym_bod_sut_l = List.map
    Elementary_symbol_subtree_by_db1figure_element_vertex_tag_provider_v.provide 
    tag_dev_l 
;;
  
  let sym_ele_dom = Elementary_symbol_v.elementary_context_domain_constructor "";;
  let sym_ele_dba = Elementary_symbol_v.elementary_context_database_constructor "db1";;

  let sym_ele_dba_st = Tree_v.make_of_node sym_ele_dba sym_bod_sut_l;;
  let sym_ele_t = Tree_v.make_of_node sym_ele_dom [sym_ele_dba_st] 

let sym_ele_t = Elementary_symbol_tree_by_db1figure_domain_tag_provider_v.provide tag_ddo;;

let sym_ele_roo = Tree_v.root_off_tree sym_ele_t;;

(* Domain Tag *)

test_number 2 (
( sym_ele_roo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_domain_symbol
     (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary"))
);;

(* T_A *)

let sym_ele_sut = List.nth sym_bod_sut_l 0;;

test_number 3 (
sym_ele_sut 
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
         (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
       (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
         (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
           (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_y "elementary_border_coordinate_cartesian_y")))),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer)))]);
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
       (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
         (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol
           (Elementary_border_coordinate_elementary_border_coordinate_cartesian_symbol_t.Elementary_border_coordinate_cartesian_z "elementary_border_coordinate_cartesian_z")))),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_fence_units_symbol
         (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_t.Nanometer)))])])
);;

