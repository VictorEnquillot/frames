open Make_test_v;;

testing "Localinput_as_body_handle_command_creation_define_tag_for_context_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_handle_command_creation_define_tag_for_context_subtree_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_handle_command_creation_define_tag_for_context_subtree_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_as_body_handle_command_creation_define_tag_for_context_subtree_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_loi_lcd_stl =
  Localinput_as_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let pre_tag_lvc (s, i) = Localinput_symbol_v.is_localinput_fence_variable_name_context_constructor s;;
let pre_tag_lvc_nod = Tree_v.has_node_of_node_predicate_off_tree pre_tag_lvc;;

let pre_tag_ldc_roo t = pre_tag_lvc (Tree_v.root_node_off_tree t);;

let tag_loi_ldc_stl = List.filter pre_tag_lvc_nod tag_loi_lcd_stl;;

let cou = List.length tag_loi_ldc_stl;;

test_number 1 (
(cou : int ) = 
2
);;

(* all Root Tags *)

let tag_loi_ldc_roo_l = List.map Tree_v.root_node_off_tree tag_loi_ldc_stl;;

test_number 2 (
( tag_loi_ldc_roo_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_db1"))))),
    [1; 38; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_hom"))))),
    [2; 38; 1; 21; 1])]
);;

(* Subtree for Con_hom *)

let sof = "Con_hom";;
let pre_tag_ldc_sof sof (s, i) = Localinput_symbol_v.localinput_body_handle_command_creation_define_constructor sof = s;;
let pre_tag_ldc_roo_sof sof t = pre_tag_ldc_sof sof (Tree_v.root_node_off_tree t);;

let tag_loi_Con_hom_st = List_v.only_element_of_predicate_off_list (pre_tag_ldc_roo_sof sof) tag_loi_ldc_stl;;
let sym_inp_Con_hom_st = Tree_v.map Tag_v.entity_off_tag tag_loi_Con_hom_st;;

test_number 3 (
( sym_inp_Con_hom_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_hom"))))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_command_symbol
           (Localinput_fence_keyword_command_symbol_t.Localinput_fence_keyword_command_define_symbol
             (Localinput_fence_keyword_command_define_symbol_t.Localinput_fence_keyword_command_define_constructor
               "Con_hom")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_block_symbol
         (Localinput_body_block_symbol_t.Localinput_body_block_define_symbol
           (Localinput_body_block_define_symbol_t.Localinput_body_block_define_constructor
             "Con_hom"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
             (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
               "Con_hom"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
               (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
                 "Con_hom")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               (Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_context_symbol
                 (Localinput_fence_keyword_variable_kind_context_symbol_t.Localinput_fence_keyword_variable_kind_context_constructor
                   "Con_hom")))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_context_symbol
               (Localinput_body_block_variable_context_symbol_t.Localinput_body_block_variable_context_constructor
                 "Con_hom"))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_createdby_symbol
                 (Localinput_fence_cell_createdby_symbol_t.Localinput_fence_cell_createdby_constructor
                   "Hom_b_2"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
                 (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
                   "figure"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
               (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
                 (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
                   (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                     "context")))))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
               (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                 "define")))))])])
);;

test_number 4 (
tag_loi_ldc_stl = provide nam_ibo
);;
