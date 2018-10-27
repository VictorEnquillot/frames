open Make_test_v;;

testing "Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v with
    Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_u_any.ml";; 

*)

open Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v;;

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

let tag_let_l = Localinput_set_fence_variable_name_entity_target_tag_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(tag_let_l :
  Localinput_set_fence_variable_name_entity_target_symbol_t.localinput_set_fence_variable_name_entity_target_symbol
  Tag_t.tag list ) =
  [(Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
     "Poi_h",
    [1; 2; 6; 38; 1; 22; 1])]
);;

let sof_let = "Poi_h";;

let pre_tag_let_sof sof (s, i) = 
  Localinput_set_fence_variable_name_entity_target_symbol_v.localinput_set_fence_variable_name_entity_target_constructor sof = s;;

let tag_let_Poi_h = List_v.only_element_of_predicate_off_list (pre_tag_let_sof sof_let) tag_let_l;;

test_number 2 (
(tag_let_Poi_h :
  Localinput_set_fence_variable_name_entity_target_symbol_t.localinput_set_fence_variable_name_entity_target_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
    "Poi_h",
   [1; 2; 6; 38; 1; 22; 1])
);;

(* Argument tag_let *)

let tag_let = tag_let_Poi_h;;

let soi_let = Tag_v.sole_index_off_tag tag_let;;

test_number 3 (
(soi_let : Sole_index_t.sole_index ) = 
[1; 2; 6; 38; 1; 22; 1]
);;

test_number 4 (
nam_ibo = Localinput_context_inputbox_name_by_any_sole_index_provider_v.provide soi_let
);;

let sof_let = Localinput_set_fence_variable_name_entity_target_tag_v.string_off tag_let;;

let str_l = 
  Localinput_body_box_type_string_list_by_basicname_inputbox_n_localinput_set_fence_variable_name_entity_string_off_provider_v.provide 
    (nam_ibo, sof_let)
;;

let str_arg = List_v.name_underscored_off_string_list str_l;;

test_number 5 (
(str_arg : string ) = 
"property_set_body_operand_target_created_constructor"
);;

let sym_pro_pod = Property_symbol_v.make str_arg sof_let;;

test_number 6 (
( sym_pro_pod : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_set_body_operand_symbol
   (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_created_symbol
       (Property_set_body_operand_target_created_symbol_t.Property_set_body_operand_target_created_constructor
         "Poi_h")))
);;

test_number 7 (
sym_pro_pod = provide tag_let
);;
