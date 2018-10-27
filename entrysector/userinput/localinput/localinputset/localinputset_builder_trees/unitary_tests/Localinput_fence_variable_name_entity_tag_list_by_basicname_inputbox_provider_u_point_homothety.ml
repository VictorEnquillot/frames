open Make_test_v;;

testing "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_bhc_l = Localinput_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide fno_inp;;
let cou = List.length tag_bhc_l;;

test_number 1 (
(cou : int ) = 
9
);;
(*
(* Argument tag_hcu Poi_h *)

let sof_hcu = "Poi_h";;
let pre_tag_hcu_sof sof (s, i) = (Localinput_body_handle_command_symbol_v.is_input_body_handle_command_tounit_symbol_off_input_body_handle_command_symbol s) && (Localinput_body_handle_command_symbol_v.string_off s = sof);;

let tag_bhc_hcu = List_v.only_element_of_predicate_off_list (pre_tag_hcu_sof sof_hcu) tag_bhc_l;;

test_number 2 (
( tag_bhc_hcu :
  Localinput_body_handle_command_symbol_t.input_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
    (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
      (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
        "Poi_h")),
   [9; 38; 11])
);;

open Localinput_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v;;

let tag_hcu = Tag_v.map_entity 
    Localinput_body_handle_command_symbol_v.input_body_handle_command_tounit_symbol_off_input_body_handle_command_symbol
    tag_bhc_hcu
;;

let tag_bhc = Tag_v.map_entity (* Coerce Up *)
    Localinput_body_handle_command_symbol_v.input_body_handle_command_symbol_of_input_body_handle_command_tounit_symbol
    tag_hcu;;

test_number 3 (
(tag_bhc :
  Localinput_body_handle_command_symbol_t.input_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
    (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
      (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
        "Poi_h")),
   [9; 38; 11])
);;

let tag_inp_hcu_st = 
    Localinput_as_body_handle_command_tag_subtree_by_input_body_handle_command_tag_provider_v.provide
      tag_bhc;;
let sym_inp_hcu_st = Tree_v.map Tag_v.entity_off_tag tag_inp_hcu_st;;

test_number 4 (
(sym_inp_hcu_st : Localinput_symbol_t.input_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
           (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
             (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
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

test_number 5 (
tag_nei = provide fno_inp
);;
*)
