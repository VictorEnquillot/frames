open Make_test_v;;

testing "Localinput_lexer_v with
    Localinput_lexer_u_homothety.ml";;

(* toplevel 
   #use "Localinput_lexer_u_homothety.ml";; 

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

let nof_inp = "Homothety.inp";;
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
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "H_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_as);
   Localinput_lexer_symbol_t.Localinput_lexer_token "homothety";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word "homothety_a");
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_from);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_domain);
   Localinput_lexer_symbol_t.Localinput_lexer_token "property";
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_needs);
   Localinput_lexer_symbol_t.Localinput_lexer_token "center";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "P_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_token "scale_factor";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "R"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Tr_ha"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_by);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_applying);
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "H_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_on);
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Tr"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Tr_hb"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_by);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_applying);
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_l_parenthesis;
   Localinput_lexer_symbol_t.Localinput_lexer_token "homothety";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word "homothety_b");
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_from);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_domain);
   Localinput_lexer_symbol_t.Localinput_lexer_token "property";
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defnamed_ended_symbol
      Localinput_lexer_keyword_defnamed_ended_symbol_t.Localinput_lexer_needs);
   Localinput_lexer_symbol_t.Localinput_lexer_token "center";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "P_a"));
   Localinput_lexer_symbol_t.Localinput_lexer_token "scale_factor";
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "R"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end);
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_r_parenthesis;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_unary_symbol
      Localinput_lexer_keyword_unary_symbol_t.Localinput_lexer_on);
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
      (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_free
        "Tr"));
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
        "Tr_hb"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_constant_symbol
      Localinput_lexer_keyword_constant_symbol_t.Localinput_lexer_end)]
);;
