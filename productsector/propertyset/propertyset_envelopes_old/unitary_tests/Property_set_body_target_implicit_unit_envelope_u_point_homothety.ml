open Make_test_v;;

testing "Property_set_body_target_implicit_unit_envelope_v with
    Property_set_body_target_implicit_unit_envelope_u_point_homothety.ml";;

(* Deleting Registers *)







(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "true";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "true";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_set_body_target_implicit_unit_envelope_u_point_homothety.ml";; 

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

let tag_pro_fat = List.find (fun (s, i) -> Property_symbol_v.is_property_target_implicit_unit_symbol_off_property_symbol s) tag_pro_l;;

test_number 3 (
(tag_pro_fat : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_set_body_target_implicit_unit_symbol
        (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
          "Poi_h"))),
   [1; 27; 13])
);;

open Property_set_body_target_implicit_unit_envelope_v;;

(* Target_unit Tag Point Poi_h *)

let tag_ptu = Property_set_body_target_implicit_unit_tag_v.property_target_implicit_unit_tag_off_property_tag tag_pro_fat;;

test_number 4 (
(tag_ptu : Property_set_body_target_implicit_unit_symbol_t.property_target_implicit_unit_symbol Tag_t.tag ) =
  (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor "Poi_h",
   [1; 27; 13])
);;

let tag_pro_bui_l = Property_set_body_target_implicit_unit_container_v.builder_tag_list tag_ptu;;

test_number 5 (
(tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12]))),
    [1; 1; 27; 13]);
   (Property_symbol_t.Property_body_symbol
     (Property_body_symbol_t.Property_target_symbol
       (Property_target_symbol_t.Property_operand_body_target_created_symbol
         (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
           "Poi_h"))),
    [2; 1; 27; 13])]
);;

(* Operator Print "Poi_h" *)

let tag_oun = Property_set_body_target_implicit_unit_container_v.operator_tounit_tag tag_ptu;;

test_number 6 (
(tag_oun : Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Operator_tounit_symbol_t.Operator_print "Poi_h", [1; 27; 12])
);;

(* Operand Poi_h *)

let tag_pro_opd = Property_set_body_target_implicit_unit_container_v.property_as_operand_tag tag_ptu;;

test_number 7 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_body_symbol
    (Property_body_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
          "Poi_h"))),
   [2; 1; 27; 13])
);;

(* ----------------------------------- Debugging --------------------------------------- *)

(* let property_operand_created_envelope tag_ptu *)

let tag_pro_opd = Property_set_body_target_implicit_unit_container_v.property_as_operand_tag tag_ptu;;
let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

test_number 8 (
(sym_pro_opd : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_body_symbol
   (Property_body_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_operand_body_target_created_symbol
       (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
         "Poi_h")))
);;

(* let property_operand_created_envelope tag_ptu *)

let soi_pro_opd = Tag_v.sole_index_off_tag tag_pro_opd ;;
let sym_ptc_opd = Property_symbol_v.property_operand_target_created_symbol_off_property_symbol sym_pro_opd;;
let tag_ptc_opd = Tag_v.make sym_ptc_opd soi_pro_opd ;;

test_number 9 (
(tag_ptc_opd :
  Property_operand_body_target_created_symbol_t.property_operand_target_created_symbol Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_figure_tag
    "Poi_h",
   [2; 1; 27; 13])
);;

(* See Property_operand_body_target_created_envelope_u_point_homothety.ml *)

let env_ptc_opd = Property_operand_body_target_created_envelope_v.build tag_ptc_opd;;



let mea_ctu_tl = Property_operand_body_target_created_envelope_v.build tag_ptc_opd;;

test_number 10 (
( mea_ctu_tl :
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

(* Envelope *)

let env_ptu = build tag_ptu;;

(*
Print "Poi_h":
 1e-10 meter
 4e-10 meter
 -4e-10 meter
*)
