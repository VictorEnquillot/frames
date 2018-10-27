open Make_test_v;;

testing "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;

Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "debug";;
*)

(* define Tra_bc *)
(* ------------------------- handle_variable_kind --------------------------------------| *)
(*        operator  *)
(* ------------------------- block_variable_kind --------------------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] || *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(* -------- end -- operator -----------------------------------------------------------|| *)
(*        end -- define *)

(* toplevel 
   #use "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_define_operator_tra_bc.ml";;

*)

open Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Define_operator_tra_bc";;
let nam_var = "Tra_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    bna_ibo;;

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
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor s)
;;

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
          "Tra_bc")));
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
         "Tra_bc")))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 3 (
(nam_var : string ) = 
"Tra_bc"
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
         "Tra_bc")))
);;

let (sym_loi_box_st, lex_rig_1_sl) =
  Localinput_parser_box_type_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (bna_ibo, lex_1_sl);;

test_number 5 (
( sym_loi_box_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Tra_bc")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Tra_bc"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
           (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
             (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
               "Tra_bc")))),
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
                 "transformation")))));
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
         "translation")))
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
             "translation")))))
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
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
        (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
          "Tra_bc")))]
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
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
        (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
          "Tra_bc")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
        (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
          "Seg_bc")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Seg_bc"))))]
);;

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _4_ *)

let lex_4_sl = lex_rig_3_sl;;
let lex_4_cur = List.hd lex_4_sl ;;

test_number 12 (
(lex_4_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
       (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
         "Tra_bc")))
);;

let (sym_loi_han_st, lex_rig_4_sl) =
	  Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, lex_4_sl);;

test_number 13 (
(lex_rig_4_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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

let acc_stl = sym_loi_han_st :: acc_stl;;

(* step _5_ *)

let lex_5_sl = lex_rig_4_sl;;
let lex_5_cur = List.hd lex_5_sl ;;

(* end *)

let (sym_loi_end_f, lex_rig_4_sl) = 
  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_5_sl;;

test_number 14 (
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

test_number 15 (
(sym_loi_blo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
       (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
         (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
           "Tra_bc"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

test_number 16 (
(sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
           (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
             "Tra_bc")))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
           (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
             (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
               "Tra_bc")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
                 (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                   "Tra_bc"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
             (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
               (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
                 "Tra_bc")))),
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
                   "transformation")))));
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
               "translation")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
             (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
               "figure")))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
           (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
             (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
               "Tra_bc")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
             (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
               (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
                 (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
                   "Tra_bc"))))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_body_symbol
           (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
             (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
               (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
                 "Seg_bc")))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
               (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
                 (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
                   "Seg_bc")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_set_symbol
           (Localinput_set_symbol_t.Localinput_set_fence_symbol
             (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
               (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
                 (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
                   (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                     "cofactor"))))))])]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "operator"))))))])
);;

(* Check box_type *)

let tag_loi_lbt_l = Tree_v.node_list_of_node_predicate_off_tree
    Localinput_symbol_v.is_localinput_set_body_box_type_constructor
    sym_loi_st
;;

test_number 17 (
(tag_loi_lbt_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Tra_bc"))))]
);;

let tag_loi_inn_l = Tree_v.inner_node_list_off_tree sym_loi_st;;

test_number 18 (
(tag_loi_inn_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_cofactor_symbol
          (Localinput_set_body_handle_cofactor_symbol_t.Localinput_set_body_handle_cofactor_constructor
            "Tra_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
          (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
            "Seg_bc"))))]
);;

let tag_loi_lea_l = Tree_v.leaf_node_list_off_tree sym_loi_st;;

test_number 19 (
(tag_loi_lea_l : Localinput_symbol_t.localinput_symbol list ) =
 [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
            (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
              "Tra_bc")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "operator"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "set"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "body"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "creation"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "transformation"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
        (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
          (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
            "constructor"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_operation_symbol
          (Localinput_set_fence_cell_operation_symbol_t.Localinput_set_fence_cell_operation_constructor
            "translation"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_ondomain_symbol
          (Localinput_set_fence_cell_ondomain_symbol_t.Localinput_set_fence_cell_ondomain_constructor
            "figure"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_cofactor_symbol
            (Localinput_set_fence_keyword_word_cofactor_symbol_t.Localinput_set_fence_keyword_word_cofactor_constructor
              "Tra_bc")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
          (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
            "Seg_bc"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
            (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
              "cofactor")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
        (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
          (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
            (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
              "operator")))))]
);;

test_number 20 (
 (sym_loi_st, lex_rig_4_sl) = provide (bna_ibo, sym_lex_sl)
);;

