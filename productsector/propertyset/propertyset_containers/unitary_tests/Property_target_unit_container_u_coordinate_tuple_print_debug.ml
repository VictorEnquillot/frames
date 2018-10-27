open Make_test_v;;

testing "Property_target_unit_container_v with
    Property_target_unit_container_u_coordinate_tuple_print_debug.ml";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_target_unit_container_u_coordinate_tuple_print_debug.ml";; 

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

let tag_pro_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
( tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
 Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print.inp"),
       [3; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_target_unit_symbol
              (Property_target_unit_symbol_t.Property_target_unit_constructor
                "Ctc_a"))),
         [1; 3; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
          [1; 1; 3; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operand_external_symbol
             (Property_operand_external_symbol_t.Property_operand_elementary_tag
               (Elementary_symbol_t.Elementary_body_symbol
                 (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
                   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
                     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                         "T_A")))),
                [1; 1; 4]))),
          [2; 1; 3; 13])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_pro = List.find (fun (s, i) -> Property_symbol_v.is_property_target_unit_constructor s) tag_pro_l;;

test_number 3 (
(tag_pro : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_target_unit_symbol
        (Property_target_unit_symbol_t.Property_target_unit_constructor
          "Ctc_a"))),
   [1; 3; 13])
);;

open Property_target_unit_container_v;;

let tag_ptu = Tag_v.map_entity Property_symbol_v.property_target_unit_symbol_off_property_symbol tag_pro;;

test_number 4 (
( tag_ptu :
  Property_target_unit_symbol_t.property_target_unit_symbol Tag_t.tag ) =
  (Property_target_unit_symbol_t.Property_target_unit_constructor "Ctc_a",
   [1; 3; 13])
);;

(* let builder_tag_list tag_ptu = *)

let tag_pro_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide
      tag_pro;;

test_number 5 (
(tag_pro_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_target_symbol
        (Property_target_symbol_t.Property_target_unit_symbol
          (Property_target_unit_symbol_t.Property_target_unit_constructor
            "Ctc_a"))),
     [1; 3; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_tounit
           (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
      [1; 1; 3; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operand_external_symbol
         (Property_operand_external_symbol_t.Property_operand_elementary_tag
           (Elementary_symbol_t.Elementary_body_symbol
             (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
               (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
                 (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                   (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                     "T_A")))),
            [1; 1; 4]))),
      [2; 1; 3; 13])])
);;

let tag_pro_bui_l =
  Tree_v.node_filter_of_node_predicate_off_tree 
    (fun (s, i) -> 
      Property_symbol_v.is_property_operator_tounit s  (* Operator *)
    ||
      Property_symbol_v.is_property_target_created_symbol_off_property_symbol s  (* Operand Target *)
    ||
      Property_symbol_v.is_property_operand_external_symbol_off_property_symbol s  (* Operand External *)
    )
    tag_pro_st
;;

test_number 6 (
(tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
    [1; 1; 3; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 3; 13])]
);;

test_number 7 (
tag_pro_bui_l = builder_tag_list tag_ptu 
);;

(* let operator_tounit_tag tag_ptu = *)

let sym_pro_bui_l = List.map Tag_v.entity_off_tag tag_pro_bui_l;;

test_number 8 (
(sym_pro_bui_l : Property_symbol_t.property_symbol list ) =
  [Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operator_symbol
      (Property_operator_symbol_t.Property_operator_tounit
        (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12])));
   Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_elementary_tag
        (Elementary_symbol_t.Elementary_body_symbol
          (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
            (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
              (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                  "T_A")))),
         [1; 1; 4])))]
);;

let sym_pro_ope = List_v.only_element_of_predicate_off_list Property_symbol_v.is_property_operator_tounit sym_pro_bui_l;;

test_number 9 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit
       (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12])))
);;

let sym_pou = Property_symbol_v.property_operator_symbol_off_property_symbol sym_pro_ope;;

test_number 10 (
(sym_pou : Property_operator_symbol_t.property_operator_symbol ) =
  Property_operator_symbol_t.Property_operator_tounit
   (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12])
);;

let tag_ope = Property_operator_symbol_v.tag_off sym_pou;;

test_number 11 (
(tag_ope : Operator_symbol_t.operator_symbol Tag_t.tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_tounit_symbol
      (Operator_tounit_symbol_t.Operator_print "Ctc_a")),
   [1; 3; 12])
);; 

let tag_oun = Tag_v.map_entity (* Coerce Down *) 
    Operator_symbol_v.operator_tounit_symbol_off_operator_symbol
    tag_ope;;

test_number 12 (
(tag_oun : Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12])
);;

test_number 13 (
tag_oun = operator_tounit_tag tag_ptu
);;

(* let property_as_operand_tag tag_ptu = *)

let tag_pro_bui_l = builder_tag_list tag_ptu;;

test_number 14 (
( tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
    [1; 1; 3; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 3; 13])]
);;

let tag_pro_opd = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> not (Property_symbol_v.is_property_operator_tounit s) )
    tag_pro_bui_l;;

test_number 15 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_elementary_tag
        (Elementary_symbol_t.Elementary_body_symbol
          (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
            (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
              (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                  "T_A")))),
         [1; 1; 4]))),
   [2; 1; 3; 13])
);;

test_number 16 (
tag_pro_opd = property_as_operand_tag tag_ptu
);;

(* let build tag_ptu = *)

let tag_oun = operator_tounit_tag tag_ptu;;
let tag_pro_opd = property_as_operand_tag tag_ptu;;

let con_ptu = Doublet_v.make tag_oun tag_pro_opd;;

test_number 17 (
(con_ptu :
  (Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag,
   Property_symbol_t.property_symbol Tag_t.tag)
  Doublet_t.doublet ) =
  ((Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]),
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
             (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
               (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                 (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                   "T_A")))),
          [1; 1; 4]))),
    [2; 1; 3; 13]))
);;

test_number 18 (
con_ptu = Property_target_unit_container_v.retrieve tag_ptu
);;

