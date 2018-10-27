open Make_test_v;;

testing "Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_headed_list_provider_v
        Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_headed_list_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

let nam_mod = "Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_headed_list_provider_v";;
Trace_what_by_module_name_register_v.store nam_mod "debug";; 

(* toplevel 
   #use "Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_headed_list_provider_u_print_perimeter_triangle_w.ml";;

*)

open Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_headed_list_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

(* define Con_db1  *)
(*        context *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          end -- context *)
(*        end -- define *)

let nam_var = "Con_db1";;
let sym_lex_hcd_con_db1 = 
  Localinput_lexer_handle_command_define_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
    (nam_var, nam_ibo);;

(* is_localinput_lexer_keyword_database *)

let pre_lex_lkd = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_database;;
let pre_lex_lwl = Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_lowercase_constructor;;
let pre_lex_lvk = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol;;
let pre_lex_lke = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol;;

let sym_lex_lke_l = List.filter pre_lex_lke sym_lex_hcd_con_db1;;

test_number 1 (
(sym_lex_lke_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_bhl = List_v.right_list_included_of_predicate_of_list pre_lex_lke sym_lex_hcd_con_db1;;

test_number 2 (
(sym_lex_bhl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "db1points")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "figure")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_chl = sym_lex_bhl;;

let sym_lex_hd = List.hd sym_lex_chl;;

test_number 3 (
( sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database
);;


let sym_lex_tl = List.tl sym_lex_chl;;

let (sym_loi_f, sym_lex_rem) =
		Localinput_parser_cell_leaf_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_v.provide
		  sym_lex_chl;;

test_number 4 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
           (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
             "db1points")))))
);;

let sym_loi_lcd = Tree_v.element_off_leaf sym_loi_f;;

test_number 5 (
(sym_loi_lcd : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
       (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
         (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
           "db1points"))))
);;

let sof_cur = Localinput_symbol_v.string_off sym_loi_lcd;;

test_number 6 (
(sof_cur : string ) = 
"db1points"
);;

let sym_loi_lbv_st = provide sym_lex_bhl;;

