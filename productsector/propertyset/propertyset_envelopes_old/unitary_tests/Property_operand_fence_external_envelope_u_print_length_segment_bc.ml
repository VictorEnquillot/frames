open Make_test_v;;

testing "Property_operand_fence_external_envelope_v with
        Property_operand_fence_external_envelope_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_operand_fence_external_envelope_u_print_length_segment_bc.ml";;

*)

open Property_operand_fence_external_envelope_v;;


let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

test_number 1 (
( tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_length_segment_bc")),
    [41; 1; 18; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Len_bc")))),
    [1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Len_bc")))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Len_bc")))),
    [2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Ope_len")))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);;

let pre_tag_pfe_sof sof (s, i) = (Property_symbol_v.property_operand_fence_external_constructor sof = s);;
let nam_var_pfe = "Seg_bc";;
let tag_pro_pfe = List_v.only_element_of_predicate_off_list (pre_tag_pfe_sof nam_var_pfe) tag_pro_l;;

test_number 2 (
(tag_pro_pfe : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_fence_symbol
      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
        (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
          "Seg_bc"))),
   [2; 2; 1; 41; 1; 18; 6])
);;

(* Argument tag_pfe "Seg_bc" *)

let tag_pfe = Tag_v.map_entity 
    Property_symbol_v.property_operand_fence_external_symbol_off_property_symbol
    tag_pro_pfe;;

test_number 3 (
( tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
  Tag_t.tag ) =
  (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
    "Seg_bc",
   [2; 2; 1; 41; 1; 18; 6])
);;

let sof_pfe = Property_operand_fence_external_tag_v.string_off tag_pfe;; 
  
let soi_pfe = Tag_v.sole_index_off_tag tag_pfe;;

let bna_var_ext = Basicname_v.basicname_variable_external_of_string sof_pfe;;

let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pfe;;

test_number 4 ( 
(bna_var_ext : Basicname_t.basicname ) = 
Basicname_t.Variable_external "Seg_bc"
);;

test_number 5 ( 
(bna_ibo : Basicname_t.basicname ) =
  Basicname_t.Inputbox "Print_length_segment_bc"
);;

let env_pro_pfe = 
  Property_envelope_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
(bna_var_ext, bna_ibo);;

test_number 6 (
( env_pro_pfe : Elementary_envelopee_t.elementary_envelopee list ) =
  [Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_B"))),
      [1; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_B"))),
      [2; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_B"))),
      [3; 1; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (0.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_rho_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_rho_constructor
             "BC_C"))),
      [1; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))));
   Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_phi_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_phi_constructor
             "BC_C"))),
      [2; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (90.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_angle Units_actual_angle_t.Degree))));
   Elementary_envelopee_t.Coordinate_envelopee
    ((Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_zed_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_zed_constructor
             "BC_C"))),
      [3; 2; 15; 1; 5; 5]),
     Readee_t.Readee_measure
      (Readee_measure_t.Readee_measure
        (1.,
         Units_t.Units_actual
          (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))))]
);;

let env_pfe = envelope_of_tag tag_pfe;;

test_number 7 (
env_pfe = env_pro_pfe 
);;

