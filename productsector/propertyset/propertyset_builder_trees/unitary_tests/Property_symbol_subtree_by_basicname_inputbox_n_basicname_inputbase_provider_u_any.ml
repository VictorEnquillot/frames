open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

open Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

  let tag_lei_l =
    Localinput_set_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo
 ;;

test_number 1 (
(tag_lei_l :
  Localinput_set_fence_variable_name_entity_implicit_symbol_t.localinput_set_fence_variable_name_entity_implicit_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
     "Poi_h",
    [1; 2; 9; 38; 1; 22; 1])]
);;

  let tag_lve_l = List.map (* Coerce Up *) 
      (Tag_v.map_entity 
	 Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_symbol_of_localinput_set_fence_variable_name_entity_implicit_symbol)
      tag_lei_l
 ;;
 
test_number 2 (
( tag_lve_l :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol
     (Localinput_set_fence_variable_name_entity_implicit_symbol_t.Localinput_set_fence_variable_name_entity_implicit_constructor
       "Poi_h"),
    [1; 2; 9; 38; 1; 22; 1])]
);;

 let sym_pro_stl = List.map 
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lve_l 
 ;;

test_number 3 (
(sym_pro_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
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
              "Poi_a")))])])]
);;

let sym_pro_ifi = Property_symbol_v.property_context_inputbox_constructor nam_ibo;; 

test_number 4 (
(sym_pro_ifi : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputbox_symbol
     (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
       "Print_homothety_point_a"))
);;

let sym_pro_st = Tree_v.make_of_node sym_pro_ifi sym_pro_stl;;

test_number 5 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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

test_number 6 (
sym_pro_st = provide (nam_ibo, nam_iba)
);;
