(** {3 Localinput_parser_tree_by_basicname_inputbox_provider_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_tree_by_basicname_inputbox_provider_v";
   "Needs : LEXLOI:Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v";
   "Needs : PARLOI:Localinput_parser_handle_command_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : The Parser-Tree from Inputbox"; 
   "How-it-is-done : by working on each command handle separatedly to save list management";
   "Author : François Colonna 06 mars 2017 at 07:38:52+01:00";
   "Author : François Colonna 23 avril 2017 at 11:03:53+02:00 the parser tree is NOT unique";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* Inputbox : define Poi_a                                     *)
(* Inputbox :   ...                                            *)
(* Inputbox :        end -- define                             *)

(* Inputbox : define Uni_len                                   *)
(* Inputbox :   ...                                            *)
(* Inputbox :        end -- define                             *)

(* Inputbox : define Uni_ang                                   *)
(* Inputbox :   ...                                            *)
(* Inputbox :        end -- define                             *)

(* Inputbox : print Poi_a                                      *)
(* Inputbox :      units [ Uni_len Uni_ang ]                   *)
(* Inputbox :      end -- print                                *)

(* Bnf : <inputbox>                   ::= { <command> }        *)

(* Bnf : <command>                    ::= | <command_creation> *)
(* Bnf :                                  | <command_tounit> *)

(* Bnf : <command_creation>           ::= | <handle_command_define>  *)
(* Bnf :                                  | <handle_command_read>    *)
(* Bnf :                                  | <handle_command_set>     *)
(* Bnf :                                  | <handle_command_title>   *)

(* Bnf : <command_tounit>               ::= | <handle_command_print>   *)
(* Bnf :                                  | <handle_command_write>   *)

(* Tree :                       body_block_input                                *)
(* Tree :                  /            |               \                       *)    
(* Tree :  body_handle_command ... body_handle_command  fence_keyword_word_stop *)

(** {6 Building} *)
 
let build bna_ibo =

  let sym_lex_lco_l =
    Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in
  
  let sym_lco_l = List.map (* Coerce Down *)
      Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_lco_l
  in
  
  let sym_loi_stl = List.map 
      (fun sl ->
	(Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide (bna_ibo, sl)
	)
      )  
      sym_lco_l 
  in

  let nam_ibo = Basicname_v.string_off bna_ibo in
  let sym_loi_ibo = Localinput_symbol_v.localinput_context_inputbox_constructor nam_ibo in
  
  let sym_loi_t = Tree_v.make_of_node sym_loi_ibo sym_loi_stl in
  sym_loi_t
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_parser_block_input_tree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_provider_v.ml  on lundi 16 janvier 2017, 08:09:59 (UTC+0100) *)
