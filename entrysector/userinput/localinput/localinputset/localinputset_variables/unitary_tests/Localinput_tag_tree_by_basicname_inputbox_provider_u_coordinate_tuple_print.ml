open Make_test_v;;

testing "Localinput_tag_tree_by_basicname_inputbox_provider_v with
    Localinput_tag_tree_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Localinput_tag_tree_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";; 

*)

 (* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_coordinate_tuple_point_t_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_tag_tree_by_basicname_inputbox_provider_v;;

let tag_loi_t = provide nam_ibo;;

let tag_loi_rts_l = Tree_v.root_topson_node_list_off_tree tag_loi_t;;
 
test_number 1 (
(tag_loi_rts_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "input")),
    [11]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_file_symbol
       (Localinput_context_file_symbol_t.Localinput_context_file_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a")),
    [6; 11])]
);; 

(* All Subtrees Define *)

(* Subtree Define Con_loc *)

let pre_tag_lcd_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_command_creation_define_constructor sof = s);;

let tag_loi_con_loc_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_lcd_sof "Con_loc") tag_loi_t;;

test_number 2 (
(tag_loi_con_loc_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
              (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
                "Con_loc"))))),
     [1; 6; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
      [1; 1; 6; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
            (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
              "Con_loc"))),
       [2; 1; 6; 11]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
             (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
               "Con_loc"))),
        [1; 2; 1; 6; 11]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_handle_symbol
            (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
              (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
                (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
                  "Con_loc")))),
         [2; 2; 1; 6; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_context)),
          [1; 2; 2; 1; 6; 11]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_body_symbol
            (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_variable_context_symbol
                (Localinput_body_block_variable_context_symbol_t.Localinput_body_block_variable_context_constructor
                  "Con_loc"))),
           [2; 2; 2; 1; 6; 11]),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_database_symbol
                 (Localinput_fence_cell_database_symbol_t.Localinput_fence_cell_database_constructor
                   "db1"))),
            [1; 2; 2; 2; 1; 6; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
                 (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
                   "elementary"))),
            [2; 2; 2; 2; 1; 6; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
            [3; 2; 2; 2; 1; 6; 11])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
        [3; 2; 1; 6; 11])])])
);;

(* Subtree entry "Ctc_a" *)

let pre_tag_lcd_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_command_creation_define_constructor sof = s);;

let tag_loi_ctc_a_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_lcd_sof "Ctc_a") tag_loi_t;;

test_number 3 (
( tag_loi_ctc_a_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
            (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
              (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
                "Ctc_a"))))),
     [2; 6; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
      [1; 2; 6; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
            (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
              "Ctc_a"))),
       [2; 2; 6; 11]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
               (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                 "Ctc_a")))),
        [1; 2; 2; 6; 11]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_handle_symbol
            (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
              (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_external_symbol
                (Localinput_body_handle_variable_external_symbol_t.Localinput_body_handle_variable_external_constructor
                  "Ctc_a")))),
         [2; 2; 2; 6; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_external)),
          [1; 2; 2; 2; 6; 11]);
        Tree_t.Inner
         ((Localinput_symbol_t.Localinput_body_symbol
            (Localinput_body_symbol_t.Localinput_body_block_symbol
              (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
                (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
                  "Ctc_a"))),
           [2; 2; 2; 2; 6; 11]),
         [Tree_t.Inner
           ((Localinput_symbol_t.Localinput_body_symbol
              (Localinput_body_symbol_t.Localinput_body_box_symbol
                (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                  (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                    "Ctc_a"))),
             [1; 2; 2; 2; 2; 6; 11]),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
                 (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                   Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
              [1; 1; 2; 2; 2; 2; 6; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "elementary"))),
              [2; 1; 2; 2; 2; 2; 6; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "coordinate_tuple"))),
              [3; 1; 2; 2; 2; 2; 6; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "cartesian"))),
              [4; 1; 2; 2; 2; 2; 6; 11]);
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "constructor"))),
              [5; 1; 2; 2; 2; 2; 6; 11])]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
                 (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
                   "T_A"))),
            [2; 2; 2; 2; 2; 6; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
                 (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
                   "Con_loc"))),
            [3; 2; 2; 2; 2; 6; 11]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
            [4; 2; 2; 2; 2; 6; 11])])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
        [3; 2; 2; 6; 11])])])
);;

(* Subtree "Ctc_a" Leaves *)

let tag_loi_ctc_a_fl = Tree_v.leaf_node_list_off_tree tag_loi_ctc_a_st;;

test_number 4 (
( tag_loi_ctc_a_fl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
    [1; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Ctc_a")))),
    [1; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
         Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_external)),
    [1; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
    [1; 1; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "elementary"))),
    [2; 1; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "coordinate_tuple"))),
    [3; 1; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "cartesian"))),
    [4; 1; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "constructor"))),
    [5; 1; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
       (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
         (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
           "T_A"))),
    [2; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
       (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
         (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
           "Con_loc"))),
    [3; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
    [4; 2; 2; 2; 2; 6; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
    [3; 2; 2; 6; 11])]
);;

(* Subtree print "Ctc_a" *)

let pre_tag_cup_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_command_unit_print_constructor sof = s);;

let tag_loi_ctc_a_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_cup_sof "Ctc_a") tag_loi_t;; 

test_number 5 (
(tag_loi_ctc_a_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_handle_symbol
        (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
          (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
            (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
              (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
                "Ctc_a"))))),
     [4; 6; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_print)),
      [1; 4; 6; 11]);
    Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_block_symbol
          (Localinput_body_block_symbol_t.Localinput_body_block_print_symbol
            (Localinput_body_block_print_symbol_t.Localinput_body_block_print_constructor
              "Ctc_a"))),
       [2; 4; 6; 11]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
               (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
                 "Ctc_a")))),
        [1; 2; 4; 6; 11]);
      Tree_t.Inner
       ((Localinput_symbol_t.Localinput_body_symbol
          (Localinput_body_symbol_t.Localinput_body_box_symbol
            (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
              (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
                "Ctc_a"))),
         [2; 2; 4; 6; 11]),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
               Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_units)),
          [1; 2; 2; 4; 6; 11]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
             (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
               (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
                 (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
                   "Uni_len")))),
          [2; 2; 2; 4; 6; 11])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)),
        [3; 2; 4; 6; 11])])])
);; 
