open Make_test_v;;

testing "Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_provider_v
        Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_provider_u_print_length_segment_bc.ml";;

*)

(* open Localinput_parser_block_variable_subtree_by_localinput_lexer_block_variable_provider_v;; *)

let nam_ibo = "Print_length_segment_bc";;

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
let pre_lex_lke = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol;;
let pre_lex_lwl = Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_lowercase_constructor;;
let pre_lex_lvk = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol;;

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

let sym_lex_cel_l = List_v.burst_left_included_of_predicate_of_list pre_lex_lke sym_lex_hcd_con_db1;;

test_number 2 (
(sym_lex_cel_l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list list ) =
  [[Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
     Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_db1")));
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context];

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
     Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote];

   [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
    Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
     Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
    Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
         (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
           "figure")));
    Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
     Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote];

   [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end];

   [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]]
);;

(* is_localinput_lexer_keyword_database *)

let sym_lex_lkd = List_v.only_element_of_predicate_off_list pre_lex_lkd sym_lex_cel;;

test_number 3 (
(sym_lex_lkd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database
);;

let sym_lex_lwl = List_v.only_element_of_predicate_off_list pre_lex_lwl sym_lex_cel;;

test_number 4 (
(sym_lex_lwl : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
       (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
         "db1points")))
);;

let sof_lwl = Localinput_lexer_symbol_v.string_off sym_lex_lwl;;

test_number 5 (
(sof_lwl : string ) = 
"db1points"
);;

let nam_lex_lkd = Localinput_lexer_symbol_v.name sym_lex_lkd;;

test_number 6 (
(nam_lex_lkd : string ) = 
"localinput_lexer_keyword_database"
);;

let wha = String_v.fourth_word_of_char_off_string '_' nam_lex_lkd;; 

test_number 7 (
(wha : string ) = 
"database"
);;

let arg_str = ("localinput_set_fence_cell_" ^ wha ^ "_constructor");;

test_number 8 (
(arg_str : string ) = 
"localinput_set_fence_cell_database_constructor"
);;

let sym_loi_lfc = Localinput_symbol_v.make arg_str sof_lwl;;

let sym_loi_lcd_f = Tree_v.make_of_leaf sym_loi_lfc;;

test_number 9 (
(sym_loi_lcd_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
           (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
             "db1points")))))
);;

test_number 10 (
sym_loi_lcd_f = provide sym_lex_cel
);;

(* is_localinput_lexer_keyword_domain *)

let pre_lex_lkd = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_domain;;

let pre_lex_lke s = (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol s)
    && (not (pre_lex_lkd s));;
let pre_lex_lwl = Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_lowercase_constructor;;

(* List.filter pre_lex_lke sym_lex_hcd_con_db1;; *)

let sym_lex_cel = 
  List_v.sublist_of_predicate_included_of_predicate_excluded_of_list 
    pre_lex_lkd 
    pre_lex_lke 
    sym_lex_hcd_con_db1
;;

test_number 11 (
(sym_lex_cel : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "figure")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote]
);;

(* is_localinput_lexer_keyword_domain *)

let sym_lex_lkd = List_v.only_element_of_predicate_off_list pre_lex_lkd sym_lex_cel;;

test_number 12 (
(sym_lex_lkd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain
);;

let sym_lex_lwl = List_v.only_element_of_predicate_off_list pre_lex_lwl sym_lex_cel;;

test_number 13 (
(sym_lex_lwl : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
       (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
         "figure")))
);;

let sof_lwl = Localinput_lexer_symbol_v.string_off sym_lex_lwl;;

test_number 14 (
(sof_lwl : string ) = 
"figure"
);;

let nam_lex_lkd = Localinput_lexer_symbol_v.name sym_lex_lkd;;

test_number 15 (
(nam_lex_lkd : string ) = 
"localinput_lexer_keyword_domain"
);;

let wha = String_v.fourth_word_of_char_off_string '_' nam_lex_lkd;; 

test_number 16 (
(wha : string ) = 
"domain"
);;

let arg_str = ("localinput_set_fence_cell_" ^ wha ^ "_constructor");;

test_number 17 (
(arg_str : string ) = 
"localinput_set_fence_cell_domain_constructor"
);;

let sym_loi_lfc = Localinput_symbol_v.make arg_str sof_lwl;;

let sym_loi_lcd_f = Tree_v.make_of_leaf sym_loi_lfc;;

test_number 18 (
(sym_loi_lcd_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
           (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
             "figure")))))
);;

test_number 19 (
sym_loi_lcd_f = provide sym_lex_cel
);;


