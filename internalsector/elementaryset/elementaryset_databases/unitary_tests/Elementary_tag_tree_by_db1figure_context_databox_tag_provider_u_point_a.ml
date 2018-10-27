open Make_test_v;;

testing "Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v with
   Elementary_tag_tree_by_db1figure_context_databox_tag_provider_u_point_a.ml";;

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
   #use "Elementary_tag_tree_by_db1figure_context_databox_tag_provider_u_point_a.ml";;

*)

let nam_dbo = "point_a";;
let nam_dba = "db1figure";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_tag_tree_by_db1figure_context_databox_tag_provider_v;;

(* Argument Db1figure_context_databox_tag tag_ndb *)

let tag_ndf = Db1figure_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ndf :
  Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol Tag_t.tag ) =
  (Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
    "point_a",
   [5; 5; 19; 5])
);;

let nam_ndf = Db1figure_context_databox_tag_v.string_off tag_ndf;;

let sym_ele_edf_st = 
    Elementary_symbol_subtree_by_db1figure_context_databox_tag_provider_v.provide 
      tag_ndf;; 

 let (tag_ele_ecd, tag_ele_edb, tag_ele_edf) = 
    Elementary_as_context_tag_trio_by_db1figure_context_databox_tag_provider_v.provide
      tag_ndf;;

test_number 2 (
(tag_ele_ecd : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
        "elementary")),
   [7])
);;

test_number 3 (
(tag_ele_edb : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor
        "db1figure")),
   [5; 7])
);;

test_number 4 (
(tag_ele_edf : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "point_a"))),
   [5; 5; 7])
);;

 
let soi_ele_edf = Tag_v.sole_index_off_tag tag_ele_edf;;

test_number 5 (
(soi_ele_edf : Sole_index_t.sole_index ) = 
[5; 5; 7]
);;

let soi_ele_edf_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ele_edf_st 
      soi_ele_edf 
;;

let tag_ele_edf_st = Tree_v.map2 Tag_v.make sym_ele_edf_st soi_ele_edf_st;;
  
let tag_ele_edb_st = Tree_v.make_of_node tag_ele_edb [tag_ele_edf_st];;

let tag_ele_t = provide tag_ndf;;

(* Context Trio *)

let tag_ele_eco_l = Tree_v.node_list_of_node_predicate_off_tree 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_context_symbol_off_elementary_symbol s)
    tag_ele_t;;

test_number 6 (
( tag_ele_eco_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [7]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "db1figure")),
    [5; 7]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
         (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
           "point_a"))),
    [5; 5; 7])]
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
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
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
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne s 1 3")))),
       [2; 3; 5; 5; 7]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 2; 3; 5; 5; 7])])])
);;
