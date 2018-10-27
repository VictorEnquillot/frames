open Make_test_v;;

testing "Measure_by_basicname_operation_on_property_operand_fence_external_envelope_provider_v with
        Measure_by_basicname_operation_on_property_operand_fence_external_envelope_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_per *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor" ] *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Per_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_per *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* print Per_w *)
(*       units  *)
(*         length angstrom *)
(*       	end -- units	     *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Measure_by_basicname_operation_on_property_operand_fence_external_envelope_provider_u_print_perimeter_triangle_w.ml";; 

*)

open Measure_by_basicname_operation_on_property_operand_fence_external_envelope_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let nam_iba = "local";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let nam_opt = "perimeter";;
let bna_opt = Basicname_v.basicname_operation_of_string nam_opt;;

Basicname_v.check_is_basicname_operation_of_basicname bna_opt;;

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
    [1; 17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_perimeter_triangle_w")),
    [41; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Ope_per")))),
    [1; 41; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Ope_per")))),
    [1; 1; 41; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Ope_per")))),
    [2; 1; 41; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Ope_len")))),
    [1; 2; 1; 41; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 17; 6])]
);;

let pre_tag_ptm_sof sof (s, i) = (Property_symbol_v.property_operand_body_target_measured_constructor sof = s);;
let nam_var_ptm = "Ope_per";;
let tag_pro_ptm = List_v.only_element_of_predicate_off_list (pre_tag_ptm_sof nam_var_ptm) tag_pro_l;;

test_number 2 (
(tag_pro_ptm : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
          (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
            "Ope_per")))),
   [2; 1; 41; 1; 17; 6])
);;

(* Argument tag_ptm "Ope_per" *)

let tag_ptm = Property_operand_body_target_measured_tag_v.property_operand_body_target_measured_tag_off_property_tag tag_pro_ptm;;

test_number 3 (
( tag_ptm :
  Property_operand_body_target_measured_symbol_t.property_operand_body_target_measured_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
    "Ope_per",
   [2; 1; 41; 1; 17; 6])
);;

let soi_ptm = Tag_v.sole_index_off_tag tag_ptm;;
  
test_number 4 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptm
);;

(* Containee Operator *)

let tag_pct = 
  Property_operand_body_target_measured_container_v.property_operator_fence_creation_tomeasure_tag_of_tag 
    tag_ptm;;

test_number 5 (
(tag_pct :
  Property_operator_fence_creation_tomeasure_symbol_t.property_operator_fence_creation_tomeasure_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
    "Ope_len",
   [1; 2; 1; 41; 1; 17; 6])
);;

(* Operation *)  
let bna_opt = 
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;

test_number 6 (
(bna_opt : Basicname_t.basicname ) =
  Basicname_t.Operation "perimeter"
  );;
  
(* Ondomain *)  
let bna_ond = 
  Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;

test_number 7 (
(bna_ond : Basicname_t.basicname ) =
  Basicname_t.Ondomain "figure"
);;

(* Containee Operand *)

let tag_pod =
  Property_operand_body_target_measured_container_v.property_operand_tag_of_tag 
    tag_ptm;;

test_number 8 (
(tag_pod : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_fence_symbol
    (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
      (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
        "Seg_bc")),
   [2; 2; 1; 41; 1; 17; 6])
);;

let tag_pfe = Tag_v.map_entity 
    Property_operand_symbol_v.property_operand_fence_external_symbol_off_property_operand_symbol
    tag_pod;;

test_number 9 (
( tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
  Tag_t.tag ) =
  (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
    "Seg_bc",
   [2; 2; 1; 41; 1; 17; 6])
);;

let nam_var_pod = Property_operand_tag_v.string_off tag_pod;;

let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_pod;;

test_number 10 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Seg_bc"
);;

let bna_dom_ext = 
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 11 (
(bna_dom_ext : Basicname_t.basicname ) = 
Basicname_t.Domain "figure"
);;

test_number 12 (
Basicname_v.string_off bna_ond = Basicname_v.string_off bna_dom_ext
);;

let env_pfe = Property_operand_fence_external_envelope_v.envelope_of_tag tag_pfe;;

let mea = provide bna_opt env_pfe;;
