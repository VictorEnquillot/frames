open Make_test_v;;

testing "Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v with
        Localinput_lexer_symbol_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

(* Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";;  *)

(* toplevel 
   #use "Localinput_lexer_symbol_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

*)

open Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_l = Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v.provide
    bna_ibo;;

test_number 1 (
sym_lex_l = provide bna_ibo
);;
