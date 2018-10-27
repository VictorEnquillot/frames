open Make_test_v;;

testing "Make_argument_by_localinput_fence_variable_name_entity_tag_provider_v with
    Make_argument_by_localinput_fence_variable_name_entity_tag_provider_u_point_homothety.ml";;

(* Deleting Registers *)




(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Make_argument_by_localinput_fence_variable_name_entity_tag_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let fno_inp = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

(* open Make_argument_by_localinput_fence_variable_name_entity_tag_provider_v;; *)

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide fno_inp;;

let nam_vne = "Poi_a";;

let pre_tag_vne_sof sof (s, i) = (Localinput_symbol_v.is_localinput_fence_variable_name_entity_symbol_off_localinput_symbol s) && (Localinput_symbol_v.string_off s = sof);; 

let tag_loi_vne = List_v.only_element_of_predicate_off_list (pre_tag_vne_sof nam_vne) tag_loi_l;;

test_number 1 (
(tag_loi_vne : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Poi_a")))),
 [1; 2; 4; 38; 11])
);;

(* Argument *)

let tag_vne = Localinput_fence_variable_name_entity_tag_v.localinput_fence_variable_name_entity_tag_off_localinput_tag tag_loi_vne;;

let tag_loi_lcd_st =
    Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_tag_provider_v.provide
      tag_vne;;

test_number 2 (
(tag_loi_lcd_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
              (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
                "Poi_a"))))),
     [4; 38; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
      [1; 4; 38; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
            (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
              "Poi_a"))),
       [2; 4; 38; 11]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
               (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                 "Poi_a")))),
        [1; 2; 4; 38; 11]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_handle_symbol
            (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
              (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
                (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
                  "Poi_a")))),
         [2; 2; 4; 38; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_external)),
          [1; 2; 2; 4; 38; 11]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_body_symbol
            (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
                (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
                  "Poi_a"))),
           [2; 2; 2; 4; 38; 11]),
         [Tree_t.Inner
           ((Localinput_symbol_t.Localinput_body_symbol
              (Localinput_body_symbol_t.Localinput_body_box_symbol
                (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                  (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                    "Poi_a"))),
             [1; 2; 2; 2; 4; 38; 11]),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
                 (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                   Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
              [1; 1; 2; 2; 2; 4; 38; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "user"))),
              [2; 1; 2; 2; 2; 4; 38; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "fence"))),
              [3; 1; 2; 2; 2; 4; 38; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "point"))),
              [4; 1; 2; 2; 2; 4; 38; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "constructor"))),
              [5; 1; 2; 2; 2; 4; 38; 11])]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
                 (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
                   "T_A"))),
            [2; 2; 2; 2; 4; 38; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
                 (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
                   "Con_loc"))),
            [3; 2; 2; 2; 4; 38; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
            [4; 2; 2; 2; 4; 38; 11])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
        [3; 2; 4; 38; 11])])])
);;

let pre_tag_bbt (s, i) = Localinput_symbol_v.is_localinput_body_box_type_constructor s;;
let pre_tag_bbt_sof sof (s, i) = (Localinput_symbol_v.localinput_body_box_type_constructor sof = s);;
let tag_loi_lcd_st =
    Localinput_as_body_handle_command_creation_define_tag_subtree_by_localinput_fence_variable_name_entity_tag_provider_v.provide
      tag_vne;;

let tag_loi_bbt = Tree_v.only_node_of_node_predicate_off_tree 
      (pre_tag_bbt_sof nam_vne) 
      tag_loi_lcd_st;;

test_number 3 (
(tag_loi_bbt : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_box_symbol
      (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
        (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor "Poi_a"))),
   [1; 2; 2; 2; 4; 38; 11])
);;
