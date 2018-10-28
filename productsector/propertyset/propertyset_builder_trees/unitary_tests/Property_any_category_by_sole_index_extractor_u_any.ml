open Make_test_v;;

testing "Property_any_category_by_sole_index_extractor_v with
        Property_any_category_by_sole_index_extractor_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Property_any_category_by_sole_index_extractor_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
(tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
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
         "Print_homothety_point_a")),
    [38; 1; 18; 6]);
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Poi_h")),
    [1; 38; 1; 18; 6]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_h"))),
    [1; 1; 38; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
       (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
         (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
           "Poi_h"))),
    [2; 1; 38; 1; 18; 6]);
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 1; 18; 6]);
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 1; 18; 6])]
);;

let soi_l = List.map Tag_v.sole_index_off_tag tag_pro_l;;
let soi_any = List_v.only_element_of_predicate_off_list 
    (fun i -> List.length i = 7 && List.hd i = 1) soi_l;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) =
 [1; 2; 1; 38; 1; 18; 6]
);;
  
let nam_pro_ope = operator_fence_name_off_sole_index soi_any;;

test_number 3 (
(nam_pro_ope : string ) = 
"operator_fence_creation_toentity_constructor"
);;

let sof_pro_ope = operator_fence_string_off_off_sole_index soi_any;;

test_number 4 (
(sof_pro_ope : string ) = 
"Hom_b_2"
);;

let tag_pro_ope = operator_fence_tag_off_sole_index soi_any;;

test_number 5 (
(tag_pro_ope :
  Operator_fence_symbol_t.operator_fence_symbol Tag_t.tag ) =
  (Operator_fence_symbol_t.Operator_fence_creation_symbol
    (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
      (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
        "Hom_b_2")),
   [1; 2; 1; 38; 1; 18; 6])
);;