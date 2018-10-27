open Make_test_v;;

testing "Property_target_body_implicit_tounit_value_v with
    Property_target_body_implicit_tounit_value_u_parameter_tuple_print_aopef_hes11.ml";;

(* Deleting Registers *)





(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Property_target_body_implicit_tounit_value_u_parameter_tuple_print_aopef_hes11.ml";; 

*)

(* Input File *)

let nam_ibo = "Parameter_tuple_print_aopef_hes11";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_loi_t = Input_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;
let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

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
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
       (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
         "Aopef_hes11")),
    [1; 33; 20]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_tounit_symbol
       (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
         (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
           "Aopef_hes11"))),
    [1; 1; 33; 20]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
       (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
         "Aopef_hes11")),
    [2; 1; 33; 20])]
);;

open Property_target_body_implicit_tounit_value_v;;

(* Argument tag_tiu "Aopef_hes11" *)

let pre_tag_tiu_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;

let nam_ivn_tiu = "Aopef_hes11";;
let tag_pro_tiu = List_v.only_element_of_predicate_off_list (pre_tag_tiu_sof nam_ivn_tiu) tag_pro_l;;

test_number 2 (
(tag_pro_tiu : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_body_implicit_symbol
    (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
      (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
        "Aopef_hes11")),
   [1; 33; 20])
);;

open Property_target_body_implicit_tounit_value_v;;

let tag_tiu = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_tiu;;

test_number 3 (
( tag_tiu :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Aopef_hes11",
   [1; 33; 20])
);;

(* Property_operator Print "Aopef_hes11" *)

let tag_pro_opu = Property_target_body_implicit_tounit_container_v.property_as_operator_tounit_tag tag_tiu;;

test_number 4 (
(tag_pro_opu : Property_symbol_t.property_symbol Tag_t.tag ) =
 (Property_symbol_t.Property_operator_symbol
    (Property_operator_symbol_t.Property_operator_tounit_symbol
      (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
        (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
          "Aopef_hes11"))),
   [1; 1; 33; 20])
);;

let sym_pro_opu = Tag_v.entity_off_tag tag_pro_opu;;
  
let sof_pro_opu = Property_symbol_v.string_off sym_pro_opu;;

(* Property_set_body_operand_external "Aopef_hes11" *)

let tag_pro_opd = 
    Property_target_body_implicit_tounit_container_v.property_as_operand_tag 
      tag_tiu ;;

test_number 5 (
(tag_pro_opd : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_body_operand_symbol
    (Property_set_body_operand_symbol_t.Property_set_body_operand_external_symbol
      (Property_set_body_operand_external_symbol_t.Property_set_body_operand_external_constructor
        "Aopef_hes11")),
   [2; 1; 33; 20])
);;

(* let property_operand_external_value_of_operand_string_off "Aopef_hes11" *)

let sof_inp_opd =  Property_tag_v.string_off tag_pro_opd;; 

let nam_dom_opd =
  Input_fence_cell_domain_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_inp_opd;;

test_number 6 (
(nam_dom_opd : string ) = 
"elementary"
);;

let nam_ele_opd = (* name -> external_name *)
  Input_fence_cell_external_name_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_inp_opd;;

test_number 7 (
(nam_ele_opd : string ) = 
"he s 1 1"
);;

let mak_arg = 
  Make_argument_by_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_inp_opd;;

test_number 8 (
(mak_arg : string ) = 
"elementary_body_parameter_tuple_aopef_constructor"
);;

let sym_ele_opd = Elementary_symbol_v.make mak_arg nam_ele_opd;;

test_number 9 (
( sym_ele_opd : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
     (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
       (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
         "he s 1 1")))
);;

let nam_dbo =
  Input_fence_cell_databox_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_inp_opd
;;

test_number 10 (
(nam_dbo : string ) = 
"test_ao"
);;

let nam_dba =
  Input_fence_cell_database_string_off_by_input_fullnameoffile_n_input_fence_variable_name_entity_string_off_provider_v.provide
    sof_inp_opd
;;

test_number 11 (
(nam_dba : string ) = 
"nwchem"
);;

let tag_eba =
  Elementary_basisset_tag_by_database_name_n_basisset_name_provider_v.provide
    (nam_dba, nam_dbo)
;;

test_number 12 ( 
(tag_eba :
  Elementary_basisset_symbol_t.elementary_basisset_symbol Tag_t.tag ) =
  (Elementary_basisset_symbol_t.Elementary_basisset_constructor "test_ao",
   [6; 5; 6])
);;

Parameters_general_register_v.store_force "database-name" nam_dba;;      
Parameters_general_register_v.store_force "databox-name" nam_dbo;;
      
let tag_ele_l =
  Elementary_tag_all_list_by_elementary_basisset_tag_provider_v.provide 
    tag_eba
;;
  
let pre_tag_ele (s, i) = (s = sym_ele_opd);;
      
let tag_ele_opd = List_v.only_element_of_predicate_off_list pre_tag_ele tag_ele_l;;

test_number 13 (
(tag_ele_opd : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 1"))),
   [1; 6; 5; 6])
);;

let mea_opd_l = Elementary_envelope_v.measure_list_of_elementary_tag tag_ele_opd ;;

test_number 14 (
( mea_opd_l : Closure_units_t.closure_units ) =
  [(13.6267,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Bohr);
   (0.17523,
    Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Bohr)]
);;

let mea_l = property_operand_external_value_of_operand_string_off sof_inp_opd ;;
   
test_number 15 (
mea_l = property_operand_value_of_property_operand_tag tag_pro_opd
);;


build tag_tiu;;

