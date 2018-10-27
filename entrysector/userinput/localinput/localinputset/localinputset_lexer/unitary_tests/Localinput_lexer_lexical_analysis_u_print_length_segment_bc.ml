open Make_test_v;;

testing "Localinput_parser_v with
    Localinput_lexer_lexical_analysis_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

Register_v.delete Trace_what_by_module_name_register_v.register;;

Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_v" "debug";; 

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_u_print_length_segment_bc.ml";; 

*)

open Localinput_lexer_lexical_analysis_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_v";;
let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let fno_ibo = Inputbox_fullnameoffile_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
( fno_ibo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_length_segment_bc.loc"
);;

let sbu = File_v.scanbuf_of_fullname fno_ibo;;
let sym_lex_1l = localinput_lexer_symbol_list_first_pass_of_scanbuf sbu;;
let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_second_pass_of_first_pass sym_lex_1l;;

