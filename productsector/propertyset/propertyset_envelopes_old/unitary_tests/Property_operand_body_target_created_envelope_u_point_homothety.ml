open Make_test_v;;

testing "Property_operand_body_target_created_envelope_v with
    Property_operand_body_target_created_envelope_u_point_homothety.ml";;

(* Deleting Registers *)









(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_operand_body_target_created_envelope_u_point_homothety.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let sym_loi_t = Localinput_symbol_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

let tag_pro_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a.inp"),
       [27; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_h"))),
         [1; 27; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12]))),
          [1; 1; 27; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_operand_body_target_created_symbol
                (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
                  "Poi_h"))),
           [2; 1; 27; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_creation
                 (Operator_creation_symbol_t.Operator_endomorphism_symbol
                   (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                     (Operator_transformation_symbol_t.Operator_transformation_homothety
                       "Hom_b_2")),
                  [2; 27; 12]))),
            [1; 2; 1; 27; 13]);
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_set_body_operand_external_symbol
               (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
                 (Figure_symbol_t.Figure_field_symbol
                   (Figure_field_symbol_t.Figure_fence_symbol
                     (Figure_fence_symbol_t.Figure_point_symbol
                       (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
                  [1; 3; 1; 6]))),
            [2; 2; 1; 27; 13])])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let tag_pro_fat = List.find (fun (s, i) -> Property_symbol_v.is_property_operand_target_created_symbol_off_property_symbol s) tag_pro_l;;

test_number 3 (
(tag_pro_fat : Property_symbol_t.property_symbol Tag_t.tag ) =
 (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_h"))),
   [2; 1; 27; 13])
);;

open Property_operand_body_target_created_envelope_v;;

(* Target_created Tag Point Poi_h *)

let tag_ptc = Property_operand_body_target_created_tag_v.property_operand_target_created_tag_off_property_tag tag_pro_fat;;

test_number 4 (
(tag_ptc : Property_operand_body_target_created_symbol_t.property_operand_target_created_symbol Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
    "Poi_h",
   [2; 1; 27; 13])
);;

(* Operator Hom_b_2 *)

let tag_oen = operator_endomorphism_tag_of_property_operand_target_created_tag tag_ptc;;

test_number 5 (
(tag_oen :
  Operator_endomorphism_symbol_t.operator_endomorphism_symbol Tag_t.tag ) =
  (Operator_endomorphism_symbol_t.Operator_transformation_symbol
    (Operator_transformation_symbol_t.Operator_transformation_homothety
      "Hom_b_2"),
   [2; 27; 12])
);;

(* Operand Poi_a aka T_A *)

let tag_pro_opd = 
  Property_operand_body_target_created_container_v.property_as_operand_tag  
    tag_ptc;;

test_number 6 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_fence_symbol
            (Figure_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
         [1; 3; 1; 6]))),
   [2; 2; 1; 27; 13])
);;

(* let property_operand_target_created_envelope_of_operand_external_of_operator_tag tag_pro_opd tag_oen *)

let sym_oen = Tag_v.entity_off_tag tag_oen;;

test_number 7 (
(sym_oen : Operator_endomorphism_symbol_t.operator_endomorphism_symbol ) =
  Operator_endomorphism_symbol_t.Operator_transformation_symbol
   (Operator_transformation_symbol_t.Operator_transformation_homothety
     "Hom_b_2")
);;

let nam_ivn_hom = Operator_endomorphism_symbol_v.string_off sym_oen;;

test_number 8 (
( nam_ivn_hom : string ) = 
"Hom_b_2"
);;

(* let property_operand_target_created_envelope_of_homothety_of_operand_external nam_ivn_hom tag_pro_opd *)

(* Operand External Measure list *)
let mch_opd_tl = 
    Measure_tools_v.measure_canonical_homogeneous_tuple_list_of_operand_external_tag 
      tag_pro_opd;;

let tag_ocr_hom = Property_operand_body_target_created_container_v.operator_creation_tag tag_ptc;;

test_number 9 (
(tag_ocr_hom : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_endomorphism_symbol
    (Operator_endomorphism_symbol_t.Operator_transformation_symbol
      (Operator_transformation_symbol_t.Operator_transformation_homothety
        "Hom_b_2")),
   [2; 27; 12])
);;

(* Scale_factor *)

let str_flo_sca = 
  Scale_factor_name_by_operator_input_variable_name_provider_v.provide 
    nam_ivn_hom;;

test_number 10 (
(str_flo_sca : string ) = 
"2.0"
);;

(* Center Figure B : (1, 0, 0) *)

let nam_ivn_cen = 
  Center_input_variable_name_by_operator_input_variable_name_provider_v.provide 
    nam_ivn_hom;;

test_number 11 (
(nam_ivn_cen : string ) = 
"Cen_b"
);;

let mch_cen_t = 
  Measure_tools_v.measure_canonical_homogeneous_tuple_of_center_input_variable_name 
    nam_ivn_cen;;

test_number 12 (
(mch_cen_t :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1e-10,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Meter),
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Meter),
    (0.,
     Elementary_units_symbol_t.Elementary_units_length_symbol
      Elementary_units_length_symbol_t.Meter))
);;

(* Operand Poi_a aka T_A *)

let tag_pro_opd = Property_operand_body_target_created_container_v.property_as_operand_tag tag_ptc;;

test_number 13 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_fence_symbol
            (Figure_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
         [1; 3; 1; 6]))),
   [2; 2; 1; 27; 13])
);;

let mch_opd_tl = 
    Measure_tools_v.measure_canonical_homogeneous_tuple_list_of_operand_external_tag 
      tag_pro_opd ;;

test_number 14 (
(mch_opd_tl :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.00000000000000017e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

(* Envelope Poi_h = (Hom_b_2) Poi_a *)

let env_ptc = build tag_ptc;;

test_number 15 (
( env_ptc :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.00000000000000029e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (4.00000000000000066e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-4.00000000000000066e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

