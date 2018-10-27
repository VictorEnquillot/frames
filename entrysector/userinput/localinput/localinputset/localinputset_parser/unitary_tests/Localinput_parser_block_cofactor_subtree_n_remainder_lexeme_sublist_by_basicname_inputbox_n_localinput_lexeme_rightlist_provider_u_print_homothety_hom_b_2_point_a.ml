open Make_test_v;;

testing "Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_homothety_hom_b_2_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_homothety_hom_b_2_point_a.ml";;

*)

(* define Tra_bc *)
(* ------------------------- handle_variable_kind --------------------------------------| *)
(*        operator                                                                      | *)
(* ------------------------- block_variable_kind --------------------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] || *)
(*          operation "homothety"                                                    || *)
(*          ondomain "figure"                                                          || *)
(* ------------------------- handle_cofactor -----------------------------------------||[ *)
(*          cofactor                                                                  ||| *)
(* ------------------------- block_operator_cofactor --------------------------------|||| *)
(*            cofactor_entity Cen_b -------------------------------------------------|||| *)
(*            cofactor_basic 2.0 ----------------------------------------------------|||| *)
(*            end -- cofactor    *)
(*          end -- operator ---------------------------------------------------------*)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        end -- define *)

open Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_homothety_hom_b_2_point_a";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let nam_var = "Hom_b_2";;

let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    (fun s -> s = Localinput_lexer_symbol_v.localinput_lexer_command_define_constructor nam_var)
    sym_lex_l;;

let (_, sym_lex_ldt_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor
    sym_lex_def_sl;;

let (_, sym_lex_ldc_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor
    sym_lex_ldt_sl;;

let (_, sym_lex_lce_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
    sym_lex_ldc_sl;;

let sym_lex_sl = sym_lex_lce_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 5 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
        (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
          "Cen_b")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Cen_b"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol
      (Localinput_lexer_keyword_basiced_symbol_t.Localinput_lexer_keyword_basiced_cofactor_basic_symbol
        (Localinput_lexer_keyword_basiced_cofactor_basic_symbol_t.Localinput_lexer_keyword_basiced_cofactor_basic_constructor
          "?nextbasiced?")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
        "2.0"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "cofactor")))]
);;

let nam_mod = "Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";;

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list
      (fun s -> 
      (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor s)
      ||
      (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s)
      )
      nam_mod
      sym_lex_sl;;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 2 (
(nam_var : string ) = 
"Cen_b"
);;

(* step _1_ *)

let lex_1_sl = sym_lex_sl;;
let lex_1_cur = List.hd lex_1_sl ;;

test_number 3 (
(lex_1_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
     (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
       (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
         "Cen_b")))
);;

let (sym_loi_cel_lce_f, lex_rig_1_sl) =
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_1_sl;;

test_number 4 (
(sym_loi_cel_lce_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Leaf
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
       (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
         (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
           "Cen_b")))))
);;

let acc_stl = sym_loi_cel_lce_f :: [] ;;

(* step _2_ *)

let lex_2_sl = lex_rig_1_sl;;
let lex_2_cur = List.hd lex_2_sl ;;

test_number 5 (
( lex_2_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_basiced_symbol
     (Localinput_lexer_keyword_basiced_symbol_t.Localinput_lexer_keyword_basiced_cofactor_basic_symbol
       (Localinput_lexer_keyword_basiced_cofactor_basic_symbol_t.Localinput_lexer_keyword_basiced_cofactor_basic_constructor
         "?nextbasiced?")))
);;

let (sym_loi_cel_lcb_f, lex_rig_2_sl) = 
  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_2_sl;;

test_number 6 ( 
(sym_loi_cel_lcb_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Leaf
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_numerical_symbol
       (Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol
         (Localinput_set_fence_basic_float_symbol_t.Localinput_set_fence_basic_float_constructor
           "2.0")))))
);;

let lex_rig_2_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_2_sl;;

test_number 7 (
(lex_rig_2_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "cofactor")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
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

let acc_stl = sym_loi_cel_lcb_f :: acc_stl;;

(* step _3_ *)

let lex_3_sl = lex_rig_2_sl;;
let lex_3_cur = List.hd lex_3_sl ;;

test_number 8 (
( lex_3_cur : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
   (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
     (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
       (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
         "cofactor")))
);;

let (sym_loi_end_3_f, lex_rig_3_sl) = 
  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
    lex_3_sl;;

test_number 9 (
(sym_loi_end_3_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
Tree_t.Leaf
 (Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
         (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
           (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
             "cofactor"))))))
);;

let acc_stl_rev = List.rev (sym_loi_end_3_f :: acc_stl);;

let sym_loi_blo = 
  Localinput_symbol_v.localinput_set_body_block_cofactor_constructor 
    nam_var ;;

test_number 10 (
( sym_loi_blo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
       (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
         (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
           "Cen_b"))))
);;

let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev;;

test_number 11 (
( sym_loi_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_body_symbol
       (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
         (Localinput_set_body_block_symbol_t.Localinput_set_body_block_cofactor_symbol
           (Localinput_set_body_block_cofactor_symbol_t.Localinput_set_body_block_cofactor_constructor
             "Cen_b")))),
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
           (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_cofactor_entity_symbol
             (Localinput_set_fence_cell_cofactor_entity_symbol_t.Localinput_set_fence_cell_cofactor_entity_constructor
               "Cen_b")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_numerical_symbol
           (Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol
             (Localinput_set_fence_basic_float_symbol_t.Localinput_set_fence_basic_float_constructor
               "2.0")))));
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_set_symbol
       (Localinput_set_symbol_t.Localinput_set_fence_symbol
         (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
           (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_word_symbol
             (Localinput_set_fence_keyword_word_symbol_t.Localinput_set_fence_keyword_word_end_symbol
               (Localinput_set_fence_keyword_word_end_symbol_t.Localinput_set_fence_keyword_word_end_constructor
                 "cofactor"))))))])
);;

let lex_rig_3_ssl = List_v.sublist_of_int_of_length_of_list 0 3 lex_rig_3_sl;;

test_number 12 (
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
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Poi_a"))]
);;

let (x, y) =  provide (bna_ibo, sym_lex_sl);;

test_number 13 (
 (sym_loi_st, lex_rig_3_sl) = provide (bna_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
