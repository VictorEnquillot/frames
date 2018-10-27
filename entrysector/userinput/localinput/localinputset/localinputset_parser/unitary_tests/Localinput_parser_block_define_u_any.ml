open Make_test_v;;

testing "Localinput_parser_block_define_v with
    Localinput_parser_block_define_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;


(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_parser_block_define_v" "debug";;

(* Debuging *)


(* toplevel 
   #use "Localinput_parser_block_define_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_aopef_he2p1";;
let wor_cap_n_sym_lvk_dl = Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(wor_cap_n_sym_lvk_dl :
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_t.doublet list ) =
  [("Con_nwc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
   ("Aopef_he2p1",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Uni_len",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   ("Uni_ang",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;
let pre_lex_pri = Localinput_lexer_symbol_v.is_localinput_lexer_command_print;;

let sym_lex_def_ll = List.filter (fun l -> List.length l > 2) (List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l);;

let sym_lex_def_3l = List.map (List_v.sublist_included_of_predicate_of_length_of_list pre_lex_def 3) sym_lex_def_ll;;

let sym_lex_aop_l = List.nth sym_lex_def_3l 1;;

open Localinput_parser_v;;

let wor_cap = "Con_nwc";;
let sym_lex_con_l = List.find (fun l -> Localinput_lexer_symbol_v.string_off (List.nth l 1) = wor_cap) sym_lex_def_ll;;

test_number 2 (
(sym_lex_con_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;

   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Con_nwc")));

   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context;

   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "skeleton")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;

   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "nwchem")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;

   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_databox;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "cc_pvtz")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_con_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_con_l;;

let pop = Stack.pop sym_lex_con_s;;

test_number 3 (
( pop : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define
);;

let top = Stack.top sym_lex_con_s;;

test_number 4 (
(top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
       (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
         "Con_nwc")))
);;

open Localinput_parser_block_define_v;;

(* block_define_subtree_of_inputbox_name_of_localinput_lexer_symbol_stack *)
let sym_loi_con_st = block_define_subtree_of_inputbox_name_of_localinput_lexer_symbol_stack nam_ibo sym_lex_con_s;;

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)

test_number 5 (
(sym_loi_con_st : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
       (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
         (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
           "Con_nwc"))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
           (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
             "Con_nwc"))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
         (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
           (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
             (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
               "Con_nwc")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_variable_kind_symbol
             (Localinput_set_fence_keyword_variable_kind_symbol_t.Localinput_set_fence_keyword_variable_kind_context_symbol
               (Localinput_set_fence_keyword_variable_kind_context_symbol_t.Localinput_set_fence_keyword_variable_kind_context_constructor
                 "Con_nwc")))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
           (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_context_symbol
             (Localinput_set_body_block_variable_context_symbol_t.Localinput_set_body_block_variable_context_constructor
               "Con_nwc"))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
               (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
                 "skeleton"))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
               (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
                 "nwchem"))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
             (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
               (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
                 "cc_pvtz"))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                 (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                   "context")))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "define")))))])
);;

test_raises_some_exc Stack.top sym_lex_con_s;;
