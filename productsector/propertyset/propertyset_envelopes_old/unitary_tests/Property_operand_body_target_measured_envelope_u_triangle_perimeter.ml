open Make_test_v;;

testing "Property_operand_body_target_measured_envelope_v with
    Property_operand_body_target_measured_envelope_u_triangle_perimeter.ml";;

(* Deleting Registers *)








(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_operand_body_target_measured_envelope_u_triangle_perimeter.ml";;

*)

(* Input File *)

let nam_ibo = "Print_perimeter_triangle_t.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let sym_loi_t = Localinput_symbol_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 1 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

open Property_operand_body_target_measured_envelope_v;;

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
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_perimeter_triangle_t.inp"),
       [43; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Perimeter_t"))),
         [1; 43; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Perimeter_t",
                [1; 43; 12]))),
          [1; 1; 43; 13]);
        Tree_t.Inner
         ((Property_symbol_t.Property_body_symbol
            (Property_body_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_operand_body_target_measured_symbol
                (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
                  "Perimeter_t"))),
           [2; 1; 43; 13]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_creation
                 (Operator_creation_symbol_t.Operator_measure_symbol
                   (Operator_measure_symbol_t.Operator_measure_length
                     "Per_tri"),
                  [2; 43; 12]))),
            [1; 2; 1; 43; 13]);
          Tree_t.Leaf
           (Property_symbol_t.Property_fence_symbol
             (Property_fence_symbol_t.Property_set_body_operand_external_symbol
               (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
                 (Figure_symbol_t.Figure_field_symbol
                   (Figure_field_symbol_t.Figure_body_symbol
                     (Figure_body_symbol_t.Figure_triangle_symbol
                       (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                         (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                           "T")))),
                  [3; 1; 6]))),
            [2; 2; 1; 43; 13])])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 3 (
(tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "property"),
    [13]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_input_file
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_perimeter_triangle_t.inp"),
    [43; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_target_symbol
       (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
         (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
           "Perimeter_t"))),
    [1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Perimeter_t", [1; 43; 12]))),
    [1; 1; 43; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_target_symbol
       (Property_target_symbol_t.Property_operand_body_target_measured_symbol
         (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
           "Perimeter_t"))),
    [2; 1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
          [2; 43; 12]))),
    [1; 2; 1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_triangle_symbol
               (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                 (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                   "T")))),
          [3; 1; 6]))),
    [2; 2; 1; 43; 13])]
);;

let tag_pro_fat = List.find (fun (s, i) -> Property_symbol_v.is_property_operand_target_measured_symbol_off_property_symbol s) tag_pro_l;;

test_number 4 (
(tag_pro_fat : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_measured_symbol
        (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
          "Perimeter_t"))),
   [2; 1; 43; 13])
);;

(* Target_measured Tag *)

let tag_ptm = Tag_v.map_entity Property_symbol_v.property_operand_target_measured_symbol_off_property_symbol tag_pro_fat;;

test_number 5 (
(tag_ptm : Property_operand_body_target_measured_symbol_t.property_operand_target_measured_symbol Tag_t.tag ) =
  (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_elementary
    "Perimeter_t",
   [2; 1; 43; 13])
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
            "Perimeter_t"))),
     [2; 1; 43; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_measure_symbol
             (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
            [2; 43; 12]))),
      [1; 2; 1; 43; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_body_operand_external_symbol
         (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_body_symbol
               (Figure_body_symbol_t.Figure_triangle_symbol
                 (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                   (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                     "T")))),
            [3; 1; 6]))),
      [2; 2; 1; 43; 13])])
);;

(* open Property_any_category_by_sole_index_extractor_v;; *)
(* main_register_dump ();; *)

(* Register_v.is_empty main_register;; *)

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
           (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
          [2; 43; 12]))),
    [1; 2; 1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_triangle_symbol
               (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                 (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                   "T")))),
          [3; 1; 6]))),
    [2; 2; 1; 43; 13])]
);;

let tag_pro_nor_l = Tree_v.noroot_node_list_off_tree tag_pro_fat_st;;

test_number 8 (
( tag_pro_nor_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
          [2; 43; 12]))),
    [1; 2; 1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_triangle_symbol
               (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                 (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                   "T")))),
          [3; 1; 6]))),
    [2; 2; 1; 43; 13])]
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
          "Perimeter_t"))),
   [2; 1; 43; 13])
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
            "Perimeter_t"))),
     [2; 1; 43; 13]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_creation
           (Operator_creation_symbol_t.Operator_measure_symbol
             (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
            [2; 43; 12]))),
      [1; 2; 1; 43; 13]);
    Tree_t.Leaf
     (Property_symbol_t.Property_fence_symbol
       (Property_fence_symbol_t.Property_set_body_operand_external_symbol
         (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
           (Figure_symbol_t.Figure_field_symbol
             (Figure_field_symbol_t.Figure_body_symbol
               (Figure_body_symbol_t.Figure_triangle_symbol
                 (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                   (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                     "T")))),
            [3; 1; 6]))),
      [2; 2; 1; 43; 13])])
);;

