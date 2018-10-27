open Make_test_v;;

testing "Property_fence_by_property_context_inputbox_tag_provider_v with
        Property_fence_by_property_context_inputbox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_fence_by_property_context_inputbox_tag_provider_u_any.ml";; 

*)

open Property_fence_by_property_tag_provider_v;;

let nam_ibo = "Print_homothety_n_translation_point_a.loc";;
let nam_iba = "local";;

let tag_pro_t = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

let fen_pro = Tree_v.leaf_node_list_off_tree tag_pro_t;;

test_number 1 (
(fen_pro : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_h"))),
    [1; 1; 38; 1; 18; 6]);
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

let tag_ibo = Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

let tag_pro_ibo = Property_context_inputbox_tag_v.property_tag_of_property_context_inputbox_tag tag_ibo;;

test_number 2 (
(tag_pro_ibo : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_inputbox_symbol
      (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
        "Print_homothety_point_a")),
   [38; 1; 18; 6])
);;

test_number 3 (
fen_pro_ibo = provide tag_pro_ibo
);;

