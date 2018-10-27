open Make_test_v;;

testing "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v with
    Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;

(* Tracing *)

(* Debuging *)

(* toplevel 
   #use "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_define_context_con_nwc.ml";; 

*)

(* Input File *)

open Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Define_context_con_nwc";;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;
let pre_lex_kin = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_context;;
let sym_lex_ll = List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l;;

let sym_lex_def_ll = List.filter (fun l -> (List.length l > 1 ) && (Localinput_lexer_symbol_v.is_localinput_lexer_command_define (List.hd l))) sym_lex_ll;;
let sym_lex_def_2l = List.map 
      (List_v.sublist_excluded_of_predicate_of_length_of_list pre_lex_def 2) 
      sym_lex_def_ll;;

let sym_lex_def_dl = localinput_lexer_symbol_duo_list_of_inputbox_name nam_ibo ;;

test_number 1 (
(sym_lex_def_dl : Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list ) =
  [(Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_nwc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context)]
);;

let wor_cap_n_sym_lvk = provide nam_ibo;;

test_number 2 (
(wor_cap_n_sym_lvk :
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_t.doublet list ) =
  [("Con_nwc",
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context)]
);;
