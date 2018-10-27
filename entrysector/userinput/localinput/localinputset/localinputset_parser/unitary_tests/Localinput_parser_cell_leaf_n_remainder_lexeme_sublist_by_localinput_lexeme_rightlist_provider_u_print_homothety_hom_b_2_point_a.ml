open Make_test_v;;

testing "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_homothety_hom_b_2_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_u_print_homothety_hom_b_2_point_a.ml";;

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

open Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_homothety_hom_b_2_translation_tra_s_point_a";;
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

let (_, sym_lex_lbc_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor
    sym_lex_ldc_sl;;

let sym_lex_sl = sym_lex_lbc_sl ;;

let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_sl;;

test_number 1 (
( sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
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
          "cofactor")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "operator")))]
);;

let nam_mod = "Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";;

let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol
      nam_mod 
      sym_lex_sl;;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

let nam_lex_top = "localinput_lexer_keyword_basiced_cofactor_basic_constructor";;
let nam_var = 
    Localinput_parser_tools_v.string_off_of_module_name_of_lexeme_list_of_top_lexeme_name
      nam_mod
      sym_lex_sl 
      nam_lex_top ;;

test_number 2 (
(nam_var : string ) = 
"?nextbasiced?"
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_lex_rig_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_rig_sl;;

test_number 3 (
( sym_lex_rig_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
      (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
        "2.0"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "cofactor")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "operator")))]
);;

let sym_lex_wor = 
  Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    Localinput_lexer_symbol_v.is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol
    nam_mod 
    sym_lex_rig_sl 
;;

test_number 4 (
(sym_lex_wor : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
   (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
     (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor
       "2.0"))
);;

let sym_loi_cel_f = 
  Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v.provide
    (sym_lex_top, sym_lex_wor)
;; 

test_number 5 (
( sym_loi_cel_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_basic_numerical_symbol
         (Localinput_set_fence_basic_numerical_symbol_t.Localinput_set_fence_basic_float_symbol
           (Localinput_set_fence_basic_float_symbol_t.Localinput_set_fence_basic_float_constructor
             "2.0")))))
);;

let sym_lex_rem_sl = List.tl sym_lex_rig_sl;;

test_number 6 (
(sym_loi_cel_f, sym_lex_rem_sl) = provide sym_lex_sl
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
