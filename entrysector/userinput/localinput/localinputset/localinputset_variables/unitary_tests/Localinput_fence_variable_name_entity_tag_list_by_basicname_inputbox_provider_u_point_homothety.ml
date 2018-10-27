open Make_test_v;;

testing "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_loi_l = 
    Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let sof_lcu = "Poi_h";;

let pre_tag_vne (s, i) = 
  Localinput_symbol_v.is_localinput_fence_variable_name_entity_symbol_off_localinput_symbol s ;;


let pre_tag_lcu_sof sof (s, i) = (Localinput_body_handle_command_symbol_v.is_localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol s) && (Localinput_body_handle_command_symbol_v.string_off s = sof);;

let tag_lhc_lcu = List_v.only_element_of_predicate_off_list (pre_tag_lcu_sof sof_lcu) tag_lhc_l;;

test_number 1 (
( tag_lhc_lcu :
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
    (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
      (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
        "Poi_h")),
   [9; 38; 11])
);;

let tag_lcu = Tag_v.map_entity 
    Localinput_body_handle_command_symbol_v.localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol
    tag_lhc_lcu
;;

let tag_lhc = Tag_v.map_entity (* Coerce Up *)
    Localinput_body_handle_command_symbol_v.localinput_body_handle_command_symbol_of_localinput_body_handle_command_unit_symbol
    tag_lcu;;

test_number 2 (
(tag_lhc :
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
    (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
      (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
        "Poi_h")),
   [9; 38; 11])
);;

let tag_loi_lcu_st = 
    Localinput_as_body_handle_command_tag_subtree_by_localinput_body_handle_command_tag_provider_v.provide
      tag_lhc;;
let sym_inp_lcu_st = Tree_v.map Tag_v.entity_off_tag tag_loi_lcu_st;;

test_number 3 (
(sym_inp_lcu_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_h"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
           (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
               (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
                 "Poi_h")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_box_symbol
           (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
             (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
               "Poi_h"))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
               Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
               (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                 (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                   "Uni_len")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
               (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                 (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                   "Uni_ang")))))]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)))])])
);;

test_number 4 (
tag_nei = provide nam_ibo
);;
*)
