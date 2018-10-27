open Make_test_v;;

testing "Property_operand_body_target_created_envelope_v with
    Property_operand_body_target_created_envelope_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)









(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_operand_body_target_created_envelope_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_n_translation_point_a.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_loi_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

let tag_ecr = Elementary_createdby_tag_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a.inp",
   [28; 4])
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
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a.inp")),
    [28; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Meter)),
    [1; 28; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_angle_symbol
         Elementary_units_angle_symbol_t.Radian)),
    [2; 28; 4])]
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
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_n_translation_point_a.inp"),
       [28; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_a"))),
         [1; 28; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 28; 12]))),
          [1; 1; 28; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_body_operand_external_symbol
             (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_field_symbol
                 (Figure_field_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
                [1; 3; 1; 6]))),
          [2; 1; 28; 13])]);
      Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_t"))),
         [2; 28; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_t", [2; 28; 12]))),
          [1; 2; 28; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_operand_body_target_created_symbol
                (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
                  "Poi_t"))),
           [2; 2; 28; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_creation
                 (Operator_creation_symbol_t.Operator_endomorphism_symbol
                   (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                     (Operator_transformation_symbol_t.Operator_transformation_translation
                       "Tra_bc")),
                  [4; 28; 12]))),
            [1; 2; 2; 28; 13]);
          Tree_t.Inner
           ((Property_symbol_t.Property_body_symbol
              (Property_body_symbol_t.Property_target_symbol
                (Property_target_symbol_t.Property_operand_body_target_created_symbol
                  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
                    "Poi_h"))),
             [2; 2; 2; 28; 13]),
           [Tree_t.Leaf
             (Property_symbol_t.Property_fence_symbol
               (Property_fence_symbol_t.Property_operator_symbol
                 (Property_operator_symbol_t.Property_operator_creation
                   (Operator_creation_symbol_t.Operator_endomorphism_symbol
                     (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                       (Operator_transformation_symbol_t.Operator_transformation_homothety
                         "Hom_b_2")),
                    [3; 28; 12]))),
              [1; 2; 2; 2; 28; 13]);
            Tree_t.Leaf
             (Property_symbol_t.Property_fence_symbol
               (Property_fence_symbol_t.Property_set_body_operand_external_symbol
                 (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
                   (Figure_symbol_t.Figure_field_symbol
                     (Figure_field_symbol_t.Figure_fence_symbol
                       (Figure_fence_symbol_t.Figure_point_symbol
                         (Figure_point_symbol_t.Figure_point_constructor
                           "T_A"))),
                    [1; 3; 1; 6]))),
              [2; 2; 2; 2; 28; 13])])])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let tag_pro_fat = List.find (fun (s, i) -> Property_symbol_v.is_property_operand_target_created_symbol_off_property_symbol s) tag_pro_l;;

test_number 5 (
(tag_pro_fat : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_t"))),
   [2; 2; 28; 13])
);;

open Property_operand_body_target_created_envelope_v;;

(* Target_created Tag Poi_t = (Tra_bc) Poi_h (Hom_b_2 ) Poi_a *)

let tag_ptc = Tag_v.map_entity Property_symbol_v.property_operand_target_created_symbol_off_property_symbol tag_pro_fat;;

test_number 6 (
(tag_ptc : Property_operand_body_target_created_symbol_t.property_operand_target_created_symbol Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
    "Poi_t",
   [2; 2; 28; 13])
);;

(* let builder_tag_list tag_ptc = *)

let tag_pro_tcr = Property_operand_body_target_created_tag_v.property_tag_of_property_operand_target_created_tag tag_ptc;;

test_number 7 (
(tag_pro_tcr : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_t"))),
   [2; 2; 28; 13])
);;

let tag_pro_tcr_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide
      tag_pro_tcr;;

test_number 8 (
(tag_pro_tcr_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_target_symbol
        (Property_target_symbol_t.Property_operand_body_target_created_symbol
          (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
            "Poi_t"))),
     [2; 2; 28; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_endomorphism_symbol
             (Operator_endomorphism_symbol_t.Operator_transformation_symbol
               (Operator_transformation_symbol_t.Operator_transformation_translation
                 "Tra_bc")),
            [4; 28; 12]))),
      [1; 2; 2; 28; 13]);
    Tree_t.Inner
     ((Property_symbol_t.Property_body_symbol
        (Property_body_symbol_t.Property_target_symbol
          (Property_target_symbol_t.Property_operand_body_target_created_symbol
            (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
              "Poi_h"))),
       [2; 2; 2; 28; 13]),
     [Tree_t.Leaf
       (Property_symbol_t.Property_fence_symbol
         (Property_fence_symbol_t.Property_operator_symbol
           (Property_operator_symbol_t.Property_operator_creation
             (Operator_creation_symbol_t.Operator_endomorphism_symbol
               (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                 (Operator_transformation_symbol_t.Operator_transformation_homothety
                   "Hom_b_2")),
              [3; 28; 12]))),
        [1; 2; 2; 2; 28; 13]);
      Tree_t.Leaf
       (Property_symbol_t.Property_fence_symbol
         (Property_fence_symbol_t.Property_set_body_operand_external_symbol
           (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
             (Figure_symbol_t.Figure_field_symbol
               (Figure_field_symbol_t.Figure_fence_symbol
                 (Figure_fence_symbol_t.Figure_point_symbol
                   (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
              [1; 3; 1; 6]))),
        [2; 2; 2; 2; 28; 13])])])
);;

