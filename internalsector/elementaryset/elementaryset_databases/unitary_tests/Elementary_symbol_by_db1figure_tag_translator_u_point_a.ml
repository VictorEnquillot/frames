open Make_test_v;;

testing "Elementary_symbol_by_db1figure_tag_translator_v with
   Elementary_symbol_by_db1figure_tag_translator_u_point_a.ml";;

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

(* Debugging *)


(* toplevel 
   #use "Elementary_symbol_by_db1figure_tag_translator_u_point_a.ml";;

*)

let nam_dbo = "point_a";;
let nam_dba = "db1figure";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

open Elementary_symbol_by_db1figure_tag_translator_v;;

(* Argument tag_db1 *)

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
             "A_A"))),
      [3; 1; 2; 1; 1; 1; 8; 6]),
    [Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "1.")))),
       [1; 3; 1; 2; 1; 1; 1; 8; 6]);
     Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "0.785398163397448279")))),
       [2; 3; 1; 2; 1; 1; 1; 8; 6]);
     Tree_t.Leaf
      (Db1figure_symbol_t.Db1figure_fence_symbol
        (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
          (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
            (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
              (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                "0.785398163397448279")))),
       [3; 3; 1; 2; 1; 1; 1; 8; 6])])]
);;

let tag_db1 = 

List.map (Tree_v.map 
    Elementary_symbol_by_db1figure_tag_translator_v.translate)
    tag_db1_dsf_stl;;

let sym_ele_ect_stl = List.map
    elementary_as_body_coordinate_tuple_symbol_subtree_of_db1figure_as_body_sequence_float_tag_subtree 
    tag_db1_dsf_stl;;
