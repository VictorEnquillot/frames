open Make_test_v;;

testing "Property_target_body_implicit_tounit_value_v with
    Property_target_body_implicit_tounit_value_u_skeleton_fence_centered_aopef_hes11_print.ml";;

(* Deleting Registers *)




(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_target_body_implicit_tounit_value_u_skeleton_fence_centered_aopef_hes11_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_aopef_hes11";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_pro_l = Property_tag_all_list_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

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
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
       (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
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

(* Argument tag_piu "Aopef_hes11" *)

let pre_tag_piu_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;

let nam_ivn_piu = "Aopef_hes11";;
let tag_pro_piu = List_v.only_element_of_predicate_off_list (pre_tag_piu_sof nam_ivn_piu) tag_pro_l;;

test_number 2 (
(tag_pro_piu : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_body_implicit_symbol
    (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
      (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
        "Aopef_hes11")),
   [1; 54; 20])
);;

open Property_target_body_implicit_tounit_value_v;;

let tag_piu = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_piu;;

test_number 3 (
( tag_piu :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Aopef_hes11",
   [1; 54; 20])
);;

(* Property_operator Print "Aopef_hes11" *)

let tag_pro_ptp = Property_target_body_implicit_tounit_container_v.property_as_operator_tounit_tag tag_piu;;

test_number 4 (
(tag_pro_ptp : Property_symbol_t.property_symbol Tag_t.tag ) =
 (Property_symbol_t.Property_operator_symbol
    (Property_operator_symbol_t.Property_operator_tounit_symbol
      (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
        (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
          "Aopef_hes11"))),
   [1; 1; 54; 20])
);;

let sym_pro_ptp = Tag_v.entity_off_tag tag_pro_ptp;;

let sof_pro_ptp = Property_symbol_v.string_off sym_pro_ptp;;

test_number 5 (
(sof_pro_ptp : string ) = 
"Aopef_hes11"
);;

(* Property_set_body_operand_external "Aopef_hes11" *)

let tag_pro_pod = 
    Property_target_body_implicit_tounit_container_v.property_as_operand_tag 
      tag_piu ;;

test_number 6 (
(tag_pro_pod : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_operand_symbol
    (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
        "Aopef_hes11")),
   [2; 1; 54; 20])
);;

(* let property_operand_external_value_of_operand_string_off "Aopef_hes11" *)

let sof_pro_pod =  Property_tag_v.string_off tag_pro_pod;; 

test_number 7 (
(sof_pro_pod : string ) = 
"Aopef_hes11"
);;

let sof_ien_pod = (* name -> external_name *)
  Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod
;;

test_number 8 (
(sof_ien_pod : string ) = 
"he s 1 1"
);;

let mak_arg = 
  Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod
  ;;

test_number 9 (
(mak_arg : string ) = 
"skeleton_fence_centered_aopef_constructor"
);;

let sym_ske_pod = skeleton_symbol_of_operand_string_off sof_pro_pod;;

test_number 10 (
(sym_ske_pod : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
         "he s 1 1")))
);;

(* let elementary_body_parameter_tuple_aopef_tag_of_operand_string_off sof_pro_pod = *)
 let tag_edb =
   elementary_context_databox_skeletondata_tag_of_operand_string_off sof_pro_pod;;

test_number 11 (
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

let sym_ele_pod = elementary_symbol_of_operand_string_off sof_pro_pod;;



let nam_dom_pod =
  Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod;;

test_number 12 (
(nam_dom_pod : string ) = 
"skeleton"
);;

let nam_ske_pod = (* name -> external_name *)
  Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod;;

test_number 13 (
(nam_ske_pod : string ) = 
"he s 1 1"
);;

let mak_arg = 
  Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod;;

test_number 14 (
(mak_arg : string ) = 
"skeleton_fence_centered_aopef_constructor"
);;

let sym_ske_pod = Skeleton_symbol_v.make mak_arg nam_ske_pod;;

test_number 15 (
( sym_ske_pod : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
         "he s 1 1")))
);;

let nam_dbo =
  Input_fence_cell_databox_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod
;;

test_number 16 (
(nam_dbo : string ) = 
"test_ao"
);;

let nam_dba =
  Input_fence_cell_database_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_pro_pod
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
  
let pre_tag_ske (s, i) = (s = sym_ske_pod);;
      
let tag_ske_pod = List_v.only_element_of_predicate_off_list pre_tag_ske tag_ske_l;;

test_number 19 (
(tag_ske_pod : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

let tag_sca_pod = Skeleton_fence_centered_aopef_tag_v.skeleton_fence_centered_aopef_tag_off_skeleton_tag tag_ske_pod;;

let tml_sca_l = Skeleton_fence_centered_aopef_envelope_v.tagged_measure_length_triplet_list_of_tag tag_sca_pod;;

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

