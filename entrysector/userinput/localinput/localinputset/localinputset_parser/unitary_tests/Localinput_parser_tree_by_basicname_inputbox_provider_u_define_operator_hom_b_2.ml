open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_define_operator_hom_b_2.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Define_operator_hom_b_2";;

let sym_lex_hcs_ll =
  Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide
    nam_ibo;;

(* Inputbox : define Hom_b_2 *)
(* Inputbox :        operator  *)
(* Inputbox :          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(* Inputbox :          operation "homothety" *)
(* Inputbox :          ondomain "figure" *)
(* Inputbox : 	       cofactor  *)
(* Inputbox :            cofactor_entity Cen_b  *)
(* Inputbox :            cofactor_basic 2.0  *)
(* Inputbox : 	         end -- cofactor *)
(* Inputbox :          end -- operator *)
(* Inputbox :        end -- define *)

(* Inputbox : stop *)

let lex_0_sl = List.nth sym_lex_hcs_ll 0;;
let sym_lex_0_ssl = List_v.sublist_of_int_of_length_of_list 0 5 lex_0_sl;;

test_number 1 (
(sym_lex_0_ssl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
 [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Hom_b_2"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Hom_b_2"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Hom_b_2"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_named_symbol
      (Localinput_lexer_keyword_named_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Hom_b_2")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket]
);;

