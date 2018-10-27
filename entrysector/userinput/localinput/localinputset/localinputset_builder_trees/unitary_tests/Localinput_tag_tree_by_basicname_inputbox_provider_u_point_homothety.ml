open Make_test_v;;

testing "Localinput_tag_tree_by_basicname_inputbox_provider_v with
    Localinput_tag_tree_by_basicname_inputbox_provider_u_point_homothety.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_tag_tree_by_basicname_inputbox_provider_u_point_homothety.ml";; 

*)

 (* Input File *)

let nof_inp = "Print_homothety_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

open Localinput_tag_tree_by_basicname_inputbox_provider_v;;

let tag_inp_t = provide fno_inp;;

let tag_inp_rts_l = Tree_v.root_topson_node_list_off_tree tag_inp_t;;

test_number 1 (
(tag_inp_rts_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "input")),
    [12]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_file_symbol
       (Localinput_context_file_symbol_t.Localinput_context_file_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a.inp")),
    [37; 12])]
);; 

let pre_tag_ccd (s, i) = Localinput_symbol_v.is_input_body_handle_command_creation_define_constructor s;;

let pre_tag_com (s, i) = Localinput_symbol_v.is_input_body_handle_command_symbol_off_input_symbol s;;
let pre_tag_vna (s, i) = Localinput_symbol_v.is_input_fence_variable_name_symbol_off_input_symbol s;;
let pre_tag_com_vna (s, i) = pre_tag_com (s, i) || pre_tag_vna (s, i);;

let tag_com_l = Tree_v.node_list_of_node_predicate_off_tree pre_tag_com tag_inp_t;;

test_number 2 (
(tag_com_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_loc"))))),
    [1; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_hom"))))),
    [2; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Cen_b"))))),
    [3; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [4; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Hom_b_2"))))),
    [5; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_h"))))),
    [6; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [7; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [8; 37; 12]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
           (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
             (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
               "Poi_h"))))),
    [9; 37; 12])]
);;

let tag_vna_l = Tree_v.node_list_of_node_predicate_off_tree pre_tag_vna tag_inp_t;;

test_number 3 (
(tag_vna_l : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
         (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
           "Con_loc"))),
    [1; 2; 1; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
         (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
           "Con_hom"))),
    [1; 2; 2; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Cen_b")))),
    [1; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Poi_a")))),
    [1; 2; 4; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_operator_symbol
         (Localinput_fence_variable_name_operator_symbol_t.Localinput_fence_variable_name_operator_constructor
           "Hom_b_2"))),
    [1; 2; 5; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_target_symbol
           (Localinput_fence_variable_name_entity_target_symbol_t.Localinput_fence_variable_name_entity_target_constructor
             "Poi_h")))),
    [1; 2; 6; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_len")))),
    [1; 2; 7; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_ang")))),
    [1; 2; 8; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
           (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
             "Poi_h")))),
    [1; 2; 9; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_len")))),
    [2; 2; 2; 9; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_ang")))),
    [3; 2; 2; 9; 37; 12])]
);;

(* All Subtrees Define *)

let pre_tag_sof sof (s, i) = (pre_tag_vna (s, i)) && (Localinput_symbol_v.string_off s = sof);;
let tag_inp_com_stl = Tree_v.subtree_list_of_node_predicate_off_tree pre_tag_com tag_inp_t;;

(* Subtree entry "Cen_b" *)

let pre_nod_sof sof = 
    (fun (s, i) ->
      (Localinput_symbol_v.is_input_body_block_variable_external_constructor s) && (Localinput_symbol_v.string_off s = sof)
    );;

let tag_inp_cen_b_st = (Tree_v.subtree_find_of_node_predicate_off_tree (pre_nod_sof "Cen_b")) tag_inp_t;;

test_number 4 (
( tag_inp_cen_b_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_block_symbol
        (Localinput_body_block_symbol_t.Localinput_body_block_variable_external_symbol
          (Localinput_body_block_variable_external_symbol_t.Localinput_body_block_variable_external_constructor
            "Cen_b"))),
     [2; 2; 2; 3; 37; 12]),
   [Tree_t.Inner
     ((Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_box_symbol
          (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
            (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
              "Cen_b"))),
       [1; 2; 2; 2; 3; 37; 12]),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
               (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
                 "Cen_b")))),
        [1; 1; 2; 2; 2; 3; 37; 12]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
           (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
             (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
               "user"))),
        [2; 1; 2; 2; 2; 3; 37; 12]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
           (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
             (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
               "fence"))),
        [3; 1; 2; 2; 2; 3; 37; 12]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
           (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
             (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
               "point"))),
        [4; 1; 2; 2; 2; 3; 37; 12]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
           (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
             (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
               "constructor"))),
        [5; 1; 2; 2; 2; 3; 37; 12])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
           (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
             "BC_B"))),
      [2; 2; 2; 2; 3; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
           (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
             "Con_loc"))),
      [3; 2; 2; 2; 3; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
             (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
               "entry")))),
      [4; 2; 2; 2; 3; 37; 12])])
);;

