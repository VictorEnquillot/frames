open Make_test_v;;

testing "Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)










(* Tracing *)


(* toplevel 
   #use "Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_as_body_handle_command_define_tag_subtree_list_by_basicname_inputbox_provider_v;;

let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_com_stl = provide nam_ibo;;

let cou = List.length tag_loi_com_stl;;

test_number 1 (
(cou : int ) = 
8
);;

let pre_tag_tar_sof sof (s, i) = (Localinput_symbol_v.localinput_fence_variable_name_entity_target_constructor sof = s);;
let pre_tag_ext_sof sof (s, i) = (Localinput_symbol_v.localinput_fence_variable_name_entity_external_constructor sof = s);;
let pre_tag_ope_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_variable_operator_constructor sof = s);;


let tag_loi_lcd_stl = provide nam_ibo;;

(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "transformation" "homothety" ] *)
(* 	    cofactor  *)
(*            cofactor_entity Cen_b  *)
(*            cofactor_basic 2.0  *)
(* 	      end -- cofactor *)
(*          end -- operator *)
(*        end -- define *)

let pre_tre_ope sof = Tree_v.has_node_of_node_predicate_off_tree (pre_tag_ope_sof sof);;

let tag_loi_hom_b_2_st = List_v.only_element_of_predicate_off_list (pre_tre_ope "Hom_b_2") tag_loi_lcd_stl;; 

let tag_loi_tso_l = Tree_v.root_topson_node_list_off_tree tag_loi_hom_b_2_st;;

test_number 2 (
(tag_loi_tso_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_define)),
    [5; 38; 11]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
         Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)),
    [1; 5; 38; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_block_symbol
       Localinput_body_block_symbol_t.Localinput_body_block_define),
    [2; 5; 38; 11])]
);;

let sym_inp_hom_b_2_st = Tree_v.map Tag_v.entity_off_tag tag_loi_hom_b_2_st;;

test_number 3 (
( sym_inp_hom_b_2_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_define)),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define)));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         Localinput_body_block_symbol_t.Localinput_body_block_define),
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
             Localinput_body_block_symbol_t.Localinput_body_block_variable_operator),
         [Tree_t.Inner
           (Localinput_symbol_t.Localinput_body_symbol
             (Localinput_body_symbol_t.Localinput_body_box_symbol
               Localinput_body_box_symbol_t.Localinput_body_box_type),
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
                     "transformation"))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_fence_symbol
               (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
                 (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
                   (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
                     "homothety"))))]);
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

let tag_loi_bod_l = List.filter pre_tag_bod tag_loi_l;;

test_number 4 (
(tag_loi_bod_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_command_symbol
       Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_define),
    [1; 13; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_box_symbol
       Localinput_body_box_symbol_t.Localinput_body_box_type),
    [2; 1; 13; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_expression_symbol
       Localinput_body_expression_symbol_t.Localinput_body_expression_cofactor),
    [3; 1; 13; 11])]
);;

let tag_loi_bty_st = Tree_v.subtree_find_of_node_predicate_off_tree pre_tag_bty tag_loi_t;;

test_number 5 (
( tag_loi_bty_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        Localinput_body_box_symbol_t.Localinput_body_box_type),
     [2; 1; 13; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_type),
      [1; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "operator"))),
      [2; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "transformation"))),
      [3; 2; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "homothety"))),
      [4; 2; 1; 13; 11])])
);;


let tag_loi_eco_st = Tree_v.subtree_find_of_node_predicate_off_tree pre_tag_eco tag_loi_t;;

test_number 6 (
( tag_loi_eco_st : Localinput_symbol_t.localinput_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_expression_symbol
        Localinput_body_expression_symbol_t.Localinput_body_expression_cofactor),
     [3; 1; 13; 11]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
           (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
             "Cen_b"))),
      [1; 3; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
           (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
             "2.0"))),
      [2; 3; 1; 13; 11]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_end),
      [3; 3; 1; 13; 11])])
);;
