open Make_test_v;;

testing "Property_target_implicit_unit_container_v with
    Property_target_implicit_unit_container_u_coordinate_tuple_print_debug.ml";;

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
   #use "Property_target_implicit_unit_container_u_coordinate_tuple_print_debug.ml";; 

*)

(* Input File *)

let nof_inp = "Coordinate_tuple_print.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
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

let tag_ptu = Tag_v.map_entity Property_symbol_v.property_target_unit_symbol_off_property_symbol tag_pro;;

test_number 4 (
( tag_ptu :
  Property_target_unit_symbol_t.property_target_unit_symbol Tag_t.tag ) =
  (Property_target_unit_symbol_t.Property_target_unit_constructor "Ctc_a",
   [1; 3; 13])
);;

let con_ptu = Property_target_unit_container_v.retrieve tag_ptu;;

test_number 5 (
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

open Property_target_implicit_unit_container_v;;

(* let property_operand_external_print tag_ptu = *)

let tag_pro_opd = Property_target_unit_container_v.property_as_operand_tag tag_ptu;;

test_number 6 (
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

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

test_number 7 (
(sym_pro_opd : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_operand_external_symbol
     (Property_operand_external_symbol_t.Property_operand_elementary_tag
       (Elementary_symbol_t.Elementary_body_symbol
         (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
           (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
             (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
               (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                 "T_A")))),
        [1; 1; 4])))
);;

let sym_pox_opd = Property_symbol_v.property_operand_external_symbol_off_property_symbol sym_pro_opd;;

test_number 8 (
(sym_pox_opd : Property_operand_external_symbol_t.property_operand_external_symbol ) =
Property_operand_external_symbol_t.Property_operand_elementary_tag
  (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
	(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
           (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
              (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
		 "T_A")))),
   [1; 1; 4])
);;

let tag_ele = Property_operand_external_symbol_v.elementary_tag_off sym_pox_opd;;

test_number 9 (
(tag_ele : Elementary_tag_t.elementary_tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
      (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
        (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
          (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
            "T_A")))),
   [1; 1; 4])
);;

let tag_ctu = Tag_v.map_entity (* Coerce Down *)
    Elementary_symbol_v.elementary_coordinate_tuple_symbol_off_elementary_symbol
    tag_ele;;

test_number 10 (
(tag_ctu :
   Elementary_coordinate_tuple_cartesian_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
    (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
      (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
        "T_A")),
   [1; 1; 4])
);;

let val_ctu = Elementary_coordinate_tuple_value_v.retrieve tag_ctu;;

test_number 11 (
( val_ctu :
  Elementary_coordinate_tuple_value_t.elementary_coordinate_tuple_value ) =
Elementary_coordinate_tuple_value_t.Elementary_coordinate_tuple_homogeneous_value
  (Elementary_coordinate_tuple_homogeneous_value_t.Elementary_coordinate_tuple_cartesian_value
     ((Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A",
       [1; 1; 4]),
      (((Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x",
         [1; 1; 1; 4]),
        Singlet_t.Singlet
         ((Elementary_units_symbol_t.Elementary_units_length_symbol
            Elementary_units_length_symbol_t.Nanometer,
           [1; 1; 1; 1; 4]),
          Singlet_t.Singlet 0.1)),
       ((Elementary_coordinate_cartesian_symbol_t.Cartesian_y "cartesian_y",
         [2; 1; 1; 4]),
        Singlet_t.Singlet
         ((Elementary_units_symbol_t.Elementary_units_length_symbol
            Elementary_units_length_symbol_t.Nanometer,
           [1; 2; 1; 1; 4]),
          Singlet_t.Singlet 0.2)),
       ((Elementary_coordinate_cartesian_symbol_t.Cartesian_z "cartesian_z",
         [3; 1; 1; 4]),
        Singlet_t.Singlet
         ((Elementary_units_symbol_t.Elementary_units_length_symbol
            Elementary_units_length_symbol_t.Nanometer,
           [1; 3; 1; 1; 4]),
          Singlet_t.Singlet (-0.2))))))
);;

let mch_tl = Elementary_coordinate_tuple_cartesian_container_v.evaluate tag_ctu;;

test_number 12 (
(mch_tl :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.000152304843609e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (3.98254759356271713e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-4.00000000000000066e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

let mch_tl = Elementary_coordinate_tuple_cartesian_value_v.evaluate tag_ctu;;
(* let evaluate tag_ptu = *)

let tag_oun = Property_target_unit_container_v.operator_tounit_tag tag_ptu;;

test_number 13 (
( tag_oun : Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 27; 12])
);;

let sym_oun = Tag_v.entity_off_tag tag_oun;;

test_number 14 (
(sym_oun : Operator_tounit_symbol_t.operator_tounit_symbol ) =
  Operator_tounit_symbol_t.Operator_print "Ctc_a"
);;

let sof_oun = Operator_tounit_symbol_v.string_off sym_oun ;;

test_number 15 (
(sof_oun : string ) = 
"Ctc_a"
);;

Format.fprintf Format.std_formatter "@.Print \"%s\":@." sof_oun;
property_operand_created_print tag_ptu;

