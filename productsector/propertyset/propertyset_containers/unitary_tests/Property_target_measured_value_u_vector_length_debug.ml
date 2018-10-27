open Make_test_v;;

testing "Property_target_measured_value_v with
    Property_target_measured_value_u_vector_length_debug.ml";;

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
   #use "Property_target_measured_value_u_vector_length_debug.ml";; 

*)

(* Input File *)

let nof_inp = "Vector_length.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_inp_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

let tag_ecr = Elementary_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_ecr :
  Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/keep/sources/ocaml_top/setup/frames/inputset/files/Vector_length.inp",
   [48; 4])
);;

let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr ;;

test_number 3 (
(tag_ele_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_domain_symbol
       (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary")),
    [4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_createdby_symbol
       (Elementary_createdby_symbol_t.Elementary_input_file
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Vector_length.inp")),
    [48; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Meter)),
    [1; 48; 4])]
);;

let tag_pro_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 4 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/keep/sources/ocaml_top/setup/frames/inputset/files/Vector_length.inp"),
       [48; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_target_unit_symbol
              (Property_target_unit_symbol_t.Property_target_unit_constructor
                "Len_bc"))),
         [1; 48; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Len_bc", [1; 48; 12]))),
          [1; 1; 48; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_target_measured_symbol
                (Property_target_measured_symbol_t.Property_target_measured_elementary
                  "Len_bc"))),
           [2; 1; 48; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_creation
                 (Operator_creation_symbol_t.Operator_measure_symbol
                   (Operator_measure_symbol_t.Operator_measure_length
                     "Len_vec"),
                  [2; 48; 12]))),
            [1; 2; 1; 48; 13]);
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operand_external_symbol
               (Property_operand_external_symbol_t.Property_operand_figure_tag
                 (Figure_symbol_t.Figure_field_symbol
                   (Figure_field_symbol_t.Figure_body_symbol
                     (Figure_body_symbol_t.Figure_vector_symbol
                       (Figure_vector_symbol_t.Figure_vector_constructor
                         "Vec_bc"))),
                  [1; 1; 48; 6]))),
            [2; 2; 1; 48; 13])])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let tag_pro_fat = List.find (fun (s, i) -> Property_symbol_v.is_property_target_measured_symbol_off_property_symbol s) tag_pro_l;;

test_number 5 (
(tag_pro_fat : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_target_measured_symbol
        (Property_target_measured_symbol_t.Property_target_measured_elementary
          "Len_bc"))),
   [2; 1; 48; 13])
);;

open Property_target_measured_value_v;;

(* Target_measured Tag Len_bc *)

let tag_ptm = Tag_v.map_entity Property_symbol_v.property_target_measured_symbol_off_property_symbol tag_pro_fat;;

test_number 6 (
(tag_ptm : Property_target_measured_symbol_t.property_target_measured_symbol Tag_t.tag ) =
  (Property_target_measured_symbol_t.Property_target_measured_elementary
    "Len_bc",
   [2; 1; 48; 13])
);;

(* let builder_tag_list tag_ptm = *)

let tag_pro_tme = (* Coerce Up *)
    Tag_v.map_entity Property_symbol_v.property_symbol_of_property_target_measured_symbol
      tag_ptm;;

test_number 7 (
(tag_pro_tme : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_target_measured_symbol
        (Property_target_measured_symbol_t.Property_target_measured_elementary
          "Len_bc"))),
   [2; 1; 48; 13])
);;

let tag_pro_tme_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide
      tag_pro_tme;;

test_number 8 (
(tag_pro_tme_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_target_symbol
        (Property_target_symbol_t.Property_target_measured_symbol
          (Property_target_measured_symbol_t.Property_target_measured_elementary
            "Len_bc"))),
     [2; 1; 48; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_measure_symbol
             (Operator_measure_symbol_t.Operator_measure_length "Len_vec"),
            [2; 48; 12]))),
      [1; 2; 1; 48; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operand_external_symbol
         (Property_operand_external_symbol_t.Property_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_body_symbol
               (Figure_body_symbol_t.Figure_vector_symbol
                 (Figure_vector_symbol_t.Figure_vector_constructor "Vec_bc"))),
            [1; 1; 48; 6]))),
      [2; 2; 1; 48; 13])])
);;

let tag_pro_bui_l = Tree_v.topson_node_list_off_tree tag_pro_tme_st;;

test_number 9 (
( tag_pro_bui_l :
    (Property_symbol_t.property_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Len_vec"),
          [2; 48; 12]))),
    [1; 2; 1; 48; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_vector_symbol
               (Figure_vector_symbol_t.Figure_vector_constructor "Vec_bc"))),
          [1; 1; 48; 6]))),
    [2; 2; 1; 48; 13])]
);;

test_number 10 (
tag_pro_bui_l = Property_target_measured_container_v.builder_tag_list tag_ptm
);;

(* let operator_measure_tag_of_property_target_measured_tag tag_ptm = *)

let tag_ocr = 
    Property_target_measured_container_v.operator_creation_tag 
      tag_ptm;;

test_number 11 (
(tag_ocr : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
(Operator_creation_symbol_t.Operator_measure_symbol
   (Operator_measure_symbol_t.Operator_measure_length "Len_vec"),
 [2; 48; 12])
);;

let tag_ome = 
  Tag_v.map_entity
    Operator_creation_symbol_v.operator_measure_symbol_off_operator_creation_symbol 
    tag_ocr;;

test_number 12 (
(tag_ome : Operator_measure_symbol_t.operator_measure_symbol Tag_t.tag ) =
(Operator_measure_symbol_t.Operator_measure_length "Len_vec", [2; 48; 12])
);;

(* Operator *)

test_number 13 (
tag_ome = operator_measure_tag_of_property_target_measured_tag tag_ptm
);;

(* let property_as_operand_tag tag_ptm = *)

(* Operand *)

let tag_pro_opd = 
    Property_target_measured_container_v.property_as_operand_tag  
      tag_ptm;;

test_number 14 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_body_symbol
            (Figure_body_symbol_t.Figure_vector_symbol
              (Figure_vector_symbol_t.Figure_vector_constructor "Vec_bc"))),
         [1; 1; 48; 6]))),
   [2; 2; 1; 48; 13])
);;

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd ;;

test_number 15 (
(sym_pro_opd : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_operand_external_symbol
     (Property_operand_external_symbol_t.Property_operand_figure_tag
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_body_symbol
           (Figure_body_symbol_t.Figure_vector_symbol
             (Figure_vector_symbol_t.Figure_vector_constructor "Vec_bc"))),
        [1; 1; 48; 6])))
);;

(** ----------------------- {6 Evaluating} ---------------------------- *)

let len_ptm = evaluate tag_ptm;;

test_number 16 (
(len_ptm : (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Singlet_t.singlet ) =
  Singlet_t.Singlet
   (1e-10,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Meter)
);;
