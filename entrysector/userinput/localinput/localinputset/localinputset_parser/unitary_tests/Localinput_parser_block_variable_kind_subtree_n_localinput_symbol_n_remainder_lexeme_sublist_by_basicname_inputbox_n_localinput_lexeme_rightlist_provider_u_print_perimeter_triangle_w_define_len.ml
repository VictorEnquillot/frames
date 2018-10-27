open Make_test_v;;

testing "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w_define_len.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "debug";;

(* toplevel 
   #use "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w_define_len.ml";;

*)

(* Inputbox : define Len                                                       *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        operator                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "measure" "constructor"] *)
(* Inputbox : 	       operation "length"                                   || *)
(* Inputbox : 	       ondomain "figure"                                    || *)
(* Inputbox : -------- end -- operator -------------------------------------|| *)
(* Inputbox :        end -- define                                             *)

open Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let nam_var = "Len";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

let sym_lex_len_sl = List.find 
    (fun sl -> 
      (Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor (List.hd sl))
	&& 
      (Localinput_lexer_symbol_v.string_off (List.hd sl) = nam_var )
    )
    sym_lex_hcs_ll;;

let (_, sym_lex_han_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
    sym_lex_len_sl;;

let pre_lex_top s = 
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor s)
||
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor s);;

let (_, sym_lex_blo_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    pre_lex_top
    sym_lex_han_sl;;

let sym_lex_sl = sym_lex_blo_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
        (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
          (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "operator"))))]
);;

let sym_lex_top = 
  Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    pre_lex_top 
    nam_mod
    sym_lex_sl 
;;
  
test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
       (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
         "Len")))
);;
let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 3 (
(nam_var : string ) = 
"Len"
);;

(* step _1_ *)

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 4 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
       (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
         "Len")))
);;

let (sym_loi_box_st, lex_rig_1_sl) =
  Localinput_parser_box_type_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (nam_ibo, lex_1_sl);;

test_number 5 (
( sym_loi_box_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Len")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Len"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
           (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
             (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
               "Len")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "operator")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "set")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "body")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "creation")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "measure")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "constructor")))))])])
);;

let acc_stl = [sym_loi_box_st];;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 6 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
     (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol
       (Localinput_lexer_keyword_nextstringed_operation_symbol_t.Localinput_lexer_keyword_nextstringed_operation_constructor
         "length")))
);;

let (sym_loi_cel_f, lex_rig_2_sl) = 
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_2_sl;;

test_number 7 ( 
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
           (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
             "length")))))
);;

let lex_rig_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_2_sl;;

test_number 8 (
(lex_rig_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol
        (Localinput_lexer_keyword_nextstringed_ondomain_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_constructor
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
          "operator")))]
);;

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 9 (
( lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
     (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol
       (Localinput_lexer_keyword_nextstringed_ondomain_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_constructor
         "figure")))
);;

let (sym_loi_cel_f, lex_rig_3_sl) = 
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_3_sl;;

test_number 10 ( 
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
           (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
             "figure")))))
);;

let lex_rig_3_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_3_sl;;

test_number 11 (
(lex_rig_3_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "operator")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")))]
);;

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _4_ *)

let lex_4_sl = lex_rig_3_sl;;
let lex_4_cur = List.hd lex_4_sl ;;

test_number 12 (
(lex_4_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
 Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
     (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
       (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
         "operator")))
);;

let (sym_loi_end_f, lex_rig_4_sl) = 
  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_4_sl;;

test_number 13 (
(sym_loi_end_f : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "operator"))))))
);;

let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) ;;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_variable_external_constructor 
    nam_var ;;

test_number 14 (
(sym_loi_blo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
       (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
         (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
           "Len"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

test_number 15 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
 Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
           (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
             "Len")))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
           (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
             (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
               "Len")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                 (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                   "Len"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
             (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
               (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                 "Len")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "operator")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "set")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "body")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "creation")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "measure")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
               (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
                 (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                   "constructor")))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
             (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
               "length")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
             (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
               "figure")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "operator"))))))])
);;

test_number 16 (
 (sym_loi_st, lex_rig_4_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
