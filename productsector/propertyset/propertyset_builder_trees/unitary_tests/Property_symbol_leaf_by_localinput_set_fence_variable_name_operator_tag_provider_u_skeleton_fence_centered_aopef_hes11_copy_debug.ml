open Make_test_v;;

testing "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v with
    Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_skeleton_fence_centered_aopef_hes11_copy_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_u_skeleton_fence_centered_aopef_hes11_copy_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Skeleton_fence_centered_aopef_hes11_copy";;

(*
let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
*)

let tag_vno_l =
    Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

test_number 1 (
(tag_vno_l : Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
   Tag_t.tag list ) =
[(Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Cop",
  [1; 2; 3; 54; 11])]
);;

open Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v;;

(* Argument tag_vno Operand External "Aopef_hes11" *)

let pre_tag_vno_sof sof (s, i) = (Localinput_set_fence_variable_name_operator_symbol_v.localinput_set_fence_variable_name_operator_constructor sof = s);;
let sof_vno = "Cop";;

let tag_vno = List_v.only_element_of_predicate_off_list (pre_tag_vno_sof sof_vno) tag_vno_l;;

test_number 2 (
( tag_vno :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Cop",
   [1; 2; 3; 54; 11])
);;

let tag_loi_lcd_stl = 
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let sof_ope = Localinput_set_fence_variable_name_operator_tag_v.string_off tag_vno;;

let tag_loi_bbt_st = localinput_as_body_box_type_tag_subtree_of_localinput_as_define_tag_subtree_list_of_operator_string_off
    tag_loi_lcd_stl
    sof_ope
;;

let tag_loi_roo = Tree_v.root_node_off_tree tag_loi_bbt_st;;
let sof_ope = Localinput_tag_v.string_off tag_loi_roo;;
let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor s ;;
let tag_loi_bwl_l = Tree_v.node_filter_of_node_predicate_off_tree pre_tag_bwl tag_loi_bbt_st;;
let sof_l = List.map Localinput_tag_v.string_off tag_loi_bwl_l;;

test_number 3 (
( sof_l : string list ) =
  ["operator"; "body"; "creation"; "copy"; "constructor"]
);;

(* Argument tag_loi_bbt_st *)


let sym_pro_ope = 
    property_as_operator_symbol_of_localinput_as_body_box_type_tag_subtree 
      tag_loi_bbt_st;;

test_number 4 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Operator_fence_symbol
   (Operator_fence_symbol_t.Operator_fence_creation_symbol
     (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
       (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
         "Cop")))
);;

let sym_pro_st = provide tag_vno;;

test_number 5 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_creation_symbol
       (Operator_fence_creation_symbol_t.Operator_fence_creation_toentity_symbol
         (Operator_fence_creation_toentity_symbol_t.Operator_fence_creation_toentity_constructor
           "Cop"))))
);;
