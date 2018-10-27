open Make_test_v;;

testing "Localinput_lexer_lexical_analysis_tools_second_pass_v with
    Localinput_lexer_lexical_analysis_tools_second_pass_u_print_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

Trace_what_by_module_name_register_v.store "Localinput_lexer_lexical_analysis_tools_second_pass_v" "debug";;

(* toplevel 
   #use "Localinput_lexer_lexical_analysis_tools_second_pass_u_print_point_a.ml";; 

*)

open Localinput_lexer_lexical_analysis_tools_second_pass_v;;

let nam_mod = "Localinput_lexer_lexical_analysis_tools_second_pass_v";;
let nam_ibo = "Print_point_a";;

(* define Poi_a *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "T_A" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_a *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

let sym_lex_1_l = Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_lex_top_1_l = List_v.sublist_of_int_of_length_of_list 0 3 sym_lex_1_l;;

test_number 1 (
(sym_lex_top_1_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Poi_a"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor
        "Poi_a"))]
);;

let ful_nam_sl = List.map Localinput_lexer_symbol_v.fullname sym_lex_1_l;;

test_number 2 (
(ful_nam_sl : string list ) =
  ["Localinput_lexer_symbol_t.Localinput_lexer_command_define_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Poi_a\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_external_constructor \"Poi_a\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor \"?defvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_l_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"figure\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"set\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"fence\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"point\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"constructor\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_r_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_constructor \"?nextstringed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_capitalized_constructor \"T_A\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Con_db1\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_command_define_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Uni_len\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_external_constructor \"Uni_len\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor \"?defvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_l_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"units\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"length\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"bohr\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_r_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Con_nwc\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_command_define_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Uni_ang\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_external_constructor \"Uni_ang\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor \"?defvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_l_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"units\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"angle\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor \"radian\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_r_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Con_nwc\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_command_print_constructor \"?nextvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Poi_a\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor \"?defvarnamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_l_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Uni_len\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor \"Uni_ang\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_token_r_bracket \"\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor \"?blocknamed?\"";
   "Localinput_lexer_symbol_t.Localinput_lexer_command_stop_constructor \"Print_point_a\""]
);;

let sym_lex_que_sl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_1_l;;

test_number 3 (
(sym_lex_que_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol
        (Localinput_lexer_keyword_nextstringed_external_name_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_constructor
          "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol
        (Localinput_lexer_keyword_defvarnamed_units_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")))]
);;

let sym_lex_nsv_l = localinput_lexer_symbol_list_complete_nextstring_nextvarnamed_of_lexeme_list sym_lex_1_l;;
let sym_lex_nvn_sl = List.filter Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_symbol sym_lex_nsv_l;;

test_number 4 (
(sym_lex_nvn_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "Con_db1")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "Con_nwc")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
      (Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_symbol
        (Localinput_lexer_keyword_nextvarnamed_external_context_symbol_t.Localinput_lexer_keyword_nextvarnamed_external_context_constructor
          "Con_nwc")))]
);;

let sym_lex_nst_sl = List.filter Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_symbol sym_lex_nsv_l;;

test_number 5 (
(sym_lex_nst_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
      (Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_symbol
        (Localinput_lexer_keyword_nextstringed_external_name_symbol_t.Localinput_lexer_keyword_nextstringed_external_name_constructor
          "T_A")))]
);;

let sym_lex_nsv_rsl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_nsv_l;;

test_number 6 (
(sym_lex_nsv_rsl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol
        (Localinput_lexer_keyword_defvarnamed_units_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")))]
);;


let sym_lex_dvn_l = localinput_lexer_symbol_list_complete_defvarnamed_of_lexeme_list sym_lex_nsv_l;;
let sym_lex_dvn_sl = List.filter Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_symbol_off_localinput_lexer_symbol sym_lex_dvn_l;;

test_number 7 (
(sym_lex_dvn_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Poi_a")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Uni_len")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "Uni_ang")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol
        (Localinput_lexer_keyword_defvarnamed_units_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor
          "Poi_a")))]
);;


let sym_lex_dvn_rsl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_dvn_l;;

test_number 8 (
(sym_lex_dvn_rsl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "?blocknamed?")))]
);;

let sym_lex_bna_l = localinput_lexer_symbol_list_complete_blocknamed_of_lexeme_list sym_lex_dvn_l;;
let sym_lex_bna_sl = List.filter Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_symbol_off_localinput_lexer_symbol sym_lex_bna_l;;

test_number 9 (
(sym_lex_bna_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "external")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "define")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_blocknamed_symbol
      (Localinput_lexer_keyword_blocknamed_symbol_t.Localinput_lexer_keyword_blocknamed_end_symbol
        (Localinput_lexer_keyword_blocknamed_end_symbol_t.Localinput_lexer_keyword_blocknamed_end_constructor
          "print")))]
);;

let sym_lex_bna_rsl = List.filter (fun s -> String_v.first_character_string_off_string (Localinput_lexer_symbol_v.string_off s) = "?") sym_lex_bna_l;;

test_number 10 (
(sym_lex_bna_rsl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[]
);;
