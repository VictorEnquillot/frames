open Make_test_v;;

testing "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v
        Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

let nam_mod = "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";;

Trace_what_by_module_name_register_v.store "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v" "debug";;

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(* 	      cofactor_entity Seg_bc *)
(* 	      end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* stop *)

(* toplevel 
   #use "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_define_operator_tra_bc.ml";;

*)

open Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v;;

let nam_ibo = "Define_operator_tra_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;; 
  
let sym_lex_l = provide bna_ibo;;

test_number 1 (
(sym_lex_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "?nextvarnamed?"));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
           (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
              (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
		 "Tra_bc"))));
   Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     (Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol
	(Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor
           "Tra_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
	(Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
           (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
              "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
     Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
           (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
              (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		 "operator"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
           (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
              (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		 "set"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
           (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
              (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		 "body"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
           (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
              (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		 "creation"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
           (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
              (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		 "transformation"))));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
         (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
            (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
               "constructor"))));
   Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
    Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
	(Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_operation_symbol
           (Localinput_lexer_keyword_nextstringed_operation_symbol_t.Localinput_lexer_keyword_nextstringed_operation_constructor
              "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
    (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
          (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
             (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
		"translation"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextstringed_symbol
	(Localinput_lexer_keyword_nextstringed_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_symbol
        (Localinput_lexer_keyword_nextstringed_ondomain_symbol_t.Localinput_lexer_keyword_nextstringed_ondomain_constructor
           "?nextstringed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
      (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_doublequoted_symbol
         (Localinput_lexer_basic_word_doublequoted_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_symbol
            (Localinput_lexer_basic_word_doublequoted_lowercase_symbol_t.Localinput_lexer_basic_word_doublequoted_lowercase_constructor
            "figure"))));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
	(Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
        (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
           "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
     (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_nextvarnamed_symbol
	(Localinput_lexer_keyword_nextvarnamed_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol
           (Localinput_lexer_keyword_nextvarnamed_cofactor_entity_symbol_t.Localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor
              "?nextvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
	(Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_bare_symbol
        (Localinput_lexer_basic_word_bare_symbol_t.Localinput_lexer_basic_word_bare_capitalized_symbol
          (Localinput_lexer_basic_word_bare_capitalized_symbol_t.Localinput_lexer_basic_word_bare_capitalized_constructor
            "Seg_bc"))));
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
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
      (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
        "Define_operator_tra_bc"))]
);;

(* "?blocknamed?" *)
(* "?defvarnamed?" *)
(* "?nextbasiced?" *)
(* "?nextstringed?" *)
(* "?nextvarnamed?" *)

let sym_lex_def_varnamed_l = List.filter (fun s -> Localinput_lexer_symbol_v.string_off s = "?defvarnamed?")  sym_lex_l ;;

test_number 2 (
(sym_lex_def_varnamed_l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol
        (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_constructor
          "?defvarnamed?")))]
);;
