open Make_test_v;;

testing "Localinput_lexer_v with
    Localinput_lexer_u_inside_double_quote.ml";;

(* Deleting Registers *)

Register_v.delete  Cpu_by_module_name_n_function_name_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Localinput_lexer_u_inside_double_quote.ml";; 

*)

(* Input file *)

let nof_inp = "Inside_double_quote.inp";;
let fno_inp = "./Inside_double_quote.inp";;
Parameters_general_register_v.store "input-file" fno_inp;;

(* Detailed Debug *)

open Localinput_lexer_lexical_analysis_v;;

let sbu = File_v.scanbuf_of_fullnameoffile fno_inp;;
Scanf.bscanf sbu "%0c" (fun c ->c);;

(* Tests *)
let sym_lex_l = Localinput_lexer_lexical_analysis_v.input_lexer_symbol_list_of_input_fullnameoffile fno_inp;;

test_number 1 (
sym_lex_l 
(* : Localinput_lexer_symbol_t.input_lexer_symbol list *)
=
  [Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string
      "iNsiDe doUble quotes");
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_double_quote]
);;
