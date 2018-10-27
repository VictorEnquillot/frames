open Make_test_v;;

testing "Localinput_parser_cell_subtree_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_v
        Localinput_parser_cell_subtree_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

let nam_mod = "Localinput_parser_cell_subtree_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_v";;
Trace_what_by_module_name_register_v.store nam_mod "debug";; 

(* toplevel 
   #use "Localinput_parser_cell_subtree_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_u_print_length_segment_bc.ml";;

*)

open Localinput_parser_cell_subtree_n_localinput_lexer_remainder_by_localinput_lexer_cell_headed_list_provider_v;;

let nam_ibo = "Print_length_segment_bc";;

let nam_var = "Con_db1";;
let sym_lex_hcd_con_db1 = 
  Localinput_lexer_handle_command_define_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
    (nam_var, nam_ibo);;

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

(* is_localinput_lexer_keyword_database *)

let pre_lex_lkd = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_database;;
let pre_lex_lwl = Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_lowercase_constructor;;

(* List.filter pre_lex_lke sym_lex_hcd_con_db1;; *)

let sym_lex_chl = List_v.right_list_included_of_predicate_of_list pre_lex_lkd sym_lex_hcd_con_db1;;

test_number 2 (
(sym_lex_chl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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

(* is_localinput_lexer_keyword_database *)

let sym_lex_lke = List.hd sym_lex_chl;;

test_number 3 (
(sym_lex_lke : Localinput_lexer_symbol_t.localinput_lexer_symbol) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_database
);;

let nam_lex_lke = Localinput_lexer_symbol_v.name sym_lex_lke;;

test_number 4 (
(nam_lex_lke : string ) = 
"localinput_lexer_keyword_database"
);;

let wha_lke = String_v.fourth_word_of_char_off_string '_' nam_lex_lke;;

test_number 5 (
(wha_lke : string ) = 
"database"
);;

let arg_str = ("localinput_set_fence_cell_" ^ wha_lke ^ "_constructor");;

test_number 6 (
(arg_str : string ) = 
"localinput_set_fence_cell_database_constructor"
);;

let sym_lex_rem = List.tl sym_lex_chl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 7 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 8 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
       (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
         "db1points")))
);;

let sof_lwl = Localinput_lexer_symbol_v.string_off sym_lex_hd;;

test_number 9 (
(sof_lwl : string ) = 
"db1points"
);;

let sym_loi_lfc = Localinput_symbol_v.make arg_str sof_lwl;;

test_number 10 (
( sym_loi_lfc : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
       (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
         (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
           "db1points"))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_lfc;;

test_number 11 (
( sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
           (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
             "db1points")))))
);;

let sym_lex_tl = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 12 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 13 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain
);;

(* is_localinput_lexer_keyword_domain *)

test_number 14 (
(sym_lex_rem : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end;

   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 15 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_domain
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 16 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote
);; 

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 17 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
       (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
         "figure")))
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 18 (
(sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
   Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote
);; 

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 19 (
( sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;
let sym_lex_hd = List.hd sym_lex_rem;; 

test_number 20 (
( sym_lex_hd : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end
);;

let sym_lex_tl  = List.tl sym_lex_rem;; 
let sym_lex_rem = sym_lex_tl;;

test_number 21 (
(sym_lex_tl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) = 
[]
);;

test_raises_some_exc List.hd sym_lex_rem;; 

provide sym_lex_chl;;
