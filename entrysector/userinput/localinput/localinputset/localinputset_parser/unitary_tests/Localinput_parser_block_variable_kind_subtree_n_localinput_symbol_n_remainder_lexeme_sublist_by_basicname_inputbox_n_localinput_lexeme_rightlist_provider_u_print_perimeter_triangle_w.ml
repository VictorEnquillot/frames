open Make_test_v;;

testing "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w.ml";;

*)

(* Inputbox : define Con_db1                                                   *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        context                                                 | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox : 	       database "db1points"                                       || *)
(* Inputbox :          domain "figure"                                      || *)
(* Inputbox : 	       end -- context --------------------------------------|| *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        end -- define                                             *)

open Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sym_lex_def_sl = List.find
    (fun l -> Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor (List.hd l) )
    sym_lex_hcs_ll;;

let (_, sym_lex_dat_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor
    sym_lex_def_sl;;

let sym_lex_sl = sym_lex_dat_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
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
          "figure")))]
);;

let pre_lex_top s = 
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor s)
||
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor s)
;;

let sym_lex_top = 
  Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    pre_lex_top 
    nam_mod
    sym_lex_sl 
;;
  
let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 2 (
(nam_var : string ) = 
"db1points"
);;

(* step _1_ *)

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
     (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_database_symbol
       (Localinput_lexer_keyword_nextstringed_database_symbol_t.Localinput_lexer_keyword_nextstringed_database_constructor
         "db1points")))
);;

let (sym_loi_cel_f, lex_rig_1_sl) = 
	     Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	       lex_1_sl;;

test_number 4 (
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
           (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
             "db1points")))))
);;

let acc_stl = [sym_loi_cel_f];;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 5 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
     (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_domain_symbol
       (Localinput_lexer_keyword_nextstringed_domain_symbol_t.Localinput_lexer_keyword_nextstringed_domain_constructor
         "figure")))
);;

let (sym_loi_cel_f, lex_rig_2_sl) = 
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_2_sl;;

test_number 6 ( 
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
           (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
             "figure")))))
);;

let lex_rig_2_ssl = List_v.sublist_of_int_of_length_of_list 0 4 lex_rig_2_sl;;

test_number 7 (
(lex_rig_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
          (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
            "sector"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "internal"))));
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

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 8 (
(lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
     (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
       (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
         (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
           "sector"))))
);;

let (sym_loi_end_f, lex_rig_3_sl) = 
  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_3_sl;;

test_number 9 (
(sym_loi_end_f : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "context"))))))
);;

let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) ;;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_variable_external_constructor 
    nam_var ;;

test_number 10 (
(sym_loi_blo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
       (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
         (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
           "db1points"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

test_number 11 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
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
                 "context"))))))])
);;

test_number 12 (
 (sym_loi_st, lex_rig_3_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
