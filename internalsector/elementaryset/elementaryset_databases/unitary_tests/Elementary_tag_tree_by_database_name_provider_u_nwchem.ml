open Make_test_v;;

testing "Elementary_tag_tree_by_database_name_provider_v with
   Elementary_tag_tree_by_database_name_provider_u_nwchem.ml";;

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
   #use "Elementary_tag_tree_by_database_name_provider_u_nwchem.ml";;

*)

let nam_dna = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_tag_tree_by_database_name_provider_v;;

let tag_dgn = Nwchem_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
( tag_dgn : Nwchem_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Nwchem_context_database_symbol_t.Nwchem_context_database_constructor
    "nwchem",
   [5; 3])
);;

let tag_dcb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 2 (
(tag_dcb :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let sym_ele_bas_st = 
    Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_v.provide 
      tag_dcb;; 

let sym_ele_tso_l = Tree_v.root_topson_node_list_off_tree sym_ele_bas_st;;


let sym_ele_t = Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_v.provide tag_dcb;;

let tag_ele_t = provide nam_dna;;
let tag_ele_l = Elementary_tag_all_list_by_database_name_provider_v.provide nam_dba;;

let tag_ele_top_l = List.filter (fun (s, i) -> List.length i <= 3) tag_ele_l;;

test_number 3 (
( tag_ele_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
    [4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_context_database
         "nwchem")),
    [1; 4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_skeletondata_symbol
       (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
         "lanl2dz")),
    [1; 1; 4])]
);;

let tag_ele_fpt_st = Tree_v.subtree_of_node_predicate_off_tree (fun (s, i) -> i = [3; 1; 1; 4]) tag_ele_t;;

test_number 4 (
( tag_ele_fpt_st :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "Ne S 1 GAUSSIAN 3"))),
     [3; 1; 1; 4]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_coefficient_aopef_symbol
              (Elementary_border_parameter_coefficient_aopef_symbol_t.Elementary_border_parameter_coefficient_aopef_constructor
                "Ne S 1 GAUSSIAN 3")))),
       [1; 3; 1; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 1; 3; 1; 1; 4])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_exponent_aopef_symbol
              (Elementary_border_parameter_exponent_aopef_symbol_t.Elementary_border_parameter_exponent_aopef_constructor
                "Ne S 1 GAUSSIAN 3")))),
       [2; 3; 1; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 2; 3; 1; 1; 4])])])
);;
