open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_skeleton_fence_centered_aopef_hes11_copy_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_skeleton_fence_centered_aopef_hes11_copy_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Skeleton_fence_centered_aopef_hes11_copy";;

(*
let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
*)

let tag_lve_l =
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

test_number 1 (
(tag_lve_l : Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
   Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Aopef_hes11"),
    [1; 2; 2; 54; 11]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
     (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
       "Aopef_hes11_c"),
    [1; 2; 4; 54; 11]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [1; 2; 5; 54; 11]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
     (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
       "Aopef_hes11_c"),
    [1; 2; 6; 54; 11]);
   (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
     (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
       "Uni_len"),
    [2; 2; 2; 6; 54; 11])]
);;


open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;;

(* Argument tag_lve Operand External "Aopef_hes11" *)

let pre_tag_lve_sof sof (s, i) = (Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_external_constructor sof = s);;
let sof_lve = "Aopef_hes11";;

let tag_lve = List_v.only_element_of_predicate_off_list (pre_tag_lve_sof sof_lve) tag_lve_l;;

test_number 2 (
( tag_lve :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
    (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
      "Aopef_hes11"),
   [1; 2; 2; 54; 11])
);;

let sym_pro_st = property_symbol_subtree_of_localinput_set_fence_variable_name_entity_tag tag_lve;;

test_number 3 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
       (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
         "Aopef_hes11")))
);;

test_number 4 (
sym_pro_st = provide tag_lve
);;

(* Argument tag_lve Implicit "Aopef_hes11_c" *)

let pre_tag_lve_sof sof (s, i) = (Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor sof = s);;
let sof_lve = "Aopef_hes11_c";;

let tag_lve = List_v.only_element_of_predicate_off_list (pre_tag_lve_sof sof_lve) tag_lve_l;;

test_number 5 (
( tag_lve :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
    (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
      "Aopef_hes11_c"),
   [1; 2; 6; 54; 11])
);;

open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;;

let sym_pro_st = property_symbol_subtree_of_localinput_set_fence_variable_name_entity_tag tag_lve;;

test_number 6 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Inner
   (Property_symbol_t.Property_target_body_implicit_symbol
     (Property_target_body_implicit_symbol_t.Property_target_body_implicit_unit_symbol
       (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
         "Aopef_hes11_c")),
   [Tree_t.Leaf
     (Property_symbol_t.Operator_fence_symbol
       (Operator_fence_symbol_t.Operator_fence_tounit_symbol
         (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
           (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
             "Aopef_hes11_c"))));
    Tree_t.Inner
     (Property_symbol_t.Property_set_body_operand_symbol
       (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
         (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
           (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
             "Aopef_hes11_c"))),
     [Tree_t.Leaf
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
             (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
               "Cop"))));
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Aopef_hes11")))])])
);;

test_number 7 (
sym_pro_st = provide tag_lve
);;