(* Subtree "Cen_b" Leaves *)

let tag_inp_cen_b_fl = Tree_v.leaf_node_list_off_tree tag_inp_cen_b_st;;

test_number 5 (
( tag_inp_cen_b_fl : Localinput_symbol_t.input_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
           (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
             "Cen_b")))),
    [1; 1; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "user"))),
    [2; 1; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "fence"))),
    [3; 1; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "point"))),
    [4; 1; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
         (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
           "constructor"))),
    [5; 1; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
       (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
         (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
           "BC_B"))),
    [2; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
       (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
         (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
           "Con_loc"))),
    [3; 2; 2; 2; 3; 37; 12]);
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
       (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
         (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
           (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
             "entry")))),
    [4; 2; 2; 2; 3; 37; 12])]
);;

(* Subtree operator "Hom_b_2" *)

let pre_tag_hvo_sof sof (s, i) = (Localinput_symbol_v.input_body_handle_variable_operator_constructor sof = s);;

let tag_inp_hvo_st = Tree_v.subtree_of_node_predicate_off_tree (pre_tag_hvo_sof "Hom_b_2") tag_inp_t;;

let sym_inp_hvo_st = Tree_v.map Tag_v.entity_off_tag tag_inp_hvo_st;;

test_number 6 (
(sym_inp_hvo_st : Localinput_symbol_t.input_symbol Tree_t.tree ) =
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
         (Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_operator_symbol
           (Localinput_fence_keyword_variable_kind_operator_symbol_t.Localinput_fence_keyword_variable_kind_operator_constructor
             "Hom_b_2")))));
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
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
               (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
                 "Hom_b_2")))));
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
             (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
               (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
                 "operator")))))]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end_symbol
             (Localinput_fence_keyword_word_end_symbol_t.Localinput_fence_keyword_word_end_constructor
               "operator")))))])])
);;


(* Box_type *)

let pre_tag_bty (s, i) = Localinput_symbol_v.is_input_body_box_type_constructor s;;

let tag_inp_bty_st = Tree_v.subtree_of_node_predicate_off_tree pre_tag_bty tag_inp_hvo_st;;

test_number 7 (
( tag_inp_bty_st : Localinput_symbol_t.input_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_box_symbol
        (Localinput_body_box_symbol_t.Localinput_body_box_type_symbol
          (Localinput_body_box_type_symbol_t.Localinput_body_box_type_constructor
            "Hom_b_2"))),
     [1; 2; 2; 2; 5; 37; 12]),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
         (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
           (Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_type_symbol
             (Localinput_fence_keyword_word_type_symbol_t.Localinput_fence_keyword_word_type_constructor
               "Hom_b_2")))),
      [1; 1; 2; 2; 2; 5; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "operator"))),
      [2; 1; 2; 2; 2; 5; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "body"))),
      [3; 1; 2; 2; 2; 5; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "creation"))),
      [4; 1; 2; 2; 2; 5; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "transformation"))),
      [5; 1; 2; 2; 2; 5; 37; 12]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_basic_word_symbol
         (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_lowercase_symbol
           (Localinput_fence_basic_word_lowercase_symbol_t.Localinput_fence_basic_word_lowercase_constructor
             "constructor"))),
      [6; 1; 2; 2; 2; 5; 37; 12])])
);;

let pre_tag_bwl (s, i) = Localinput_symbol_v.is_input_fence_basic_word_lowercase_constructor s;;

let tag_inp_bwl_l = Tree_v.node_list_of_node_predicate_off_tree  pre_tag_bwl  tag_inp_bty_st;;

let wor_bty_l = List.map Localinput_tag_v.string_off tag_inp_bwl_l;;

test_number 8 (
(wor_bty_l : string list ) = 
 ["operator"; "body"; "creation"; "transformation"; "constructor"]
);;

let nam_bty = List_v.name_underscored_off_string_list wor_bty_l;;

test_number 9 (
(nam_bty : string ) = 
"operator_body_creation_transformation_constructor"
);;

