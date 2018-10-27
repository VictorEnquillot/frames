open Make_test_v;;

testing "Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v
        Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;  *)

(* toplevel 
   #use "Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

*)

open Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;

let sym_lex_l = Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let pre_lex_lvk s = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol s;;

let sym_lex_lvk_sl = List.filter pre_lex_lvk sym_lex_l;;

test_number 1 (
(sym_lex_lvk_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Seg_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol
      (Localinput_lexer_variable_kind_target_symbol_t.Localinput_lexer_variable_kind_target_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Uni_len"))]
);;

test_number 2 (
sym_lex_lvk_sl = provide nam_ibo
);;
