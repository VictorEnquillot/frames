open Make_test_v;;

testing "Property_operand_body_target_created_envelope_v with
    Property_operand_body_target_created_envelope_u_skeleton_fence_centered_aopef_hes11_copy.ml";;

(* Deleting Registers *)



(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_operand_body_target_created_envelope_u_skeleton_fence_centered_aopef_hes11_copy.ml";; 

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Input File *)

let nof_inp = "Print_copy_aopef_hes11.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

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
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_copy_aopef_hes11.inp")),
    [54; 20]);
   (Property_symbol_t.Property_set_body_target_implicit_symbol
     (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_unit_symbol
       (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
         "Aopef_hes11_c")),
    [1; 54; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit_symbol
       (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
         (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
           "Aopef_hes11_c"))),
    [1; 1; 54; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_operand_body_target_symbol
       (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
         (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
           "Aopef_hes11_c"))),
    [2; 1; 54; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Cop"))),
    [1; 2; 1; 54; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
         "Aopef_hes11")),
    [2; 2; 1; 54; 20])]
);;

(* Argument tag_ptc "Aopef_hes11_c" *)

let pre_tag_ptc_sof sof (s, i) = (Property_symbol_v.property_operand_target_created_constructor sof = s);;

let nam_ivn_ptc = "Aopef_hes11_c";;
let tag_pro_ptc = List_v.only_element_of_predicate_off_list (pre_tag_ptc_sof nam_ivn_ptc) tag_pro_l;;

test_number 2 (
(tag_pro_ptc : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_operand_symbol
    (Property_set_body_operand_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
          "Aopef_hes11_c"))),
   [2; 1; 54; 20])
);;

open Property_operand_body_target_created_envelope_v;; 

let tag_ptc = Property_operand_body_target_created_tag_v.property_operand_target_created_tag_off_property_tag tag_pro_ptc;;

test_number 3 (
( tag_ptc :
  Property_operand_body_target_created_symbol_t.property_operand_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Aopef_hes11_c",
   [2; 1; 54; 20])
);;

(* Operand envelope "Aopef_hes11" *)
let tag_pop = 
  Property_operand_body_target_created_container_v.property_operand_tag  
    tag_ptc;;

test_number 4 (
(tag_pop : Property_set_body_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
    (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
      "Aopef_hes11"),
   [2; 2; 1; 54; 20])
);;

let env_ptc = envelope_of_tag tag_ptc;;

test_number 5 (
( env_ptc :
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

(* Operator envelope *)
let tag_poc = 
  Property_operand_body_target_created_container_v.property_operator_creation_tag 
    tag_ptc 
;;

test_number 6 (
(tag_poc :
  Property_operator_creation_symbol_t.property_operator_creation_symbol
  Tag_t.tag ) =
  (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
    (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
      "Cop"),
   [1; 2; 1; 54; 20])
);;
 
let sof_poc = Property_operator_creation_tag_v.string_off tag_poc;;

test_number 7 (
(sof_poc : string ) = 
"Cop"
);;

let tag_ope =
  Operator_tag_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_poc;;
 
test_number 8 (
( tag_ope : Operator_tag_t.operator_tag ) =
  (Operator_symbol_t.Operator_body_symbol
    (Operator_body_symbol_t.Operator_body_creation_symbol
      (Operator_body_creation_symbol_t.Operator_body_creation_copy_symbol
        (Operator_body_creation_copy_symbol_t.Operator_body_creation_copy_constructor
          "Cop"))),
   [2; 54; 16])
);;
