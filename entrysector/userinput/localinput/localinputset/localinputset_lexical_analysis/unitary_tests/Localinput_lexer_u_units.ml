open Make_test_v;;

testing "Localinput_lexer_v with
    Localinput_lexer_u_units.ml";;

(* toplevel 
   #use "Localinput_lexer_u_units.ml";; 

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

let nof_inp = "Units.inp";;
Parameters_general_register_v.store "input-file" nof_inp;;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.input_lexer_symbol_list_of_input_fullnameoffile nof_inp;;

test_number 2 (
sym_lex_l 
(* : Localinput_lexer_symbol_t.input_lexer_symbol list *)
=
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Umd"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_as);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_units);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_length);
   Localinput_lexer_symbol_t.Localinput_lexer_token "meter";
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_angle);
   Localinput_lexer_symbol_t.Localinput_lexer_token "degree";
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_print;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Phi_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_units);
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Umd"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_print;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "S_t"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_units);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_length);
   Localinput_lexer_symbol_t.Localinput_lexer_token "meter";
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_stop]
);;
