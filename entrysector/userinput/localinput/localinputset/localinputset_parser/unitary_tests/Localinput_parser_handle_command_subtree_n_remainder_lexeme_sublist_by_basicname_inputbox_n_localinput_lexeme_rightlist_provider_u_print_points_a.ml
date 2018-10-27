open Make_test_v;;

testing "Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* print Poi_a *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

open Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_pri_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_print_constructor
    sym_lex_l;;

let sym_lex_sl = sym_lex_pri_sl ;;

test_number 1 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "Poi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Poi_a"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_varnamed_units_symbol
        (Localinput_lexer_keyword_varnamed_units_symbol_t.Localinput_lexer_keyword_varnamed_units_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_len"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Uni_ang"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defnamed_end_symbol
        (Localinput_lexer_keyword_defnamed_end_symbol_t.Localinput_lexer_keyword_defnamed_end_constructor
          "print")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_lowercase_symbol
          (Localinput_lexer_basic_word_bare_lowercase_symbol_t.Localinput_lexer_basic_word_bare_lowercase_constructor
            "stop"))))]
);;

let sym_lex_top = Localinput_parser_tools_v.top_lexeme_if_is_command_off_lexeme_list sym_lex_sl;;
let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
     (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
       "Poi_a"))
);;

let sym_lco = (* Coerce Down *) 
    Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 3 (
(sym_lco :
  Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol ) =
  Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
   (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
     "Poi_a")
);;

let sym_lex_rig_sl = List.tl sym_lex_sl;;

let sym_loi_key = 
  Localinput_symbol_v.localinput_set_fence_keyword_command_print_constructor 
    nam_var;; 

test_number 4 (  
( sym_loi_key : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
         (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol
           (Localinput_set_fence_keyword_command_print_symbol_t.Localinput_set_fence_keyword_command_print_constructor
             "Poi_a")))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_key;;

test_number 5 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
         (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
           (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_print_symbol
             (Localinput_set_fence_keyword_command_print_symbol_t.Localinput_set_fence_keyword_command_print_constructor
               "Poi_a"))))))
);;

let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_command_unit_print_constructor 
	  nam_var;; 
      
test_number 6 (
(sym_loi_han : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_body_symbol
     (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
       (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
         (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_unit_symbol
           (Localinput_set_body_handle_command_unit_symbol_t.Localinput_set_body_handle_command_unit_print_symbol
             (Localinput_set_body_handle_command_unit_print_symbol_t.Localinput_set_body_handle_command_unit_print_constructor
               "Poi_a"))))))
);;

let (sym_loi_st, sym_lex_rem_sl)  =
  Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
    (nam_ibo, sym_lex_rig_sl);;

let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_st];;

let x =       (sym_loi_st, sym_lex_rem_sl);;

test_number 7 (
 (sym_loi_st, lex_rem_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
