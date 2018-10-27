(** {3 Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs : PARLOI:Localinput_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs: LEXLOI:";
   "What-is-it : the translation of Localinput_set_fence_variable_kind_symbol from lexer symbol";
   "Author : François Colonna 31 janvier 2017 at 15:49:45+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* Bnf :                                                         *)
(* >variable_kind<               ::= | >variable_kind_context<   *)
(*                                   | >variable_kind_operator<  *)
(*                                   | >variable_kind_entity<    *)
(*                                   | >variable_kind_external<  *)
(*                                   | >variable_kind_target<    *)

(** {6 Building} *)

let build sym_lvk_lex =
  let sym_lvk_loi =
    Localinput_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide
      sym_lvk_lex
  in
  Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_variable_kind_symbol sym_lvk_loi
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

