(** {3 Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs: LEXLOI:";
   "What-is-it : the translation of Localinput_set_fence_variable_name_symbol from lexer kind symbol";
   "Author : François Colonna 31 janvier 2017 at 09:53:20+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* Bnf :                                                                 *)
(* >variable_kind<                 ::= | context *)
(*                                     | external *)
(*                                     | operator *)
(*                                     | target *)

(* >variable_name<                 ::= | >variable_name_context<         *)
(*                                     | >variable_name_operator<        *)
(*                                     | >variable_name_entity<          *)

(* >variable_name_entity<          ::= | >variable_name_entity_external< *)
(*                                     | >variable_name_entity_target<   *)
(*                                     | >variable_name_entity_implicit< *)

(* >variable_name_entity_target<   ::= word_capitalized                  *)
(* >variable_name_entity_external< ::= word_capitalized                  *)
(* >variable_name_entity_implicit< ::= word_capitalized                  *)
(* >variable_name_context<         ::= word_capitalized                  *)
(* >variable_name_operator<        ::= word_capitalized                  *)

(** {6 Building} *)

let build sym_lvk =
  let nam_fun = "build" in

  Management_v.debug_what_string " sym_lvk " nam_mod nam_fun (Localinput_lexer_variable_kind_symbol_v.fullname sym_lvk);
  let nam_var = Localinput_lexer_variable_kind_symbol_v.string_off sym_lvk in
  Management_v.debug_what_string " variable_name " nam_mod nam_fun nam_var;

  match sym_lvk with 
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol _ ->
      Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_context_constructor nam_var 
	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol _ ->
      Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_operator_constructor nam_var 
	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol _ ->
      Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_entity_external_constructor nam_var 
	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol _ ->
      Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_entity_target_constructor nam_var 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

