open Make_test_v;;

testing "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w_define_len.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_perimeter_triangle_w_define_len.ml";;

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

open Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

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

let sym_lex_sl = sym_lex_han_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
(sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
 [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Len")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let pre_lex_top = 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol;;

let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_top
      nam_mod
      sym_lex_sl;; 

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
     (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
       "Len"))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

let sym_lvk = (* coerce down *) 
    Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 3 (
(sym_lvk :
  Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol ) =
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
   (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
     "Len")
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	  sym_lvk;;

test_number 4 (  
( sym_loi_lvk : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
       (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
         (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
           "Len"))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk;;

test_number 5 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_operator_symbol
           (Localinput_set_fence_variable_kind_operator_symbol_t.Localinput_set_fence_variable_kind_operator_constructor
             "Len")))))
);;

let sym_loi_han = 
  Localinput_symbol_v.localinput_set_body_handle_variable_context_constructor 
    nam_var;;

test_number 6 (
(sym_loi_han : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
       (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
         (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
           (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
             "Len")))))
);;

let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (nam_ibo, sym_lex_rig_sl);;

let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st];;

test_number 7 (
 (sym_loi_st, sym_lex_rem_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
