open Make_test_v;;

testing "Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_v with
    Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_u_point_homothety.ml";;

(* Deleting Registers *)


(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_v" "cpu";;

(* Debuging *)

(* toplevel 
   #use "Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let pre_tag_vne (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_entity_symbol_off_localinput_symbol s;;

let tag_loi_vne_l = List.filter pre_tag_vne tag_loi_l;;

let cou = List.length tag_loi_vne_l;;

test_number 1 (
(cou : int ) = 
8
);;

open Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_string_off_provider_v;;

(* Argument tag_vne Poi_h Target *)

let sof_vne = "Poi_h";;

let tag_loi_stl = 
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      fno_inp;;

let pre_tag_lcd_sof sof (s, i) = Localinput_symbol_v.localinput_body_handle_command_creation_define_constructor sof = s;;

let pre_tag_lcd_roo_sof sof t = pre_tag_lcd_sof sof (Tree_v.root_node_off_tree t);;
 
let tag_loi_lcd_st = List_v.only_element_of_predicate_off_list (pre_tag_lcd_roo_sof sof_vne) tag_loi_stl;;
let sym_inp_lcd_st = Tree_v.map Tag_v.entity_off_tag tag_loi_lcd_st;;

test_number 2 (
(sym_inp_lcd_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
           (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
             "Poi_h"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
               (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
                 "Poi_h")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_target_symbol
               (Localinput_body_handle_variable_target_symbol_t.Localinput_body_handle_variable_target_constructor
                 "Poi_h")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_target)));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_target_symbol
               (Localinput_body_block_variable_target_symbol_t.Localinput_body_block_variable_target_constructor
                 "Poi_h"))),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                 (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                   "Poi_h"))),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
                 (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                   Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "property"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "operand"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "target"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "created"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "constructor"))))]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operator_symbol
                 (Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
                   "Hom_b_2"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operand_symbol
                 (Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
                   "Poi_a"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)))])])
);;

test_number 3 (
tag_loi_lcd_st = provide sof_vne
);;
