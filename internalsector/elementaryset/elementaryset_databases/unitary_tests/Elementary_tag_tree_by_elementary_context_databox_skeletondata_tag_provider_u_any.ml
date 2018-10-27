open Make_test_v;;

testing "Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v with
   Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_u_any.ml";;

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
   #use "Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_u_any.ml";;

*)

let nam_dna = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v;;

let tag_eba = Elementary_context_databox_skeletondata_tag_by_parameters_general_provider_v.provide () ;;

test_number 1 (
(tag_eba :
  Elementary_context_databox_skeletondata_symbol_t.elementary_context_databox_skeletondata_symbol Tag_t.tag ) =
  (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor "lanl2dz",
   [5; 5; 7])
);;

let nam_dna = Elementary_context_databox_skeletondata_tag_v.string_off tag_eba ;;

test_number 2 (
(nam_dna : string ) = 
"lanl2dz"
);;

let nam_bas_l = Context_name_son_list_by_context_name_provider_v.provide nam_dna;;

test_number 3 (
(nam_bas_l : string list ) =
  ["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

let nam_dna = database_name_of_elementary_context_databox_skeletondata_tag tag_eba;;

test_number 4 (
(nam_dna : string ) = 
"nwchem"
);;

let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 5 (
(tag_ncb :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "lanl2dz",
   [5; 5; 19; 5])
);;

let tag_ele_t = Elementary_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;

let tag_ele_tso_l = Tree_v.root_topson_node_list_off_tree tag_ele_t;;

test_number 6 (
( tag_ele_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
    [7]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
    [5; 7])]
);;

let tag_ele_fpt_st = Tree_v.subtree_of_node_predicate_off_tree 
    (fun (s, i) -> Elementary_symbol_v.string_off s = "ne s 1 3") 
    tag_ele_t;;

test_number 7 (
( tag_ele_fpt_st :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne s 1 3"))),
     [3; 5; 5; 7]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne s 1 3")))),
       [1; 3; 5; 5; 7]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 1; 3; 5; 5; 7])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
                "ne s 1 3")))),
       [2; 3; 5; 5; 7]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 2; 3; 5; 5; 7])])])
);;

test_number 8 (
tag_ele_t = provide tag_eba
);;

