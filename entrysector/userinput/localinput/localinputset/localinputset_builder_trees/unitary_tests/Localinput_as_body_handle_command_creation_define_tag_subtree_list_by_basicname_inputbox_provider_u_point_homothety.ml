open Make_test_v;;

testing "Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)








(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v;;

let tag_inp_bhc_stl =
    Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
    fno_inp;;

let pre_tag_ccd (s, i) = Localinput_symbol_v.is_input_body_handle_command_creation_define_constructor s;;

let pre_tag_ccd_roo t = pre_tag_ccd (Tree_v.root_node_off_tree t);;

List.filter pre_tag_ccd_roo tag_inp_bhc_stl;;

let tag_inp_ccd_stl = provide fno_inp;;

let cou = List.length tag_inp_ccd_stl;;

test_number 1 (
(cou : int ) = 
8
);;

(* all Root Tags *)

let tag_inp_ccd_roo_l = List.map Tree_v.root_node_off_tree tag_inp_ccd_stl;;

test_number 2 (
( tag_inp_ccd_roo_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_loc"))))),
    [1; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_hom"))))),
    [2; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Cen_b"))))),
    [3; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [4; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Hom_b_2"))))),
    [5; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
    [6; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [7; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [8; 38; 11])]
);;

(* Subtree for Hom_b_2 *)

let nam_var = "Hom_b_2";;
let pre_tag_ccd_sof sof (s, i) = Localinput_symbol_v.input_body_handle_command_creation_define_constructor sof = s;;
let pre_tag_ccd_roo_sof sof t = pre_tag_ccd_sof sof (Tree_v.root_node_off_tree t);;

let tag_inp_hom_b_2_st = List_v.only_element_of_predicate_off_list (pre_tag_ccd_roo_sof nam_var) tag_inp_ccd_stl;;
let sym_inp_hom_b_2_st = Tree_v.map Tag_v.entity_off_tag tag_inp_hom_b_2_st;;

test_number 3 (
( sym_inp_hom_b_2_st : Localinput_symbol_t.input_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Hom_b_2"))))),
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
             "Hom_b_2"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_operator_symbol
             (Localinput_fence_variable_name_operator_symbol_t.Localinput_fence_variable_name_operator_constructor
               "Hom_b_2"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_operator_symbol
               (Localinput_body_handle_variable_operator_symbol_t.Localinput_body_handle_variable_operator_constructor
                 "Hom_b_2")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_operator)));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_operator_symbol
               (Localinput_body_block_variable_operator_symbol_t.Localinput_body_block_variable_operator_constructor
                 "Hom_b_2"))),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
                 (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
                   "Hom_b_2"))),
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
                     "operator"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "body"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "creation"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "transformation"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "constructor"))))]);
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_operation_symbol
                 (Localinput_fence_cell_operation_symbol_t.Localinput_fence_cell_operation_constructor
                   "homothety"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_ondomain_symbol
                 (Localinput_fence_cell_ondomain_symbol_t.Localinput_fence_cell_ondomain_constructor
                   "user"))));
          Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_handle_symbol
               Localinput_body_handle_symbol_t.Localinput_body_handle_cofactor),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
                 (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
                   (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
                     "2.0"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
                 (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
                   (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
                     "Cen_b"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
                 (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                   Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)))]);
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

let pre_tag_bbt_sof sof (s, i) = (Localinput_symbol_v.input_body_box_type_constructor sof = s);;

let tag_inp_bbt_hom_b_2_st = Tree_v.only_subtree_of_node_predicate_off_tree (pre_tag_bbt_sof nam_var) tag_inp_hom_b_2_st;;

test_number 4 (
(tag_inp_bbt_hom_b_2_st :
  Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
          (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
            "Hom_b_2"))),
     [1; 2; 2; 2; 5; 38; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type)),
      [1; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "operator"))),
      [2; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "body"))),
      [3; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "creation"))),
      [4; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "transformation"))),
      [5; 1; 2; 2; 2; 5; 38; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "constructor"))),
      [6; 1; 2; 2; 2; 5; 38; 11])])
);;