let tag_pro_bui_l = Tree_v.topson_node_list_off_tree tag_pro_tcr_st;;

test_number 9 (
( tag_pro_bui_l :
    (Property_symbol_t.property_symbol, Sole_index_t.sole_index)
    Doublet_list_t.doublet_list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_endomorphism_symbol
           (Operator_endomorphism_symbol_t.Operator_transformation_symbol
             (Operator_transformation_symbol_t.Operator_transformation_translation
               "Tra_bc")),
          [4; 28; 12]))),
    [1; 2; 2; 28; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_target_symbol
       (Property_target_symbol_t.Property_operand_body_target_created_symbol
         (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
           "Poi_h"))),
    [2; 2; 2; 28; 13])]
);;

test_number 10 (
tag_pro_bui_l = Property_operand_body_target_created_container_v.builder_tag_list tag_ptc
);;

(* let operator_creation_tag tag_ptc = *)

let sym_pro_bui_l = List.map 
      Tag_v.entity_off_tag 
      tag_pro_bui_l;;

test_number 11 (
(sym_pro_bui_l : Property_symbol_t.property_symbol list ) =
  [Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operator_symbol
      (Property_operator_symbol_t.Property_operator_creation
        (Operator_creation_symbol_t.Operator_endomorphism_symbol
          (Operator_endomorphism_symbol_t.Operator_transformation_symbol
            (Operator_transformation_symbol_t.Operator_transformation_translation
              "Tra_bc")),
         [4; 28; 12])));
   Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_h")))]
);;

(* Operator *)

let sym_pro_opr = List_v.only_element_of_predicate_off_list 
    Property_symbol_v.is_property_operator_creation 
    sym_pro_bui_l;;

test_number 12 (
(sym_pro_opr : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation
       (Operator_creation_symbol_t.Operator_endomorphism_symbol
         (Operator_endomorphism_symbol_t.Operator_transformation_symbol
           (Operator_transformation_symbol_t.Operator_transformation_translation
             "Tra_bc")),
        [4; 28; 12])))
);;

let sym_por = (* Coerce Down *)
  Property_symbol_v.property_operator_symbol_off_property_symbol 
    sym_pro_opr;;

test_number 13 (
(sym_por : Property_operator_symbol_t.property_operator_symbol ) =
 Property_operator_symbol_t.Property_operator_creation
   (Operator_creation_symbol_t.Operator_endomorphism_symbol
     (Operator_endomorphism_symbol_t.Operator_transformation_symbol
       (Operator_transformation_symbol_t.Operator_transformation_translation
         "Tra_bc")),
    [4; 28; 12])
);;

let tag_opr = Property_operator_symbol_v.tag_off sym_por;;

test_number 14 (
(tag_opr : Operator_symbol_t.operator_symbol Tag_t.tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_creation_symbol
      (Operator_creation_symbol_t.Operator_endomorphism_symbol
        (Operator_endomorphism_symbol_t.Operator_transformation_symbol
          (Operator_transformation_symbol_t.Operator_transformation_translation
            "Tra_bc")))),
   [4; 28; 12])
);; 

let tag_ocr = Tag_v.map_entity (* Coerce Down *) 
    Operator_symbol_v.operator_creation_symbol_off_operator_symbol
    tag_opr;;

test_number 15 (
(tag_ocr : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_endomorphism_symbol
    (Operator_endomorphism_symbol_t.Operator_transformation_symbol
      (Operator_transformation_symbol_t.Operator_transformation_translation
        "Tra_bc")),
   [4; 28; 12])
);;

let tag_ocr = Property_operand_body_target_created_container_v.operator_creation_tag tag_ptc;;

test_number 16 (
(tag_ocr : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_endomorphism_symbol
    (Operator_endomorphism_symbol_t.Operator_transformation_symbol
      (Operator_transformation_symbol_t.Operator_transformation_translation
        "Tra_bc")),
   [4; 28; 12])
);;

(* let property_as_operand_tag tag_ptc = *)

(* Operand *)

let tag_pro_opd = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> not (Property_symbol_v.is_property_operator_creation s) )
      tag_pro_bui_l;;

test_number 17 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_h"))),
   [2; 2; 2; 28; 13])
);;

let tag_pro_opd = Property_operand_body_target_created_container_v.property_as_operand_tag tag_ptc;;

test_number 18 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
 (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_h"))),
   [2; 2; 2; 28; 13])
);;

(* Envelope Poi_t = (Tra_bc) Poi_h (Hom_b_2) Poi_a *)

let env_ptc = build tag_ptc;;

test_number 19 (
(env_ptc :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((2.58493941422821148e-26,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (5e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-3.0000000000000005e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

