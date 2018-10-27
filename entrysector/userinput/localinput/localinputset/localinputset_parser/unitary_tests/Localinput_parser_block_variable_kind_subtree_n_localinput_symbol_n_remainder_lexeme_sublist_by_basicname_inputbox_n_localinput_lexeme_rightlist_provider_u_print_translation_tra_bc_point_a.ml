open Make_test_v;;

testing "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_translation_tra_bc_point_a.ml";;

*)


(* define Tra_bc *)
(* ------------------------- handle_variable_kind --------------------------------------| *)
(*        operator                                                                      | *)
(* ------------------------- block_variable_kind --------------------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] || *)
(*          operation "translation"                                                    || *)
(*          ondomain "figure"                                                          || *)
(* ------------------------- handle_cofactor -----------------------------------------||[ *)
(*          cofactor                                                                  ||| *)
(* ------------------------- block_operator_cofactor --------------------------------|||| *)
(*            cofactor_entity Seg_bc --------------------------------|||| *)
(*            end -- cofactor    *)
(*          end -- operator ---------------------------------------------------------*)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        end -- define *)

open Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor
    sym_lex_l;;

let (_, sym_lex_ldt_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor
    sym_lex_l;;

let (_, sym_lex_ldc_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor
    sym_lex_l;;

let sym_lex_sl = sym_lex_ldc_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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

let nam_mod = "Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";;
let pre_lex_top s = 
    (
     (Localinput_parser_is_cell_keyword_by_localinput_lexer_keyword_named_symbol_provider_v.provide s)
   ||
     (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor s) 
     );;
let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_top 
      nam_mod
      sym_lex_sl;;
let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

let nam_lex_top = "localinput_lexer_keyword_defvarnamed_cofactor_constructor";;
let nam_var = 
    Localinput_parser_tools_v.string_off_of_module_name_of_lexeme_list_of_top_lexeme_name
      nam_mod
      sym_lex_sl 
      nam_lex_top ;;

test_number 2 (
(nam_var : string ) = 
"Tra_bc"
);;

(* step _1_ *)

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
     (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
       (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
         "Tra_bc")))
);;

let (sym_loi_box_st, lex_rig_1_sl) =
  Localinput_parser_box_type_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (bna_ibo, lex_1_sl);;

test_number 4 (
(sym_loi_box_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
         (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
           (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
             "Poi_a")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_type_symbol
               (Localinput_set_fence_keyword_word_type_symbol_t.Localinput_set_fence_keyword_word_type_constructor
                 "Poi_a"))))));
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_body_symbol
         (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
           (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
             (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
               "Poi_a")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "figure")))));
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
                 "fence")))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_set_symbol
         (Localinput_set_symbol_t.Localinput_set_fence_symbol
           (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_word_symbol
             (Localinput_set_fence_basic_word_symbol_t.Localinput_set_fence_basic_word_lowercase_symbol
               (Localinput_set_fence_basic_word_lowercase_symbol_t.Localinput_set_fence_basic_word_lowercase_constructor
                 "point")))));
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

test_number 5 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_name_symbol
       (Localinput_lexer_keyword_varnamed_external_name_symbol_t.Localinput_lexer_keyword_varnamed_external_name_constructor
         "T_A")))
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
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol
           (Localinput_set_fence_cell_external_name_symbol_t.Localinput_set_fence_cell_external_name_constructor
             "T_A")))))
);;

let lex_rig_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_2_sl;;

test_number 7 (
(lex_rig_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
        (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
          "Con_db1")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Con_db1"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")))]
);;

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 8 (
( lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
     (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_external_context_symbol
       (Localinput_lexer_keyword_varnamed_external_context_symbol_t.Localinput_lexer_keyword_varnamed_external_context_constructor
         "Con_db1")))
);;

let (sym_loi_cel_f, lex_rig_3_sl) = 
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_3_sl;;

test_number 9 ( 
(sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
         (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
           (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
             "Con_db1")))))
);;

let lex_rig_3_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_3_sl;;

test_number 10 (
(lex_rig_3_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Uni_len"))]
);;

let acc_stl = sym_loi_cel_f :: acc_stl;;

(* step _4_ *)

let lex_4_sl = lex_rig_3_sl;;
let lex_4_cur = List.hd lex_4_sl ;;

test_number 11 (
(lex_4_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
 (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
   (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
     (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
       "external")))
);;

let (sym_loi_end_f, lex_rig_4_sl) = 
  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_4_sl;;

test_number 12 (
(sym_loi_end_f : Localinput_symbol_t.localinput_symbol Tree_t.tree) =
 Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
           (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
             (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
               "external"))))))
);;

let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) ;;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_variable_external_constructor 
    nam_var ;;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

let (x, y) =  provide (bna_ibo, sym_lex_sl);;

test_number 13 (
 (sym_loi_st, lex_rig_4_sl) = provide (bna_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
