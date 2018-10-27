(** {3 Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v";
   "Needs: LANLOI:Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v";
   "Needed-by: LEXLOI:Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v";
   "Bnf : <handle_command> ::= define <block>";
   "What-is-it : the list of all Command Handle Symbol or Stop keyword";
   "Author : François Colonna 04 mars 2017 at 13:16:37+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

let invariant_of_list sym_lex_l =

  if (List_v.is_once_list_of_list sym_lex_l)
  then ()
  else
    begin
      let sym_dup_sl = List_v.non_once_list_off_list sym_lex_l in
      Error_messages_v.print_fatal_error __LOC__ "invariant_of_list"
	"Parser Tree node list were a once_list"
	(Format.sprintf "List of duplicated element is:@.    %s"
	   (List_v.name_in_column Localinput_lexer_symbol_v.fullname sym_dup_sl) 
	)
	"Correct the Localinput_lexer"
    end
;;

(** {6 Building} *)

let build bna_ibo =
  let sym_lex_l = 
    Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide
      bna_ibo 
  in

  let pre_lex_com s = 
    Localinput_lexer_symbol_v.is_localinput_lexer_command_symbol_off_localinput_lexer_symbol s
  in

  let sym_lex_com_l = List.filter pre_lex_com sym_lex_l in
  invariant_of_list sym_lex_com_l;
  sym_lex_com_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
