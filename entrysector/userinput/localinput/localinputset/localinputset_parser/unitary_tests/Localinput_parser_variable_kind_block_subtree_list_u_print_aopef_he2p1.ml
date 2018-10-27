open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_parser_variable_kind_block_subtree_list_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;



(* Tracing *)


(* Debuging *)


(* toplevel 
   #use "Localinput_parser_variable_kind_block_subtree_list_u_print_aopef_he2p1.ml";; 

*)

(* Input File *)

let nof_loi = "Print_aopef_he2p1.loc";;
let fno_loi = Localinput_fullnameoffile_by_localinput_nameoffile_provider_v.provide nof_loi;;


let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name fno_loi;;

let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;
let pre_lex_pri = Localinput_lexer_symbol_v.is_localinput_lexer_command_print;;

let sym_lex_def_ll = List.filter (fun l -> List.length l > 2) (List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l);;

let sym_lex_def_3l = List.map (List_v.sublist_included_of_predicate_of_length_of_list pre_lex_def 3) sym_lex_def_ll;;

let sym_lex_aop_l = List.nth sym_lex_def_3l 1;;

let wor_cap_n_sym_lvk_dl = Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide fno_loi;;

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

let wor_cap = "Con_nwc";;
let sym_lex_con_l = List.find (fun l -> Localinput_lexer_symbol_v.string_off (List.nth l 1) = wor_cap) sym_lex_def_ll;;
let sym_lex_vkc_l = List_v.sublist_of_predicate_excluded_of_predicate_excluded_of_list 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_context  
    Localinput_lexer_symbol_v.is_localinput_lexer_command_print  
    sym_lex_con_l;;

test_number 2 ( 
(sym_lex_vkc_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "prototype")));
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

let sym_lex_vkc_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_vkc_l;;

let top = Stack.top sym_lex_vkc_s;;

test_number 3 (
( top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain
);;

open Localinput_parser_block_define_v;;

(* define Con_nwc  *)
(*        context *)

(*          domain "prototype" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)

(* 	    end -- context *)
(*        end -- define *)

(* block_variable_context_subtree_list_of_localinput_lexer_symbol_stack *)

let sym_loi_vkc_stl = block_variable_context_subtree_list_of_localinput_lexer_symbol_stack sym_lex_vkc_s;; 

test_number 4 (
(sym_loi_vkc_stl : Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
 [Tree_t.Leaf
    (Localinput_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
          (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
            "prototype"))));
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
        Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_end))]
);;

let top = Stack.top sym_lex_vkc_s;;

test_number 5 (
( top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end
);;



