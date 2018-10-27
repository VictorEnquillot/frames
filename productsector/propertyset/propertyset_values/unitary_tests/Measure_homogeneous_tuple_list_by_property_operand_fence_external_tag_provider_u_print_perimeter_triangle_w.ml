open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_v with
        Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_u_print_perimeter_triangle_w.ml";;

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

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Per_w *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_u_print_perimeter_triangle_w.ml";; 

*)

open Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_v;;

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
    [17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_perimeter_triangle_w")),
    [47; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Per_w")))),
    [1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Per_w")))),
    [1; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Per_w")))),
    [2; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Ope_per")))),
    [1; 2; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Tri_w"))),
    [2; 2; 1; 47; 1; 17; 6])]
);;

let pre_tag_pfe_sof sof (s, i) = (Property_symbol_v.property_operand_fence_external_constructor sof = s);;
let nam_var_pfe = "Tri_w";;
let tag_pro_pfe = List_v.only_element_of_predicate_off_list (pre_tag_pfe_sof nam_var_pfe) tag_pro_l;;

test_number 2 (
(tag_pro_pfe : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_fence_symbol
      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
        (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
          "Tri_w"))),
   [2; 2; 1; 47; 1; 17; 6])
);;

(* Argument tag_pfe "Ope_per" *)

let tag_pfe = Property_operand_fence_external_tag_v.property_operand_fence_external_tag_off_property_tag tag_pro_pfe;;

test_number 3 (
( tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
  Tag_t.tag ) =
  (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
    "Tri_w",
   [2; 2; 1; 47; 1; 17; 6])
);;

let soi_pfe = Tag_v.sole_index_off_tag tag_pfe;;
  
test_number 4 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pfe
);;

let tag_pro = Property_operand_fence_external_tag_v.property_tag_of_property_operand_fence_external_tag tag_pfe ;;

test_number 5 (
tag_pro = tag_pro_pfe 
);;

let bna = Basicname_by_property_tag_provider_v.provide tag_pro;;  

let bna_var_ext = Basicname_v.basicname_variable_external_off_basicname bna;;

test_number 6 (
(bna_var_ext : Basicname_t.basicname ) =
Basicname_t.Variable_external "Tri_w"
);;
	
let mea_hom_tl = Measure_homogeneous_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 7 (
(mea_hom_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)));
   Tuple_t.Trio
    ((0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (2.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)));
   Tuple_t.Trio
    ((0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)),
     (3.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer)))]
);;

test_number 8 (
mea_hom_tl = provide tag_pfe
);;
