open Make_test_v;;

testing "Property_unit_container_v with
    Property_unit_container_u_coordinate_tuple_print_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Component_filename_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_content_list_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_all_list_by_database_db1_domain_tag_register_v.register;;
Register_v.delete  Database_db1_tag_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_createdby_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_units_tag_closure_by_elementary_tag_register_v.register;;
Register_v.delete  Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Figure_tag_all_list_by_database_name_register_v.register;;
Register_v.delete  Figure_tag_all_list_by_figure_createdby_tag_register_v.register;;
Register_v.delete  Figure_tag_tree_by_database_name_register_v.register;;
Register_v.delete  Figure_tag_tree_by_figure_tag_register_v.register;;
Register_v.delete  Figure_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Input_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Input_tag_tree_by_input_tag_register_v.register;;
Register_v.delete  Input_variable_kind_by_input_variable_name_register_v.register;;
Register_v.delete  Input_variable_name_by_input_tag_register_v.register;;
Register_v.delete  Input_variable_name_n_kind_list_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Operator_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Operator_symbol_by_sole_index_register_v.register;;
Register_v.delete  Operator_tag_by_input_variable_name_register_v.register;;
Register_v.delete  Operator_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Operator_tag_tree_by_operator_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Property_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Property_symbol_by_sole_index_register_v.register;;
Register_v.delete  Property_tag_all_list_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Property_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Property_tag_tree_by_property_tag_register_v.register;;
Register_v.delete  Son_database_db1_tag_list_by_father_database_db1_tag_register_v.register;;
Register_v.delete  String_by_database_db1_component_tag_register_v.register;;
Register_v.delete  String_by_database_db1_database_tag_register_v.register;;
Register_v.delete  String_list_by_database_db1_tag_register_v.register;;






(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_unit_container_u_coordinate_tuple_print_debug.ml";; 

*)

(* Input File *)

let nof_inp = "Coordinate_tuple_print.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_inp_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

open Property_unit_container_v;;

let tag_ope_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_ope_t : Property_symbol_t.operator_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "operator"),
     [12]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print.inp"),
       [3; 12]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_unit_symbol
            (Property_unit_symbol_t.Property_print "Ctc_a")),
         [1; 3; 12]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_cofactor_symbol
             (Property_cofactor_symbol_t.Property_cofactor_elementary
               "elementary_units_length_meter")),
          [1; 1; 3; 12])])])])
);;

let tag_ope_l = Property_tag_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_ope_fat = List.find (fun (s, i) -> Property_symbol_v.is_operator_print s) tag_ope_l;;

test_number 3 (
(tag_ope_fat : Property_symbol_t.operator_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_unit_symbol
      (Property_unit_symbol_t.Property_print "Ctc_a")),
   [1; 3; 12])
);;

let tag_oun = Tag_v.map_entity Property_symbol_v.operator_tounit_symbol_off_operator_symbol tag_ope_fat;;

test_number 4 (
( tag_oun : Property_unit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Property_unit_symbol_t.Property_print "Ctc_a", [1; 3; 12])
);;

let tag_ope_son_l =
    Property_any_category_by_sole_index_extractor_v.son_operator_tag_list_of_string_predicate_of_father_tag 
      "is_operator_cofactor_elementary"
      tag_ope_fat ;;

test_number 5 (
(tag_ope_son_l :
  (Property_symbol_t.operator_symbol, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_cofactor_symbol
       (Property_cofactor_symbol_t.Property_cofactor_elementary
         "elementary_units_length_meter")),
    [1; 1; 3; 12])]
);;

(* let con_oun = Property_unit_container_v.retrieve tag_oun ;; *)
