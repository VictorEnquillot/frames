open Make_test_v;;

testing "Localinput_fence_variable_name_entity_implicit_tag_by_localinput_body_handle_command_unit_tag_provider_v with
    Localinput_fence_variable_name_entity_implicit_tag_by_localinput_body_handle_command_unit_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_variable_name_entity_implicit_tag_by_localinput_body_handle_command_unit_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_lhc_l = Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let cou = List.length tag_lhc_l;;

test_number 1 (
(cou : int ) = 
9
);;

(* Argument tag_lcu Poi_h *)

let sof_lcu = "Poi_h";;
let pre_tag_lcu_sof sof (s, i) = (Localinput_body_handle_command_symbol_v.is_localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol s) && (Localinput_body_handle_command_symbol_v.string_off s = sof);;

let tag_lhc_lcu = List_v.only_element_of_predicate_off_list (pre_tag_lcu_sof sof_lcu) tag_lhc_l;;

test_number 2 (
( tag_lhc_lcu :
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
    (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
      (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
        "Poi_h")),
   [9; 38; 11])
);;

open Localinput_fence_variable_name_entity_implicit_tag_by_localinput_body_handle_command_unit_tag_provider_v;;

let tag_lcu = Tag_v.map_entity 
    Localinput_body_handle_command_symbol_v.localinput_body_handle_command_unit_symbol_off_localinput_body_handle_command_symbol
    tag_lhc_lcu
;;

let tag_lhc = Tag_v.map_entity (* Coerce Up *)
    Localinput_body_handle_command_symbol_v.localinput_body_handle_command_symbol_of_localinput_body_handle_command_unit_symbol
    tag_lcu;;

test_number 3 (
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

test_number 4 (
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

let nam_lcu = Localinput_body_handle_command_unit_tag_v.string_off tag_lcu;;
  
let pre_tag_nei_sof sof (s, i) = 
  (Localinput_symbol_v.localinput_fence_variable_name_entity_implicit_constructor sof = s)
;;

let tag_loi_nei = Tree_v.only_node_of_node_predicate_off_tree (pre_tag_nei_sof nam_lcu) tag_loi_lcu_st;;

let tag_nei =
  Tag_v.map_entity (* Coerce Down *)
    Localinput_symbol_v.localinput_fence_variable_name_entity_implicit_symbol_off_localinput_symbol
    tag_loi_nei;;

test_number 5 (
tag_nei = provide tag_lcu
);;
