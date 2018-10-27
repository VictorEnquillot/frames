(** {3 Localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v";
   "Needs : LEXLOI:Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v";
   "Author : François Colonna 29 mars 2017 at 09:44:36+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_ibo =
  let sym_lex_lvk_l =    
    Localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in
  List.map 
    Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
    sym_lex_lvk_l 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh on lundi 25 avril 2016, 07:09:05 (UTC+0200) *)
