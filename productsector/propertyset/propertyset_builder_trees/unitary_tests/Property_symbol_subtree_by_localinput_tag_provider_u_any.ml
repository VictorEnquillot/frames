open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_tag_provider_v with
    Property_symbol_subtree_by_localinput_tag_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Property_symbol_subtree_by_localinput_tag_provider_u_any.ml";; 

*)

open Property_symbol_subtree_by_localinput_tag_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_loi_l = 
  Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sof_Poi_h = "Poi_h";;
let pre_tag_loi_sof sof (s, i) = 
  (Localinput_symbol_v.string_off s = sof) &&
  (Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor s)
;;

let tag_loi_Poi_h = List_v.only_element_of_predicate_off_list (pre_tag_loi_sof sof_Poi_h) tag_loi_l;;  

test_number 1 (
(tag_loi_Poi_h : Localinput_symbol_t.localinput_symbol Tag_t.tag)  =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Poi_h"))))),
   [9; 38; 1; 22; 1])
);;

let tag_loi = tag_loi_Poi_h;;

let soi_loi = Tag_v.sole_index_off_tag tag_loi;;

let (nam_ibo, nam_iba) = 
  Box_name_n_base_name_by_sole_index_provider_v.provide
    soi_loi;;

test_number 2 (
((nam_ibo, nam_iba) : String.t * String.t ) = 
("Print_homothety_point_a", "local")
);;

let sym_pro_Poi_h_st = Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (nam_ibo, nam_iba);;

test_number 3 (
(sym_pro_Poi_h_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_homothety_point_a")),
   [Tree_t.Inner
     (Property_symbol_t.Property_target_body_implicit_symbol
       (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
         (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
           "Poi_h")),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
             (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
               "Poi_h"))));
      Tree_t.Inner
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
             (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
               "Poi_h"))),
       [Tree_t.Leaf
         (Property_symbol_t.Operator_fence_symbol
           (Operator_fence_symbol_t.Operator_fence_creation_symbol
             (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
               (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
                 "Hom_b_2"))));
        Tree_t.Leaf
         (Property_symbol_t.Property_set_body_operand_symbol
           (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
               "Poi_a")))])])])
);;

test_number 4 (
sym_pro_Poi_h_st = provide tag_loi
);;