let tag_pro_bui_l = Tree_v.topson_node_list_off_tree tag_pro_tme_st;;

test_number 11 (
( tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_creation
         (Operator_creation_symbol_t.Operator_measure_symbol
           (Operator_measure_symbol_t.Operator_measure_length "Per_tri"),
          [2; 43; 12]))),
    [1; 2; 1; 43; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_body_symbol
             (Figure_body_symbol_t.Figure_triangle_symbol
               (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                 (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                   "T")))),
          [3; 1; 6]))),
    [2; 2; 1; 43; 13])]
);;

(* Main recursion *)

(* Operator *)

let tag_ome = operator_measure_tag_of_property_operand_target_measured_tag tag_ptm;;

test_number 12 (
(tag_ome : Operator_measure_symbol_t.operator_measure_symbol Tag_t.tag ) =
  (Operator_measure_symbol_t.Operator_measure_length "Per_tri", [2; 43; 12])
);;

(* Operand *)

let tag_pro_opd = Property_operand_body_target_measured_container_v.property_as_operand_tag tag_ptm;;

test_number 13 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_body_symbol
            (Figure_body_symbol_t.Figure_triangle_symbol
              (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                  "T")))),
         [3; 1; 6]))),
   [2; 2; 1; 43; 13])
);;

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

test_number 14 (
( sym_pro_opd : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_fence_symbol
   (Property_fence_symbol_t.Property_set_body_operand_external_symbol
     (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_body_symbol
           (Figure_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                 "T")))),
        [3; 1; 6])))
);;

(* let property_operand_target_measured_envelope_of_operand_external_of_operator_tag tag_pro_opd tag_ome *)

let sym_ome = Tag_v.entity_off_tag tag_ome;;

test_number 15 (
(sym_ome : Operator_measure_symbol_t.operator_measure_symbol ) =
  Operator_measure_symbol_t.Operator_measure_length "Per_tri"
);;

let nam_ivn_len = Operator_measure_symbol_v.string_off sym_ome;;

test_number 16 (
(nam_ivn_len : string ) = 
"Per_tri"
);;

(* let property_operand_target_measured_envelope_of_length_of_operand_external nam_ivn_len tag_pro_opd *)

let sym_pox = 
  Property_symbol_v.property_operand_external_symbol_off_property_symbol  
    sym_pro_opd;;

test_number 17 (
(sym_pox :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol ) =
  Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_body_symbol
       (Figure_body_symbol_t.Figure_triangle_symbol
         (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
           (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
             "T")))),
    [3; 1; 6])
);;

let tag_fig_dba = Property_set_body_operand_external_symbol_v.figure_tag_off sym_pox;;

test_number 18 (
(tag_fig_dba : Figure_tag_t.figure_tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_body_symbol
      (Figure_body_symbol_t.Figure_triangle_symbol
        (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
          (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
            "T")))),
   [3; 1; 6])
);;

let mea_tl = Figure_envelope_v.figure_point_measure_tuple_list_off_figure_tag tag_fig_dba;;

test_number 19 (
( mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer));
   Tuple_t.Trio
    ((0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer));
   Tuple_t.Trio
    ((0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer))]
);;

let mch_tl = List.map
	Elementary_coordinate_tuple_measure_conversions_v.measure_canonical_homogeneous_tuple_of_measure_tuple
	mea_tl;;

let mch_td = Trio_v.trio_of_list mch_tl;;

test_number 20 (
( mch_td :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple Trio_t.trio ) =
  (Tuple_t.Trio
    ((1.00000000000000017e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)),
   Tuple_t.Trio
    ((0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)),
   Tuple_t.Trio
    ((2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (0.,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter),
     (-2.00000000000000033e-10,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Meter)))
);;

(* Envelope *)

let env_ptm = build tag_ptm;;

test_number 21 (
(env_ptm :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Singlet_t.singlet ) =
  Singlet_t.Singlet
   (6.47213595499958064e-10,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Meter)
);;

let mea_ptm = Singlet_v.element_off_singlet env_ptm;;
let flo_ptm = Measure_v.float_off_measure mea_ptm;;

test_number 22 (
(flo_ptm : float) = 
6.47213595499958064e-10
);;

let perimeter  = 2. +. (2. *. sqrt (5.)) ;;

test_number 23 (
(perimeter : float ) =
6.47213595499958
);;
