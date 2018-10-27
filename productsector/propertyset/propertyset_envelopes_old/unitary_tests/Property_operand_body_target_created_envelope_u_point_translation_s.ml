open Make_test_v;;

testing "Property_operand_body_target_created_envelope_v with
    Property_operand_body_target_created_envelope_u_point_translation_s.ml";;

(* Deleting Registers *)









(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_operand_body_target_created_envelope_u_point_translation_s.ml";; 

*)

(* Input File *)

let nam_ibo = "Point_translation_s.inp";;
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
(tag_ecr :
  Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_input_file
    "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_translation_s.inp",
   [52; 4])
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
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_translation_s.inp")),
    [52; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Meter)),
    [1; 52; 4]);
   (Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_angle_symbol
         Elementary_units_angle_symbol_t.Radian)),
    [2; 52; 4])]
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
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_translation_s.inp"),
       [52; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_a"))),
         [1; 52; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 52; 12]))),
          [1; 1; 52; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_body_operand_external_symbol
             (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_field_symbol
                 (Figure_field_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
                [1; 3; 1; 6]))),
          [2; 1; 52; 13])]);
      Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_t"))),
         [2; 52; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_t", [2; 52; 12]))),
          [1; 2; 52; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_operand_body_target_created_symbol
                (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
                  "Poi_t"))),
           [2; 2; 52; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_creation
                 (Operator_creation_symbol_t.Operator_endomorphism_symbol
                   (Operator_endomorphism_symbol_t.Operator_transformation_symbol
                     (Operator_transformation_symbol_t.Operator_transformation_translation
                       "Tra_s")),
                  [3; 52; 12]))),
            [1; 2; 2; 52; 13]);
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_set_body_operand_external_symbol
               (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
                 (Figure_symbol_t.Figure_field_symbol
                   (Figure_field_symbol_t.Figure_fence_symbol
                     (Figure_fence_symbol_t.Figure_point_symbol
                       (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
                  [1; 3; 1; 6]))),
            [2; 2; 2; 52; 13])])])])])
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
   [2; 2; 52; 13])
);;

open Property_operand_body_target_created_envelope_v;;

(* Target_created Tag Poi_t = (Tra_bc) Poi_a *)

let tag_ptc = Tag_v.map_entity Property_symbol_v.property_operand_target_created_symbol_off_property_symbol tag_pro_fat;;

test_number 6 (
(tag_ptc : Property_operand_body_target_created_symbol_t.property_operand_target_created_symbol Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
    "Poi_t",
   [2; 2; 52; 13])
);;

(* Operand *)

let tag_pro_opd = Property_operand_body_target_created_container_v.property_as_operand_tag tag_ptc;;

test_number 7 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_fence_symbol
            (Figure_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
         [1; 3; 1; 6]))),
   [2; 2; 2; 52; 13])
);;

(* Envelope Poi_t *)

let env_ptc = Property_operand_body_target_created_envelope_v.build tag_ptc;;

test_number 8 (
(env_ptc :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.29246970711410574e-26,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (3.0000000000000005e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-1.00000000000000029e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

(** ----------------------- {6 Debugging} ---------------------------- *)

(* Operator *)

let tag_ocr = Property_operand_body_target_created_container_v.operator_creation_tag tag_ptc;;

test_number 9 (
(tag_ocr : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_endomorphism_symbol
    (Operator_endomorphism_symbol_t.Operator_transformation_symbol
      (Operator_transformation_symbol_t.Operator_transformation_translation
        "Tra_s")),
   [3; 52; 12])
);;

let tag_ocr_tra = tag_ocr;;

let nam_ivn_tra = Operator_creation_tag_v.string_off tag_ocr;;

test_number 10 (
(nam_ivn_tra : string ) = 
"Tra_s"
);;

(* let property_operand_target_created_envelope_of_translation_of_operand_external tag_ocr_tra tag_pro_opd = *)

(* Operand Poi_a *)

let mch_opd_tl = 
    Measure_tools_v.measure_canonical_homogeneous_tuple_list_of_operand_external_tag 
      tag_pro_opd;;

test_number 11 (
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

let flo_opd_tl = List.map (Tuple_v.map Measure_v.float_off_measure) mch_opd_tl;;

test_number 12 (
(flo_opd_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (1.00000000000000017e-10, 
     2.00000000000000033e-10,
     -2.00000000000000033e-10)]
);;

(* Translation Segment S *)

let nam_ivn_seg = 
    Segment_input_variable_name_by_operator_input_variable_name_provider_v.provide 
      nam_ivn_tra;;

test_number 13 (
(nam_ivn_seg : string ) = 
"Seg_s"
);;

(* let measure_canonical_tuple_duo_of_segment_input_variable_name nam_ivn_seg = *)

let mch_seg_td = 
    Measure_tools_v.measure_canonical_homogeneous_tuple_duo_of_segment_input_variable_name 
      nam_ivn_seg ;;

test_number 14 (
( mch_seg_td :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple Duo_t.duo ) =
  (Tuple_t.Trio
    ((1e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)),
   Tuple_t.Trio
    ((0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (1e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (1e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)))
);;

let flo_seg_td = Duo_v.map (Tuple_v.map Measure_v.float_off_measure) mch_seg_td;;

test_number 15 (
(flo_seg_td : float Tuple_t.tuple Duo_t.duo ) =
(Tuple_t.Trio (1e-10, 0., 0.), 
 Tuple_t.Trio (0., 1e-10, 1e-10))
);;

let flo_tra_tl = 
  Float_operator_v.translation_tuple_list_of_operand_as_float_tuple_list_of_segment_as_float_tuple_duo
      flo_opd_tl 
      flo_seg_td;;

test_number 16 (
( flo_tra_tl : float Tuple_t.tuple list ) =
  [Tuple_t.Trio
    (1.29246970711410574e-26, 
     3.0000000000000005e-10,
     -1.00000000000000029e-10)]
);;

let sym_uni = Measure_v.canonical_elementary_units_symbol_as_length;;

test_number 17 (
( sym_uni : Elementary_units_symbol_t.elementary_units_symbol ) =
  Elementary_units_symbol_t.Elementary_units_length_symbol
   Elementary_units_length_symbol_t.Meter
);;

let env_ptc = List.map (Tuple_v.map (fun f -> Measure_v.make f sym_uni)) flo_tra_tl;;

test_number 18 (
(env_ptc :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.29246970711410574e-26,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (3.0000000000000005e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-1.00000000000000029e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter))]
);;

test_number 19 (
env_ptc = build tag_ptc
);;

