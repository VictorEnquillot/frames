open Make_test_v;;

testing "Property_set_body_operand_external_envelope_v with
    Property_set_body_operand_external_envelope_u_skeleton_fence_centered_aopef_hes11_print.ml";;

(* Deleting Registers *)


(* Tracing *)

Trace_what_by_module_name_register_v.store "any" "cpu retrieve provide store";;

(* toplevel 
   #use "Property_set_body_operand_external_envelope_u_skeleton_fence_centered_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nof_inp = "Print_aopef_hes11.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

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
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_aopef_hes11.inp")),
    [29; 20]);
   (Property_symbol_t.Property_set_body_target_implicit_symbol
     (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_unit_symbol
       (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
         "Aopef_hes11")),
    [1; 29; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit_symbol
       (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
         (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
           "Aopef_hes11"))),
    [1; 1; 29; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
         "Aopef_hes11")),
    [2; 1; 29; 20])]
);;

(* Argument tag_poe "Aopef_hes11" *)

let pre_tag_poe_sof sof (s, i) = (Property_symbol_v.property_operand_external_constructor sof = s);;

let nam_ivn_poe = "Aopef_hes11";;
let tag_pro_poe = List_v.only_element_of_predicate_off_list (pre_tag_poe_sof nam_ivn_poe) tag_pro_l;;

test_number 2 (
(tag_pro_poe : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_operand_symbol
    (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
        "Aopef_hes11")),
   [2; 1; 29; 20])
);;

open Property_set_body_operand_external_envelope_v;; 

let tag_poe = Property_set_body_operand_external_tag_v.property_operand_external_tag_off_property_tag tag_pro_poe;;

test_number 3 (
( tag_poe :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol
  Tag_t.tag ) =
  (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
    "Aopef_hes11",
   [2; 1; 29; 20])
);;

(* let property_operand_external_envelope_of_operand_string_off "Aopef_hes11" *)

let sof_poe = Property_set_body_operand_external_tag_v.string_off tag_poe;; 

test_number 4 (
(sof_poe : string ) = 
"Aopef_hes11"
);;

let nam_dom_poe =
    Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_poe;;

test_number 5 (
(nam_dom_poe : string ) = 
"skeleton"
);;

let sof_ine = sof_poe ;;
let tag_ske = 
  Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_ine;;

test_number 6 (
(tag_ske : Skeleton_tag_t.skeleton_tag ) =
  (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 22])
);;

let env_ske = Skeleton_envelope_v.envelope_of_tag tag_ske;;

test_number 7 (
( env_ske :
  (Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
          (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
            "he s 1 1"))),
     [1; 1; 6; 5; 6]),
    Readee_t.Readee_units
     (13.6267,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr));
   ((Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "he s 1 1"))),
     [2; 1; 6; 5; 6]),
    Readee_t.Readee_units
     (0.17523,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

let bor_ske = Skeleton_envelope_v.border_of_tag tag_ske;;

test_number 8 (
(bor_ske : Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list) =
[(Elementary_border_symbol_t.Elementary_border_parameter_symbol
   (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
       (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
         "he s 1 1"))),
  [1; 1; 6; 5; 6]);
 (Elementary_border_symbol_t.Elementary_border_parameter_symbol
   (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
     (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
       (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
         "he s 1 1"))),
  [2; 1; 6; 5; 6])]
);;

let bor_ske_tl = Tuple_list_v.tuple_list_of_list bor_ske;;

test_number 9 (
( bor_ske_tl :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag Tuple_t.tuple
  list ) =
  [Tuple_t.Duo
    ((Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "he s 1 1"))),
      [1; 1; 6; 5; 6]),
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "he s 1 1"))),
      [2; 1; 6; 5; 6]))]
);;

test_number 10 (
env_ske = List.flatten (List.map Elementary_border_envelope_v.envelope_of_tag bor_ske)
);;
