open Make_test_v;;

testing "measure_tools_v with
    measure_tools_u_skeleton_fence_centered_aopef_hes11_print.ml";;

(* Deleting Registers *)




(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "measure_tools_u_skeleton_fence_centered_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nof_inp = "Print_aopef_hes11.inp";;
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
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_aopef_hes11.inp")),
    [54; 20]);
   (Property_symbol_t.Property_set_body_target_implicit_symbol
     (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_unit_symbol
       (Property_set_body_target_implicit_unit_symbol_t.Property_set_body_target_implicit_unit_constructor
         "Aopef_hes11")),
    [1; 54; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit_symbol
       (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
         (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
           "Aopef_hes11"))),
    [1; 1; 54; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
         "Aopef_hes11")),
    [2; 1; 54; 20])]
);;

(* Argument tag_pox "Aopef_hes11" *)

let pre_tag_pox_sof sof (s, i) = (Property_symbol_v.property_operand_external_constructor sof = s);;

let nam_ivn_pox = "Aopef_hes11";;
let tag_pro_pox = List_v.only_element_of_predicate_off_list (pre_tag_pox_sof nam_ivn_pox) tag_pro_l;;

test_number 2 (
(tag_pro_pox : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_operand_symbol
    (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
        "Aopef_hes11")),
   [2; 1; 54; 20])
);;

(* open measure_tools_v;; *)

let tag_pox = Property_set_body_operand_external_tag_v.property_operand_external_tag_off_property_tag tag_pro_pox;;

test_number 3 (
( tag_pox :
  Property_set_body_operand_external_symbol_t.property_operand_external_symbol
  Tag_t.tag ) =
  (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
    "Aopef_hes11",
   [2; 1; 54; 20])
);;

(* let property_operand_external_value_of_operand_string_off "Aopef_hes11" *)

let sof_pox = Property_set_body_operand_external_tag_v.string_off tag_pox;; 

test_number 4 (
(sof_pox : string ) = 
"Aopef_hes11"
);;

let nam_dom_pox =
    Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_pox;;

test_number 5 (
(nam_dom_pox : string ) = 
"skeleton"
);;

let mak_arg = 
  Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pox
  ;;

test_number 6 (
(mak_arg : string ) = 
"skeleton_fence_centered_aopef_constructor"
);;

let sof_ine = sof_pox;;
let sof_ixn = (* variable name -> external_name *)
    Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
      sof_ine;;

test_number 7 (
(sof_ixn : string ) = 
"he s 1 1"
);;

let sym_ske_pox = Skeleton_symbol_v.make mak_arg sof_ixn;;

test_number 8 (
(sym_ske_pox : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
         "he s 1 1")))
);;

test_number 9 (
tag_ske_pox = Skeleton_tag_by_input_fence_variable_name_entity_string_off_provider_v.provide sof_pox
);;

(* let elementary_body_parameter_tuple_aopef_tag_of_operand_string_off sof_pro_pox = *)
 let tag_edb =
   elementary_context_databox_skeletondata_tag_of_operand_string_off sof_pro_pox;;

test_number 10 (
(tag_edb :
  Elementary_context_databox_skeletondata_symbol_t.elementary_context_databox_skeletondata_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
    "test_ao",
   [6; 5; 6])
);;

let tag_ele_l =
    Elementary_tag_all_list_by_elementary_context_databox_skeleton_tag_provider_v.provide
      tag_edb;;

let sym_ele_pox = elementary_symbol_of_operand_string_off sof_pro_pox;;

let nam_dom_pox =
  Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pox;;

test_number 11 (
(nam_dom_pox : string ) = 
"skeleton"
);;

let nam_ske_pox = (* input_variable_name -> external_name *)
  Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pox;;

test_number 12 (
(nam_ske_pox : string ) = 
"he s 1 1"
);;

let sof_ixn_pox = (* input_variable_name -> external_name *)
  Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pox
;;

test_number 13 (
(sof_ixn_pox : string ) = 
"he s 1 1"
);;

let mak_arg = 
  Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pox;;

test_number 14 (
(mak_arg : string ) = 
"skeleton_fence_centered_aopef_constructor"
);;

let sym_ske_pox = Skeleton_symbol_v.make mak_arg nam_ske_pox;;

test_number 15 (
( sym_ske_pox : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
         "he s 1 1")))
);;

let nam_dbo =
  Input_fence_cell_databox_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pox
;;

test_number 16 (
(nam_dbo : string ) = 
"test_ao"
);;

let nam_dba =
  Input_fence_cell_database_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pox
;;

test_number 17 (
(nam_dba : string ) = 
"nwchem"
);;

let tag_pcb =
  Skeleton_context_databox_skeletondata_tag_by_database_name_n_basisset_name_provider_v.provide
    (nam_dba, nam_dbo)
;;

test_number 18 ( 
(tag_pcb :
  Skeleton_context_databox_skeletondata_symbol_t.skeleton_context_databox_skeletondata_symbol
  Tag_t.tag ) =
  (Skeleton_context_databox_skeletondata_symbol_t.Skeleton_context_databox_skeletondata_constructor
    "test_ao",
   [6; 5; 19])
);;

Parameters_general_register_v.store_force "database-name" nam_dba;;      
Parameters_general_register_v.store_force "databox-name" nam_dbo;;
      
let tag_ske_l =
  Skeleton_tag_all_list_by_skeleton_context_databox_skeletondata_tag_provider_v.provide 
    tag_pcb
;;
  
let pre_tag_ske (s, i) = (s = sym_ske_pox);;
      
let tag_ske_pox = List_v.only_element_of_predicate_off_list pre_tag_ske tag_ske_l;;

test_number 19 (
(tag_ske_pox : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

let tag_sca_pox = Skeleton_fence_centered_aopef_tag_v.skeleton_fence_centered_aopef_tag_off_skeleton_tag tag_ske_pox;;

let tml_sca_l = Skeleton_fence_centered_aopef_envelope_v.tagged_measure_length_triplet_list_of_tag tag_sca_pox;;

test_number 20 (
(tml_sca_l :
  (Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
   Tag_t.tag, float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Triplet_t.triplet list ) =
  [((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
      (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
        "he s 1 1"),
     [1; 1; 6; 5; 6]),
    13.6267, Elementary_fence_units_actual_length_symbol_t.Bohr);
   ((Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
      (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
        "he s 1 1"),
     [2; 1; 6; 5; 6]),
    0.17523, Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

