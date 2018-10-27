open Make_test_v;;

testing "Property_set_body_target_implicit_unit_envelope_v with
    Property_set_body_target_implicit_unit_envelope_u_point_print.ml";;

(* Deleting Registers *)







(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_set_body_target_implicit_unit_envelope_u_point_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_point_t_a.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_ibo;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_loi_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

let sym_n_idx_dom_l = Domain_symbol_list_v.domain_symbol_n_index_list ();;

test_number 1 (
(sym_n_idx_dom_l : (Domain_symbol_t.domain_symbol * int) list ) =
  [(Domain_symbol_t.Chemical, 1); (Domain_symbol_t.Common, 2);
   (Domain_symbol_t.Database "some string", 3);
   (Domain_symbol_t.Elementary, 4); (Domain_symbol_t.Fake, 5);
   (Domain_symbol_t.Figure, 6); (Domain_symbol_t.Generator, 7);
   (Domain_symbol_t.Input "some string", 8); (Domain_symbol_t.Logic, 9);
   (Domain_symbol_t.Music, 10); (Domain_symbol_t.Natural, 11);
   (Domain_symbol_t.Operator, 12); (Domain_symbol_t.Property, 13);
   (Domain_symbol_t.Skeleton, 14)]
);;

let soi_dom = Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up "operator" "" [];;

test_number 2 (
(soi_dom :Sole_index_t.sole_index ) = 
[12]
);;

let tag_pro_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 3 (
( tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
 Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_domain "property"),
     [13]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_input_file
          "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_point_t_a.inp"),
       [29; 13]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_body_symbol
          (Property_body_symbol_t.Property_target_symbol
            (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
              (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
                "Poi_a"))),
         [1; 29; 13]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
          [1; 1; 29; 13]);
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_body_operand_external_symbol
             (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_field_symbol
                 (Figure_field_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
                [1; 3; 1; 6]))),
          [2; 1; 29; 13])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_pro = List.find (fun (s, i) -> Property_symbol_v.is_property_target_implicit_unit_constructor s) tag_pro_l;;

test_number 4 (
(tag_pro : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
        (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
          "Poi_a"))),
   [1; 29; 13])
);;

open Property_set_body_target_implicit_unit_envelope_v;;

let tag_ptu = Property_set_body_target_implicit_unit_tag_v.property_target_implicit_unit_tag_off_property_tag tag_pro;;

test_number 5 (
( tag_ptu :
  Property_set_body_target_implicit_unit_symbol_t.property_target_implicit_unit_symbol Tag_t.tag ) =
  (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor "Poi_a",
   [1; 29; 13])
);;

let tag_pro_bui_l = Property_set_body_target_implicit_unit_container_v.builder_tag_list tag_ptu;;

test_number 6 (
(tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))),
    [1; 1; 29; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_fence_symbol
             (Figure_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
          [1; 3; 1; 6]))),
    [2; 1; 29; 13])]
);;

let sym_dom = Domain_symbol_list_v.domain_symbol_of_list_index 13;;

test_number 7 (
(sym_dom : Domain_symbol_t.domain_symbol ) = 
 Domain_symbol_t.Property
);;

(* Operand Poi_a T_A *)

let tag_pro_opd = Property_set_body_target_implicit_unit_container_v.property_as_operand_tag tag_ptu;;

test_number 8 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
        (Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_fence_symbol
            (Figure_fence_symbol_t.Figure_point_symbol
              (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
         [1; 3; 1; 6]))),
   [2; 1; 29; 13])
);;

(* Operator Print "Poi_a" *)

let tag_oun = Property_set_body_target_implicit_unit_container_v.operator_tounit_tag tag_ptu;;

test_number 9 (
(tag_oun : Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12])
);;

(* ----------------------------------- Debugging --------------------------------------- *)

(* let property_operand_external_envelope tag_ptu *)

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;
let sym_pox_opd = Property_symbol_v.property_operand_external_symbol_off_property_symbol sym_pro_opd;;

test_number 10 (
( sym_pox_opd :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol ) =
  Property_set_body_operand_external_symbol_t.Property_set_body_operand_figure_tag
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_fence_symbol
       (Figure_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
    [1; 3; 1; 6])
);;

let tag_fig = Property_set_body_operand_external_symbol_v.figure_tag_off sym_pox_opd;;

test_number 11 (
(tag_fig : Figure_tag_t.figure_tag ) =
 (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_fence_symbol
      (Figure_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 3; 1; 6])
);;

let tag_fpo = Figure_point_tag_v.figure_point_tag_off_figure_tag tag_fig;;(* Coerce Down *)

test_number 12 (
(tag_fpo : Figure_point_symbol_t.figure_point_symbol Tag_t.tag ) =
  (Figure_point_symbol_t.Figure_point_constructor "T_A", [1; 3; 1; 6])
);;

let sof_fpo = Figure_point_tag_v.string_off tag_fpo;;
let soi_fpo = Tag_v.sole_index_off_tag tag_fpo;;
let sym_fcr = 
  Figure_any_category_by_sole_index_extractor_v.figure_createdby_symbol_off_sole_index
    soi_fpo;;

test_number 13 (
(sym_fcr : Figure_createdby_symbol_t.figure_createdby_symbol ) =
  Figure_createdby_symbol_t.Figure_database_symbol
   (Figure_database_symbol_t.Figure_database_constructor "db1")
);;

let mea_fpo_tl = Figure_point_envelope_v.measure_tuple_list_of_figure_point_tag tag_fpo;;

test_number 14 (
(mea_fpo_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer))]
);;

let mch_tl = property_operand_envelope tag_ptu;;

test_number 15 (
(mch_tl :
  (float, Elementary_units_symbol_t.elementary_units_symbol)
  Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_units_symbol_t.Elementary_units_length_symbol
       Elementary_units_length_symbol_t.Nanometer))]
);;

(* Envelope *)

let env_ptu = build tag_ptu;;

(*
Print "Poi_a":
 0.1 nanometer
 0.2 nanometer
 -0.2 nanometer
*)
