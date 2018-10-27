open Make_test_v;;

testing "Localinput_lexer_v with
    Localinput_lexer_u_simple.ml";;

(* toplevel 
   #use "Localinput_lexer_u_simple.ml";; 

*)

(* Deleting Registers *)

Register_v.delete  Cpu_by_module_name_n_function_name_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* Domain *) 
let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let nof_inp = "Simple.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;
let nam_fil = Filename_p.filename nof_inp;;

test_number 2 (
nam_fil
=
Input_filename_by_domain_tag_provider_v.provide tag_dom
);;

let sbu = File_v.scanbuf_of_fullnameoffile nof_inp;;
let lex_l = Localinput_lexer_lexical_analysis_v.input_lexer_symbol_list_of_input_fullnameoffile nof_inp;;

test_number 3 (
lex_l
(* : Localinput_lexer_t.input_lexeme list *)
  =
  [Localinput_lexer_t.Localinput_lexer_command "define";
   Localinput_lexer_t.Localinput_lexer_word_capitalized "Run";
   Localinput_lexer_t.Localinput_lexer_keyword "as";
   Localinput_lexer_t.Localinput_lexer_keyword "word";
   Localinput_lexer_t.Localinput_lexer_word "triangle_t_properties";
   Localinput_lexer_t.Localinput_lexer_keyword "end";
   Localinput_lexer_t.Localinput_lexer_command "define";
   Localinput_lexer_t.Localinput_lexer_word_capitalized "Title";
   Localinput_lexer_t.Localinput_lexer_keyword "as";
   Localinput_lexer_t.Localinput_lexer_token "string";
   Localinput_lexer_t.Localinput_lexer_string "input for Run : ";
   Localinput_lexer_t.Localinput_lexer_word_capitalized "Run";
   Localinput_lexer_t.Localinput_lexer_keyword "end";
   Localinput_lexer_t.Localinput_lexer_keyword "end";
   Localinput_lexer_t.Localinput_lexer_command "set";
   Localinput_lexer_t.Localinput_lexer_keyword "debug";
   Localinput_lexer_t.Localinput_lexer_keyword "all";
   Localinput_lexer_t.Localinput_lexer_keyword "end";
   Localinput_lexer_t.Localinput_lexer_command "set";
   Localinput_lexer_t.Localinput_lexer_keyword "trace";
   Localinput_lexer_t.Localinput_lexer_keyword "for";
   Localinput_lexer_t.Localinput_lexer_token "provider";
   Localinput_lexer_t.Localinput_lexer_token "except";
   Localinput_lexer_t.Localinput_lexer_token "this";
   Localinput_lexer_t.Localinput_lexer_keyword "end";
   Localinput_lexer_t.Localinput_lexer_command "define";
   Localinput_lexer_t.Localinput_lexer_word_capitalized "Tr";
   Localinput_lexer_t.Localinput_lexer_keyword "as";
   Localinput_lexer_t.Localinput_lexer_token "triangle_isosceles_equilateral";
   Localinput_lexer_t.Localinput_lexer_word "T";
   Localinput_lexer_t.Localinput_lexer_keyword "from";
   Localinput_lexer_t.Localinput_lexer_keyword "domain";
   Localinput_lexer_t.Localinput_lexer_token "figure";
   Localinput_lexer_t.Localinput_lexer_keyword "from";
   Localinput_lexer_t.Localinput_lexer_keyword "database";
   Localinput_lexer_t.Localinput_lexer_word "db1";
   Localinput_lexer_t.Localinput_lexer_keyword "end"]
);;
