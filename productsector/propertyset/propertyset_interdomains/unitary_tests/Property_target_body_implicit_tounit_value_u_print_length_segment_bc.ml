open Make_test_v;;

testing "Property_envelope_by_basicname_variable_external_n_basicname_inputbox_v with
        Property_envelope_by_basicname_variable_external_n_basicname_inputbox_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_envelope_by_basicname_variable_external_n_basicname_inputbox_u_print_length_segment_bc.ml";; 

*)

open Property_envelope_by_basicname_variable_external_n_basicname_inputbox_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let tag_pro_l = Property_tag_all_list_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

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
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Len_bc")))),
    [1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
           (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
             (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
             (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
               "Len_bc"))))),
    [2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_creation_symbol
           (Property_set_fence_operator_creation_symbol_t.Property_set_fence_operator_creation_tomeasure_symbol
             (Property_set_fence_operator_creation_tomeasure_symbol_t.Property_set_fence_operator_creation_tomeasure_constructor
               "Len"))))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);;

(* Argument tag_pit "Len_bc" *)

let pre_tag_pit_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;
let nam_var_pit = "Len_bc";;
let tag_pro_pit = List_v.only_element_of_predicate_off_list (pre_tag_pit_sof nam_var_pit) tag_pro_l;;

test_number 2 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_symbol
    (Property_set_symbol_t.Property_set_body_symbol
      (Property_set_body_symbol_t.Property_target_body_implicit_symbol
        (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
          (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
            "Len_bc")))),
   [1; 41; 1; 18; 6])
);;

let tag_pit = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_pit;;

test_number 3 (
( tag_pit :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Len_bc",
   [1; 41; 1; 18; 6])
);;

(* Operand *)
let tag_pro_opd =
  Property_target_body_implicit_tounit_container_v.property_set_body_operand_tag_of_tag
    tag_pit;;

test_number 4 (
(tag_pro_opd :
  Property_set_body_operand_symbol_t.property_set_body_operand_symbol
  Tag_t.tag ) =
  (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
    (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
      (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
        "Len_bc")),
   [2; 1; 41; 1; 18; 6])
);;

(* Operator *)
let tag_pro_ope = 
  Property_target_body_implicit_tounit_container_v.property_set_fence_operator_tounit_tag_of_tag
    tag_pit;;

test_number 5 (
( tag_pro_ope :
  Property_set_fence_operator_tounit_symbol_t.property_set_fence_operator_tounit_symbol
  Tag_t.tag ) =
  (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
    (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
      "Len_bc"),
   [1; 1; 41; 1; 18; 6])
);;

let sym_pro_ope = Tag_v.entity_off_tag tag_pro_ope;;
let sof_pro_ope = Property_symbol_v.string_off sym_pro_ope;;

let env_pro_opd = Property_set_body_operand_envelope_v.envelope_of_tag tag_pro_opd;;
	
let nam_l = List_v.map Elementary_envelopee_v.name env_pro_opd;;

