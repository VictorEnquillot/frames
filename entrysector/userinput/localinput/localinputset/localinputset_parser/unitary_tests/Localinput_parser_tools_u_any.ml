open Make_test_v;;

testing "Localinput_parser_tools_v with
    Localinput_parser_tools_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "cpu debug";; *)

(* toplevel 
   #use "Localinput_parser_tools_u_any.ml";; 

*)

(* Localinput File *)

let nof_ibo = "Print_aopef_he2p1.loc";;
let fno_ibo = Inputbox_fullnameoffile_by_basicname_inputboxoffile_provider_v.provide nof_ibo;;

test_number 1 (
(fno_ibo : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_aopef_he2p1.loc"
);;

let nam_ibo = Context_name_by_context_nameoffile_provider_v.provide nof_ibo;;
let nam_ibo = "Print_aopef_he2p1";; (* Improve *)

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let sym_lex_def = Localinput_lexer_symbol_t.Localinput_lexer_command_symbol Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;;
let sym_lex_pri = Localinput_lexer_symbol_t.Localinput_lexer_command_symbol Localinput_lexer_command_symbol_t.Localinput_lexer_command_print;;

let sym_lex_def_l = List.filter (fun e -> e = sym_lex_def || e = sym_lex_pri) sym_lex_l;;

let sub_lex_ll = List_v.burst_left_included_of_predicate_of_list (fun e -> e = sym_lex_def || e = sym_lex_pri) sym_lex_l;;

let sym_lex_con_l = List.nth sub_lex_ll 0;;

let sym_kwo_con_l = List.filter (fun e -> Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol e) sym_lex_con_l;;
let sym_lex_aop_l = List.nth sub_lex_ll 1;;


open Localinput_parser_tools_v;;

(* Stack *)

let sym_lex_aop_s = Localinput_parser_tools_v.localinput_symbol_stack_of_localinput_symbol_list sym_lex_def_l;;

let lex_s = sym_lex_aop_s;;
let sym_lex_cur = Stack.pop lex_s;;
let sym_lex_nex = Stack.pop lex_s;;


test_number 2 (
true
);;


