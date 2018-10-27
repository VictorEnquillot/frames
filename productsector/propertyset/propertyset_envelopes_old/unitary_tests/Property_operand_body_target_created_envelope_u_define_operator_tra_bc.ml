open Make_test_v;;

testing "Property_operand_body_target_created_envelope_v with
        Property_operand_body_target_created_envelope_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_operand_body_target_created_envelope_u_define_operator_tra_bc.ml";;

*)

open Property_operand_body_target_created_envelope_v;;

let nam_ibo = "Define_operator_tra_bc";;
let nam_iba = "local";;

let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

test_number 1 (
(tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "define_operator_tra_bc")),
    [41; 1; 18; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Len_bc")))),
    [1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Len_bc")))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Len_bc")))),
    [2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Ope_len")))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);;

let tag_pro_ptm = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Property_symbol_v.is_property_operand_body_target_measured_symbol_off_property_symbol s) 
    tag_pro_l;;

test_number 2 (
( tag_pro_ptm : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
          (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
            "Len_bc")))),
   [2; 1; 41; 1; 18; 6])
);;

(* Target_measured Tag *)

let tag_ptm = Property_operand_body_target_measured_tag_v.property_operand_body_target_measured_tag_off_property_tag tag_pro_ptm;;

test_number 3 (
( tag_ptm :
  Property_operand_body_target_measured_symbol_t.property_operand_body_target_measured_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
    "Len_bc",
   [2; 1; 41; 1; 18; 6])
);;

let tag_pop = Property_operand_body_target_measured_container_v.property_operand_tag_of_tag tag_ptm ;;

test_number 4 (
(tag_pbo : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_fence_symbol
    (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
      (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
        "Seg_bc")),
   [2; 2; 1; 41; 1; 18; 6])
);;

let tag_pro_fat_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide
      tag_pro_fat;;

test_number 6 (
(tag_pro_fat_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_target_symbol
        (Property_target_symbol_t.Property_operand_body_target_measured_symbol
          (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
            "Len_bc"))),
     [2; 1; 48; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_measure_symbol
             (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
            [2; 48; 12]))),
      [1; 2; 1; 48; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_body_operand_external_symbol
         (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_body_symbol
               (Figure_body_symbol_t.Figure_segment_symbol
                 (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
            [1; 1; 6]))),
      [2; 2; 1; 48; 13])])
);;

let tag_pro_son_l =
  Property_any_category_by_sole_index_extractor_v.son_property_tag_list_of_string_predicate_of_father_tag 
    "is_property_fence_symbol_off_property_symbol"
    tag_pro_fat;;
    
test_number 7 (
( tag_pro_son_l :
  (Property_symbol_t.property_symbol, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
          [2; 48; 12]))),
    [1; 2; 1; 48; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_segment_symbol
               (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
          [1; 1; 6]))),
    [2; 2; 1; 48; 13])]
);;

let tag_pro_nor_l = Tree_v.noroot_node_list_off_tree tag_pro_fat_st;;

test_number 8 (
( tag_pro_nor_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
          [2; 48; 12]))),
    [1; 2; 1; 48; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_segment_symbol
               (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
          [1; 1; 6]))),
    [2; 2; 1; 48; 13])]
);;

(** {6 Property_builder_tag list} *)

let tag_pro_tme = (* Coerce Up *)
    Tag_v.map_entity Property_symbol_v.property_symbol_of_property_operand_target_measured_symbol
      tag_ptm;;

test_number 9 (
(tag_pro_tme : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_measured_symbol
        (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
          "Len_bc"))),
   [2; 1; 48; 13])
);;

let tag_pro_tme_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide
      tag_pro_tme;;

test_number 10 (
( tag_pro_tme_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
 Tree_t.Inner
   ((Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_target_symbol
        (Property_target_symbol_t.Property_operand_body_target_measured_symbol
          (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
            "Len_bc"))),
     [2; 1; 48; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_measure_symbol
             (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
            [2; 48; 12]))),
      [1; 2; 1; 48; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_body_operand_external_symbol
         (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_body_symbol
               (Figure_body_symbol_t.Figure_segment_symbol
                 (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
            [1; 1; 6]))),
      [2; 2; 1; 48; 13])])
);;

let tag_pro_bui_l = Tree_v.topson_node_list_off_tree tag_pro_tme_st;;

test_number 11 (
( tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
          [2; 48; 12]))),
    [1; 2; 1; 48; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_segment_symbol
               (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
          [1; 1; 6]))),
    [2; 2; 1; 48; 13])]
);;

(* Main recursion *)

(* Operator *)

let tag_ome = operator_measure_tag_of_property_operand_target_measured_tag tag_ptm;;

