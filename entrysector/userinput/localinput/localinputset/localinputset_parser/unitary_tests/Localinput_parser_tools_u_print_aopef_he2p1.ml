open Make_test_v;;

testing "Localinput_parser_tools_v with
    Localinput_parser_tools_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "Localinput_parser_tools_v" "debug";; *)

(* toplevel 
   #use "Localinput_parser_tools_u_print_aopef_he2p1.ml";; 

*)


open Localinput_parser_tools_v;;
let nam_mod = "Localinput_parser_tools_v";;

let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide ();;
let nam_ibo = "Print_aopef_he2p1";;

test_number 1 (
List.mem nam_ibo nam_ibo_l
);;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let sym_lex_s =
    Localinput_parser_tools_v.localinput_lexer_symbol_stack_of_inputbox_name 
      nam_ibo;;

let fno_ibo = Localinput_lexer_symbol_v.string_off (Stack.pop sym_lex_s);;

test_number 2 (
(fno_ibo : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Print_aopef_he2p1.loc"
);;

(* define Con_nwc  *)
(*        context *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Aopef_he2p1	 *)
(*        external  *)
(*          type [ "skeleton" "centered" "aopef" "constructor" ] *)
(*          external_name "he 2 p 1" *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "elementary" "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "elementary" "units" "angle" "radian" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_he2p1  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

let pre_lex_def s = Localinput_lexer_symbol_v.is_localinput_lexer_command_define s;;
let pre_lex_pri s = Localinput_lexer_symbol_v.is_localinput_lexer_command_print s;;
let pre_lex_end s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_end s;;
let pre_lex_exn s = Localinput_lexer_symbol_v.is_localinput_lexer_keyword_external_name s;;
let pre_lex_str s = Localinput_lexer_symbol_v.is_localinput_lexer_basic_string_constructor s;;
let pre_lex_vke s = Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_external s;;

let sym_lex_sl = List_v.sublist_of_predicate_included_of_predicate_included_of_list pre_lex_vke pre_lex_end sym_lex_l;;

test_number 3 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
    Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_type;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "skeleton")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "centered")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "aopef")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_lowercase_symbol
        (Localinput_lexer_basic_word_lowercase_symbol_t.Localinput_lexer_basic_word_lowercase_constructor
          "constructor")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_external_name;
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_string_symbol
      (Localinput_lexer_basic_string_symbol_t.Localinput_lexer_basic_string_constructor
        "he 2 p 1"));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_external_context;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
        (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
          "Con_nwc")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_end]
);;

let sym_lex_sl = List.filter (fun e -> pre_lex_def e || pre_lex_pri e) sym_lex_l;;

test_number 4 (
(sym_lex_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_define;
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    Localinput_lexer_command_symbol_t.Localinput_lexer_command_print]
);;

let sub_lex_ll = List_v.burst_left_included_of_predicate_of_list (fun e -> pre_lex_def e || pre_lex_pri e)  sym_lex_l;;

let sym_lex_con_l = List.nth sub_lex_ll 0;;

let sym_kwo_con_l = List.filter (fun e -> Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol e) sym_lex_con_l;;
let sym_lex_aop_l = List.nth sub_lex_ll 1;;

(* Stack *)

let sym_lex_aop_s = localinput_symbol_stack_of_localinput_symbol_list sym_lex_sl;;

let lex_s = sym_lex_aop_s;;
let sym_lex_cur = Stack.pop lex_s;;
let sym_lex_nex = Stack.pop lex_s;;

test_number 5 (
true
);;


