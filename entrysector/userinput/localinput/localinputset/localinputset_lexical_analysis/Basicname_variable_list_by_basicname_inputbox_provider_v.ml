(** {3 Basicname_variable_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Basicname_variable_list_by_basicname_inputbox_provider_v";
   "Needs : LEXLOI:Variable_name_list_by_basicname_inputbox_provider_v";
   "What-is-it : for an Input File it provides the list of all Basicname_variable defined";
   "Example : (\"Con_nwc\"";
   "Abbreviation : lex_lwc = localinput_lexer_basic_word_bare_capitalized";
   "Abbreviation : lex_lvk = localinput_lexer_variable_kind";
   "Author : François Colonna 28 mars 2017 at 11:17:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let nam_var_l = 
    Variable_name_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in
  List.map Basicname_v.basicname_variable_of_string nam_var_l 
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