test_number 12 (
(tag_ome : Operator_measure_symbol_t.operator_measure_symbol Tag_t.tag ) =
  (Operator_measure_symbol_t.Operator_measure_length "Len_seg", [2; 48; 12])
);;

(* let operator_creation_tag tag_ptm = *)

let sym_pro_bui_l = List.map 
      Tag_v.entity_off_tag 
      tag_pro_bui_l;;

test_number 13 (
(sym_pro_bui_l : Property_symbol_t.property_symbol list ) =
  [Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_operator_symbol
      (Property_operator_symbol_t.Property_operator_creation
        (Operator_creation_symbol_t.Operator_measure_symbol
          (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
         [2; 48; 12])));
   Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_body_symbol
            (Figure_body_symbol_t.Figure_segment_symbol
              (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
         [1; 1; 6])))]
);;

let sym_pro_opr = List_v.only_element_of_predicate_off_list Property_symbol_v.is_property_operator_creation sym_pro_bui_l;;

test_number 14 (
(sym_pro_opr : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation
       (Operator_creation_symbol_t.Operator_measure_symbol
         (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
        [2; 48; 12])))
);;

let sym_pop = Property_symbol_v.property_operator_symbol_off_property_symbol sym_pro_opr;;

test_number 15 (
(sym_pop : Property_operator_symbol_t.property_operator_symbol ) =
  Property_operator_symbol_t.Property_operator_creation
   (Operator_creation_symbol_t.Operator_measure_symbol
     (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
    [2; 48; 12])
);;

let tag_ope = Property_operator_symbol_v.tag_off sym_pop;;

test_number 16 (
(tag_ope : Operator_symbol_t.operator_symbol Tag_t.tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_creation_symbol
      (Operator_creation_symbol_t.Operator_measure_symbol
        (Operator_measure_symbol_t.Operator_measure_length "Len_seg"))),
   [2; 48; 12])
);; 

let tag_ocr = Tag_v.map_entity (* Coerce Down *) 
    Operator_symbol_v.operator_creation_symbol_off_operator_symbol
    tag_ope;;

test_number 17 (
(tag_ocr : Operator_creation_symbol_t.operator_creation_symbol Tag_t.tag ) =
  (Operator_creation_symbol_t.Operator_measure_symbol
    (Operator_measure_symbol_t.Operator_measure_length "Len_seg"),
   [2; 48; 12])
);;

test_number 18 (
tag_ocr = Property_operand_body_target_measured_container_v.operator_creation_tag tag_ptm
);;

(* Operand *)

let tag_pro_opd = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> not (Property_symbol_v.is_property_operator_creation s) )
      tag_pro_bui_l;;

test_number 19 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_body_symbol
            (Figure_body_symbol_t.Figure_segment_symbol
              (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
         [1; 1; 6]))),
   [2; 2; 1; 48; 13])
);;

test_number 20 (
tag_pro_opd = Property_operand_body_target_measured_container_v.property_as_operand_tag tag_ptm
);;

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

let sym_pox = 
  Property_symbol_v.property_operand_external_symbol_off_property_symbol  
    sym_pro_opd;;

test_number 21 (
(sym_pox :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol ) =
  Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_body_symbol
       (Figure_body_symbol_t.Figure_segment_symbol
         (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
    [1; 1; 6])
);;

let tag_fig_dba = Property_set_body_operand_external_symbol_v.figure_tag_off sym_pox;;

test_number 22 (
(tag_fig_dba : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
   [1; 1; 6])
);;

let mea_tl = Figure_envelope_v.figure_point_measure_tuple_list_off_figure_tag tag_fig_dba;;

test_number 23 (
( mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom),
     (0.,
      Elementary_units_symbol_t.Elementary_units_angle_symbol
       Elementary_units_angle_symbol_t.Degree),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom));
   Tuple_t.Trio
    ((1.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom),
     (90.,
      Elementary_units_symbol_t.Elementary_units_angle_symbol
       Elementary_units_angle_symbol_t.Degree),
     (1.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Angstrom))]
);;

let mch_tl = List.map
	Elementary_coordinate_tuple_measure_conversions_v.measure_canonical_homogeneous_tuple_of_measure_tuple
	mea_tl;;

let mch_td = Duo_v.duo_of_list mch_tl;;

test_number 24 (
(mch_td :
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
    ((6.12303176911188641e-27,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (1e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (1e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)))
);;

(* Envelope Singlet *)

let env_ptm = build tag_ptm;;

test_number 25 (
(env_ptm :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Singlet_t.singlet ) =
  Singlet_t.Singlet
   (1.73205080756887727e-10,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Meter)
);;

let mea_ptm = Singlet_v.element_off_singlet env_ptm;;
let flo_ptm = Measure_v.float_off_measure mea_ptm;;

test_number 26 (
(flo_ptm : float) = 
(sqrt 3.) *. 1.e-10
);;
