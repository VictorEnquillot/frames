open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_nwc  *)
(*        context *)
(* 	 sector "internal" *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Define_context_con_nwc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_lco_l =
    Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
      bna_ibo;;

let sym_lco_l = List.map (* Coerce Down *)
      Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_lco_l;;

test_number 1 (
(sym_lco_l : Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol list ) =
[Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
  (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
    "Con_nwc");
 Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
  (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
    "Define_context_con_nwc")]
);;

let sym_loi_stl = List.map 
    (fun sl ->
      (Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide (bna_ibo, sl)
      )
    )  
    sym_lco_l;;

test_number 2 (
( sym_loi_stl : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_body_symbol
        (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
          (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
            (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
              (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
                (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                  "Con_nwc")))))),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_fence_symbol
          (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
            (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
              (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
                (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                  "Con_nwc"))))));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_set_symbol
        (Localinput_set_symbol_t.Localinput_set_body_symbol
          (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
            (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
              (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
                "Con_nwc")))),
      [Tree_t.Leaf
        (Localinput_symbol_t.Localinput_set_symbol
          (Localinput_set_symbol_t.Localinput_set_fence_symbol
            (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
              (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
                (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
                  "Con_nwc")))));
       Tree_t.Inner
        (Localinput_symbol_t.Localinput_set_symbol
          (Localinput_set_symbol_t.Localinput_set_body_symbol
            (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
              (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
                (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
                  (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
                    "Con_nwc"))))),
        [Tree_t.Leaf
          (Localinput_symbol_t.Localinput_set_symbol
            (Localinput_set_symbol_t.Localinput_set_fence_symbol
              (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
                (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_context_symbol
                  (Localinput_set_fence_variable_kind_context_symbol_t.Localinput_set_fence_variable_kind_context_constructor
                    "Con_nwc")))));
         Tree_t.Inner
          (Localinput_symbol_t.Localinput_set_symbol
            (Localinput_set_symbol_t.Localinput_set_body_symbol
              (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol
                  (Localinput_set_body_block_variable_context_symbol_t.Localinput_set_body_block_variable_context_constructor
                    "Con_nwc")))),
          [Tree_t.Leaf
            (Localinput_symbol_t.Localinput_set_symbol
              (Localinput_set_symbol_t.Localinput_set_fence_symbol
                (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                  (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol
                    (Localinput_set_fence_cell_sector_symbol_t.Localinput_set_fence_cell_sector_constructor
                      "internal")))));
           Tree_t.Leaf
            (Localinput_symbol_t.Localinput_set_symbol
              (Localinput_set_symbol_t.Localinput_set_fence_symbol
                (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                  (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
                    (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                      "skeleton")))));
           Tree_t.Leaf
            (Localinput_symbol_t.Localinput_set_symbol
              (Localinput_set_symbol_t.Localinput_set_fence_symbol
                (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                  (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                    (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                      "nwchem")))));
           Tree_t.Leaf
            (Localinput_symbol_t.Localinput_set_symbol
              (Localinput_set_symbol_t.Localinput_set_fence_symbol
                (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                  (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
                    (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
                      "cc_pvtz")))));
           Tree_t.Leaf
            (Localinput_symbol_t.Localinput_set_symbol
              (Localinput_set_symbol_t.Localinput_set_fence_symbol
                (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                  (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                    (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                      (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                        "context"))))))])]);
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_set_symbol
          (Localinput_set_symbol_t.Localinput_set_fence_symbol
            (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
              (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                  (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                    "define"))))))])]);
   Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_symbol
      (Localinput_set_symbol_t.Localinput_set_fence_symbol
        (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
          (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
            (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol
              (Localinput_set_fence_keyword_command_stop_symbol_t.Localinput_set_fence_keyword_command_stop_constructor
                "inputbox"))))))]
);;

let nam_ibo = Basicname_v.string_off bna_ibo;;

let sym_loi_ibo = Localinput_symbol_v.localinput_context_inputbox_constructor nam_ibo;;

test_number 3 (
(sym_loi_ibo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
     (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
       "Define_context_con_nwc"))
);;

let sym_loi_t = Tree_v.make_of_node sym_loi_ibo sym_loi_stl;;

test_number 4 (
( sym_loi_t : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Define_context_con_nwc")),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
             (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
               (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
                 (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                   "Con_nwc")))))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
               (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
                 (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
                   "Con_nwc"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
               (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
                 "Con_nwc")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
               (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
                 (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
                   "Con_nwc")))));
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_body_symbol
             (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
               (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
                 (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
                   (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
                     "Con_nwc"))))),
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_fence_symbol
               (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
                 (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_context_symbol
                   (Localinput_set_fence_variable_kind_context_symbol_t.Localinput_set_fence_variable_kind_context_constructor
                     "Con_nwc")))));
          Tree_t.Inner
           (Localinput_symbol_t.Localinput_set_symbol
             (Localinput_set_symbol_t.Localinput_set_body_symbol
               (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
                 (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol
                   (Localinput_set_body_block_variable_context_symbol_t.Localinput_set_body_block_variable_context_constructor
                     "Con_nwc")))),
           [Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol
                     (Localinput_set_fence_cell_sector_symbol_t.Localinput_set_fence_cell_sector_constructor
                       "internal")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
                     (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                       "skeleton")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                     (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                       "nwchem")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
                   (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
                     (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
                       "cc_pvtz")))));
            Tree_t.Leaf
             (Localinput_symbol_t.Localinput_set_symbol
               (Localinput_set_symbol_t.Localinput_set_fence_symbol
                 (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
                   (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                     (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                       (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                         "context"))))))])]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                   (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                     "define"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
             (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol
               (Localinput_set_fence_keyword_command_stop_symbol_t.Localinput_set_fence_keyword_command_stop_constructor
                 "inputbox"))))))])
);;

test_number 5 (
sym_loi_t = provide bna_ibo
);;
