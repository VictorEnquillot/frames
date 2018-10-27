
open Make_test_v;;

testing "Localinput_symbol_subtree_by_basicname_inputbox_provider_v with
    Localinput_symbol_subtree_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Localinput_symbol_subtree_by_basicname_inputbox_provider_u_coordinate_tuple_print.ml";; 

*)

(* Input File *)

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_coordinate_tuple_point_t_a";;
let nam_ibo = Localinputbox_name_by_localinput_nameoffile_provider_v.provide nam_ibo;;

open Localinput_symbol_subtree_by_basicname_inputbox_provider_v;;

let sym_inp_t = provide nam_ibo;;

let sym_inp_rts_l = Tree_v.root_topson_node_list_off_tree sym_inp_t;;

test_number 1 (
(sym_inp_rts_l : Localinput_symbol_t.localinput_symbol list ) =
 [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_file_symbol
      (Localinput_context_file_symbol_t.Localinput_context_file_constructor
        "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_coordinate_tuple_point_t_a"));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Con_loc")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Ctc_a")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
          (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
            (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
              "Ctc_a")))));
   Localinput_symbol_t.Localinput_fence_symbol
    (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
      (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
        Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_stop))]
);;

let pre_sym_hcd_sof sof s = Localinput_symbol_v.localinput_body_handle_command_creation_define_constructor sof = s;;

let sym_inp_con_loc_st = Tree_v.subtree_find_of_node_predicate_off_tree (pre_sym_hcd_sof "Con_loc") sym_inp_t;;

test_number 2 (
( sym_inp_con_loc_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_loc"))))),
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
             "Con_loc"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_context_symbol
             (Localinput_fence_variable_name_context_symbol_t.Localinput_fence_variable_name_context_constructor
               "Con_loc"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_handle_symbol
           (Localinput_body_handle_symbol_t.Localinput_body_handle_variable_kind_symbol
             (Localinput_body_handle_variable_kind_symbol_t.Localinput_body_handle_variable_context_symbol
               (Localinput_body_handle_variable_context_symbol_t.Localinput_body_handle_variable_context_constructor
                 "Con_loc")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
             (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_variable_kind_symbol
               Localinput_fence_keyword_variable_kind_symbol_t.Localinput_fence_keyword_variable_kind_context)));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_body_symbol
           (Localinput_body_symbol_t.Localinput_body_block_symbol
             (Localinput_body_block_symbol_t.Localinput_body_block_variable_context_symbol
               (Localinput_body_block_variable_context_symbol_t.Localinput_body_block_variable_context_constructor
                 "Con_loc"))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_database_symbol
                 (Localinput_fence_cell_database_symbol_t.Localinput_fence_cell_database_constructor
                   "db1"))));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_fence_symbol
             (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
               (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
                 (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
                   "elementary"))));
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

let pre_sym_bbu_sof sof s = Localinput_symbol_v.localinput_body_box_units_constructor sof = s;;

let sym_inp_ctc_a_st = Tree_v.subtree_find_of_node_predicate_off_tree (pre_sym_bbu_sof "Ctc_a") sym_inp_t;;

test_number 3 (
(sym_inp_ctc_a_st : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
Tree_t.Inner
 (Localinput_symbol_t.Localinput_body_symbol
   (Localinput_body_symbol_t.Localinput_body_box_symbol
     (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
       (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
         "Ctc_a"))),
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
             "Uni_len")))))])
);;

let pre_sym_nee_sof sof s = Localinput_symbol_v.localinput_fence_variable_name_entity_external_constructor sof = s;;

let sym_inp_uni_len_st = Tree_v.subtree_find_of_node_predicate_off_tree (pre_sym_nee_sof "Uni_len") sym_inp_t;;

test_number 4 (
(sym_inp_uni_len_st : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_fence_symbol
     (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
       (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
         (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_external_symbol
           (Localinput_fence_variable_name_entity_external_symbol_t.Localinput_fence_variable_name_entity_external_constructor
             "Uni_len")))))
);;

let pre_sym_pri_sof sof s = Localinput_symbol_v.localinput_body_handle_command_unit_print_constructor sof = s;;

let sym_inp_pri_st = Tree_v.subtree_find_of_node_predicate_off_tree (pre_sym_pri_sof "Ctc_a") sym_inp_t;;

test_number 5 (
( sym_inp_pri_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Ctc_a"))))),
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
             "Ctc_a"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_variable_name_symbol
           (Localinput_fence_variable_name_symbol_t.Localinput_fence_variable_name_entity_symbol
             (Localinput_fence_variable_name_entity_symbol_t.Localinput_fence_variable_name_entity_implicit_symbol
               (Localinput_fence_variable_name_entity_implicit_symbol_t.Localinput_fence_variable_name_entity_implicit_constructor
                 "Ctc_a")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_box_symbol
           (Localinput_body_box_symbol_t.Localinput_body_box_units_symbol
             (Localinput_body_box_units_symbol_t.Localinput_body_box_units_constructor
               "Ctc_a"))),
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
                   "Uni_len")))))]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_word_symbol
             Localinput_fence_keyword_word_symbol_t.Localinput_fence_keyword_word_end)))])])
);;
