open Make_test_v;;

testing "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v with
    Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_any.ml";; 

*)

open Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v;; 

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_lvo_l = 
  Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 ( 
(tag_lvo_l :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
     "Hom_b_2",
    [1; 2; 5; 38; 1; 22; 1])]
);;

(* Argument Target Implicit tag_lvo *)

let sof_lvo_hom_b_2 = "Hom_b_2";;

let pre_tag_lvo_sof sof (s, i) = (Localinput_set_fence_variable_name_operator_symbol_v.localinput_set_fence_variable_name_operator_constructor sof =s);;

let tag_lvo_hom_b_2 = List_v.only_element_of_predicate_off_list (pre_tag_lvo_sof sof_lvo_hom_b_2) tag_lvo_l;;

test_number 2 ( 
(tag_lvo_hom_b_2 : 
   Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
   Tag_t.tag ) =
 (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Hom_b_2",
  [1; 2; 5; 38; 1; 22; 1])
);;

let tag_lvo = tag_lvo_hom_b_2;;

(* Prerequisites *)

let soi_lvo = Tag_v.sole_index_off_tag tag_lvo;;

test_number 3 (
(soi_lvo : Sole_index_t.sole_index ) = 
 [1; 2; 5; 38; 1; 22; 1]
);;

test_number 4 (
nam_ibo = Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index soi_lvo
);;

let tag_loi_lcd_stl = 
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo
;;

let sof_ope = Localinput_set_fence_variable_name_operator_tag_v.string_off tag_lvo;;
  
test_number 5 (
sof_ope = sof_lvo_hom_b_2
);;

let tag_loi_bbt_st = 
  localinput_as_body_box_type_tag_subtree_of_localinput_as_define_tag_subtree_list_of_operator_string_off
    tag_loi_lcd_stl
    sof_ope 
;;

let sym_pro_ope = 
  property_as_operator_symbol_of_localinput_as_body_box_type_tag_subtree 
    tag_loi_bbt_st;;

test_number 6 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
Property_symbol_t.Operator_fence_symbol
  (Operator_fence_symbol_t.Operator_fence_creation_symbol
     (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
	(Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2")))
);;

let sym_pro_st = Tree_v.make_of_leaf sym_pro_ope;;

test_number 7 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Hom_b_2"))))
);;

test_number 8 (
sym_pro_st = provide tag_lvo
);;
