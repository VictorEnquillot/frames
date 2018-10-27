open Make_test_v;;

testing "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v with
    Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)



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

(* toplevel 
   #use "Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

open Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;

let sym_lex_l = Localinput_lexer_lexical_analysis_v.localinput_lexer_symbol_list_of_inputbox_name nam_ibo;;

let pre_lex_def = Localinput_lexer_symbol_v.is_localinput_lexer_command_define;;

let sym_lex_def_ll = List.filter (fun l -> List.length l > 2) (List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l);;

let sym_lex_def_2l = List.map 
      (List_v.sublist_excluded_of_predicate_of_length_of_list pre_lex_def 2) 
      sym_lex_def_ll;;

let sym_lex_def_dl = localinput_lexer_symbol_duo_list_of_inputbox_name nam_ibo;;

test_number 1 (
(sym_lex_def_dl : Localinput_lexer_symbol_t.localinput_lexer_symbol Duo_t.duo list ) =
  [(Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Con_nwc"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Aopef_he2p1"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Uni_len"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
   (Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
     (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_word_symbol
       (Localinput_lexer_basic_word_symbol_t.Localinput_lexer_basic_word_capitalized_symbol
         (Localinput_lexer_basic_word_capitalized_symbol_t.Localinput_lexer_basic_word_capitalized_constructor
           "Uni_ang"))),
    Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol
     Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

let wor_cap_n_sym_lvk = provide nam_ibo;;

test_number 2 (
(wor_cap_n_sym_lvk :
  (string,
   Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
  Doublet_t.doublet list ) =
 [("Con_nwc",
   Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
 
 ("Aopef_he2p1",
   Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);

  ("Uni_len",
   Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);

  ("Uni_ang",
   Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;
