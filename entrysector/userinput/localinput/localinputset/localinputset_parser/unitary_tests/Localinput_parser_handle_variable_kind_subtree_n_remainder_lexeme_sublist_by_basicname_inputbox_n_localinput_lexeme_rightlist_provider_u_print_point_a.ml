open Make_test_v;;

testing "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v with
        Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_u_print_point_a.ml";;

*)

(* Inputbox : define Poi_a                                                     *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        external                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ]|| *)
(* Inputbox :          external_name "T_A"                                  || *)
(* Inputbox :          external_context Con_db1                             || *)
(* Inputbox :          end -- external -------------------------------------|| *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        end -- define                                            *)

open Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v;;

let nam_ibo = "Print_point_a";;
let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let (_, sym_lex_def_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor
    sym_lex_l;;

let (_, sym_lex_lke_sl) = List_v.left_sublist_n_right_sublist_of_predicate_of_list
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_external_constructor
    sym_lex_l;;

let sym_lex_sl = sym_lex_lke_sl ;;
let sym_lex_ssl = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_sl;;

test_number 1 (
(sym_lex_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Poi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

let pre_lex = 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol;;

let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex
      nam_mod
      sym_lex_sl;; 

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
   (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
     (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
       "Poi_a"))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

let sym_lvk = (* coerce down *) 
    Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 3 (
(sym_lvk :
  Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol ) =
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
   (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
     "Poi_a")
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
       (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
         (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
           (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
             "Poi_a")))))
);;

let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk;;

test_number 5 (
(sym_loi_f : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_kind_symbol
         (Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
           (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
             (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
               "Poi_a"))))))
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
             "Poi_a")))))
);;

let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (nam_ibo, sym_lex_rig_sl);;

let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st];;

test_number 7 (
 (sym_loi_st, sym_lex_rem_sl) = provide (nam_ibo, sym_lex_sl)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
