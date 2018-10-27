open Make_test_v;;

testing "Operator_tag_by_input_fence_variable_name_entity_string_off_provider_v with
    Operator_tag_by_input_fence_variable_name_entity_string_off_provider_u_skeleton_fence_centered_aopef_hes11_copy.ml";;

(* Deleting Registers *)


(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Operator_tag_by_input_fence_variable_name_entity_string_off_provider_u_skeleton_fence_centered_aopef_hes11_copy.ml";; 

*)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;
let nam_cal = "quantum";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "calculation-name" nam_cal;;

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

(* Argument sof_ine "Cop" *)

let pre_tag_pct_sof sof (s, i) = (Property_symbol_v.property_operator_creation_toentity_constructor sof = s);;

let nam_ivn_pct = "Cop";;
let tag_pro_pct = List_v.only_element_of_predicate_off_list (pre_tag_pct_sof nam_ivn_pct) tag_pro_l;;

test_number 2 (
( tag_pro_pct : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operator_symbol
    (Property_operator_symbol_t.Property_operator_creation_symbol
      (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
        (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
          "Cop"))),
   [1; 2; 1; 54; 20])
);;

open Operator_symbol_by_input_fence_variable_name_entity_string_off_provider_v;; 

let sof_ine = nam_ivn_pct;; 
let mak_arg = 
    Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 3 (
( mak_arg : string ) = 
"operator_body_creation_copy_constructor"
);;

let sym_ope = Operator_symbol_v.make mak_arg sof_ine;;

test_number 4 (
(sym_ope : Operator_symbol_t.operator_symbol ) =
  Operator_symbol_t.Operator_body_symbol
   (Operator_body_symbol_t.Operator_body_creation_symbol
     (Operator_body_creation_symbol_t.Operator_body_creation_copy_symbol
       (Operator_body_creation_copy_symbol_t.Operator_body_creation_copy_constructor
         "Cop")))
);;

let fno_inp = Parameters_general_provider_v.provide "input-file";;

let tag_ope_l =
    Operator_tag_all_list_by_input_fullnameoffile_provider_v.provide 
      fno_inp;;

test_number 5 (
(tag_ope_l : Operator_symbol_t.operator_symbol Tag_t.tag list ) =
  [(Operator_symbol_t.Operator_context_symbol
     (Operator_context_symbol_t.Operator_context_domain_symbol
       (Operator_context_domain_symbol_t.Operator_context_domain_constructor
         "operator")),
    [17]);
   (Operator_symbol_t.Operator_context_symbol
     (Operator_context_symbol_t.Operator_context_inputfile_symbol
       (Operator_context_inputfile_symbol_t.Operator_context_inputfile_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_copy_aopef_hes11.inp")),
    [54; 17]);
   (Operator_symbol_t.Operator_body_symbol
     (Operator_body_symbol_t.Operator_body_unit_symbol
       (Operator_body_unit_symbol_t.Operator_body_unit_print_symbol
         (Operator_body_unit_print_symbol_t.Operator_body_unit_print_constructor
           "Aopef_hes11_c"))),
    [1; 54; 17]);
   (Operator_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_cofactor_symbol
       (Operator_fence_cofactor_symbol_t.Operator_fence_cofactor_entity_symbol
         (Operator_fence_cofactor_entity_symbol_t.Operator_fence_cofactor_entity_constructor
           "Uni_len"))),
    [1; 1; 54; 17]);
   (Operator_symbol_t.Operator_body_symbol
     (Operator_body_symbol_t.Operator_body_creation_symbol
       (Operator_body_creation_symbol_t.Operator_body_creation_copy_symbol
         (Operator_body_creation_copy_symbol_t.Operator_body_creation_copy_constructor
           "Cop"))),
    [2; 54; 17]);
   (Operator_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_operation_symbol
       (Operator_fence_operation_symbol_t.Operator_fence_operation_constructor
         "copy")),
    [1; 2; 54; 17]);
   (Operator_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_ondomain_symbol
       (Operator_fence_ondomain_symbol_t.Operator_fence_ondomain_constructor
         "skeleton")),
    [2; 2; 54; 17])]
);;
