open Make_test_v;;

testing "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v with
        Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_u_define_con_db1_print_aopef_he2p1.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_u_define_con_db1_print_aopef_he2p1.ml";;

*)

(* define Con_db1  *)
(*        context *)
(* 	    database "db1points" *)
(*          domain "figure" *)
(* 	    end -- context *)
(*        end -- define *)

open Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;

let sym_lex_lco_l =
    Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 (
(sym_lex_lco_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Seg_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Uni_len"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
      (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
        "Print_aopef_he2p1"))]
);;

let sym_lex_top = List.nth sym_lex_lco_l 0;;

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
     (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
       "Con_db1"))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 3 (
(nam_var : string ) = 
"Con_db1"
);;

let sym_lco = (* Coerce Down *) 
    Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 4 (
(sym_lco :
  Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol ) =
  Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
   (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
     "Con_db1")
);;

let sym_lex_lco_sl = 
    Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide
      (nam_ibo, sym_lco);;

test_number 5 (
(sym_lex_lco_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_db1"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "db1points")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "db1points"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
        (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
          "figure")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "figure"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "context")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")))]
);;

let sym_lex_rig_sl = List.tl sym_lex_lco_sl;;
let sym_lex_rig_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rig_sl;;

test_number 6 (
(sym_lex_rig_ssl :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_db1"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
        (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
          "db1points")))]
);;

let sym_loi_key = 
  Localinput_symbol_v.localinput_set_fence_keyword_command_define_constructor
    nam_var;; 

test_number 7 (  
( sym_loi_key : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
         (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
           (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
             "Con_db1")))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_key;;

test_number 8 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_define_symbol
             (Localinput_set_fence_keyword_command_define_symbol_t.Localinput_set_fence_keyword_command_define_constructor
               "Con_db1"))))))
);;

let sym_loi_han = 
  Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var;; 
      
test_number 9 (
(sym_loi_han : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
       (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
         (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
           (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
             (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
               "Con_db1"))))))
);;

let (sym_loi_blo_st, sym_lex_rem_sl)  =
  Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (nam_ibo, sym_lex_rig_sl);;

test_number 10 (
( sym_loi_blo_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
           (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
             "Con_db1")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
           (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
             (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
               "Con_db1")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
             (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
               (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
                 "Con_db1"))))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
             (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_context_symbol
               (Localinput_set_fence_variable_kind_context_symbol_t.Localinput_set_fence_variable_kind_context_constructor
                 "Con_db1")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
               (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
                 "db1points")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
                 (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                   "db1points")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
                 (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                   "figure")))));
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
                 "define"))))))])
);;

test_number 11 (
(sym_lex_rem_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[]
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st];;

test_number 12 (
 sym_loi_st = provide (nam_ibo, sym_lco)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
Localinput_parser_tree_by_basicname_inputbox_provider_v.invariant_of_tree sym_loi_st;;
