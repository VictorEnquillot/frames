open Make_test_v;;

testing "Property_set_body_target_implicit_unit_envelope_v with
    Property_set_body_target_implicit_unit_envelope_u_parameter_tuple_print.ml";;

(* Deleting Registers *)







(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_set_body_target_implicit_unit_envelope_u_parameter_tuple_print.ml";; 

*)
(*
let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;
*)
(* Input File *)

let nof_inp = "Parameter_tuple_print_aopef_hes11.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_loi_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
( tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [20]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputfile_symbol
       (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Parameter_tuple_print_aopef_hes11.inp")),
    [33; 20]);
   (Property_symbol_t.Property_set_body_target_implicit_symbol
     (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_unit_symbol
       (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
         "Aopef_hes11")),
    [1; 33; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit_symbol
       (Property_operator_tounit_symbol_t.Property_operator_tounit_constructor
         "Aopef_hes11")),
    [1; 1; 33; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
         "Aopef_hes11")),
    [2; 1; 33; 20])]
);;

open Property_set_body_target_implicit_unit_container_v;;

(* Argument tag_tiu "Aopef_hes11" *)

let pre_tag_tiu_sof sof (s, i) = (Property_symbol_v.property_target_implicit_unit_constructor sof = s);;
let nam_ivn_tiu = "Aopef_hes11";;
let tag_pro_tiu = List_v.only_element_of_predicate_off_list (pre_tag_tiu_sof nam_ivn_tiu) tag_pro_l;;

test_number 2 (
(tag_pro_tiu : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_target_implicit_symbol
    (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_unit_symbol
      (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
        "Aopef_hes11")),
   [1; 33; 20])
);;

open Property_set_body_target_implicit_unit_envelope_v;;

let tag_ptu = Property_set_body_target_implicit_unit_tag_v.property_target_implicit_unit_tag_off_property_tag tag_pro;;

test_number 3 (
( tag_ptu :
  Property_set_body_target_implicit_unit_symbol_t.property_target_implicit_unit_symbol Tag_t.tag ) =
  (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor "Ctc_a",
   [1; 3; 13])
);;

let tag_pro_bui_l = Property_set_body_target_implicit_unit_container_v.builder_tag_list tag_ptu;;

test_number 4 (
(tag_pro_bui_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_tounit
         (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))),
    [1; 1; 3; 13]);
   (Property_symbol_t.Property_fence_symbol
     (Property_fence_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_elementary_tag
         (Elementary_symbol_t.Elementary_body_symbol
           (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
             (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_homogeneous_symbol
               (Elementary_body_parameter_tuple_homogeneous_symbol_t.Elementary_body_parameter_tuple_cartesian_symbol
                 (Elementary_body_parameter_tuple_cartesian_symbol_t.Elementary_body_parameter_tuple_cartesian_constructor
                   "T_A")))),
          [5; 1; 4]))),
    [2; 1; 3; 13])]
);;

(* Operand Ctc_a T_A *)

let tag_pro_opd = Property_set_body_target_implicit_unit_container_v.property_as_operand_tag tag_ptu;;

test_number 5 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_fence_symbol
    (Property_fence_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_elementary_tag
        (Elementary_symbol_t.Elementary_body_symbol
          (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
            (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_homogeneous_symbol
              (Elementary_body_parameter_tuple_homogeneous_symbol_t.Elementary_body_parameter_tuple_cartesian_symbol
                (Elementary_body_parameter_tuple_cartesian_symbol_t.Elementary_body_parameter_tuple_cartesian_constructor
                  "T_A")))),
         [5; 1; 4]))),
   [2; 1; 3; 13])
);;

(* Operator Print "Ctc_a" *)

let tag_oun = Property_set_body_target_implicit_unit_container_v.operator_tounit_tag tag_ptu;;

test_number 6 (
(tag_oun : Operator_tounit_symbol_t.operator_tounit_symbol Tag_t.tag ) =
  (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12])
);;

(* ----------------------------------- Debugging --------------------------------------- *)

(* let property_operand_external_envelope tag_ptu *)

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;
let sym_pox_opd = Property_symbol_v.property_operand_external_symbol_off_property_symbol sym_pro_opd;;

test_number 7 (
( sym_pox_opd :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol ) =
  Property_set_body_operand_external_symbol_t.Property_set_body_operand_elementary_tag
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_homogeneous_symbol
         (Elementary_body_parameter_tuple_homogeneous_symbol_t.Elementary_body_parameter_tuple_cartesian_symbol
           (Elementary_body_parameter_tuple_cartesian_symbol_t.Elementary_body_parameter_tuple_cartesian_constructor
             "T_A")))),
    [5; 1; 4])
);;

let tag_ele = Property_set_body_operand_external_symbol_v.elementary_tag_off sym_pox_opd;;

test_number 8 (
(tag_ele : Elementary_tag_t.elementary_tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_homogeneous_symbol
        (Elementary_body_parameter_tuple_homogeneous_symbol_t.Elementary_body_parameter_tuple_cartesian_symbol
          (Elementary_body_parameter_tuple_cartesian_symbol_t.Elementary_body_parameter_tuple_cartesian_constructor
            "T_A")))),
   [5; 1; 4])
);;

let tag_ctu = (* Coerce Down *)
	Elementary_body_parameter_tuple_tag_v.elementary_body_parameter_tuple_tag_off_elementary_tag
      	  tag_ele;;

let mea_ctu_tl = Elementary_body_parameter_tuple_envelope_v.measure_tuple_list_of_elementary_body_parameter_tuple_tag tag_ctu;;

test_number 9 (
(mea_ctu_tl : Measure_t.measure Tuple_t.tuple list ) =
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

test_number 10 (
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
Print "Ctc_a":
 0.1 nanometer
 0.2 nanometer
 -0.2 nanometer
*)
