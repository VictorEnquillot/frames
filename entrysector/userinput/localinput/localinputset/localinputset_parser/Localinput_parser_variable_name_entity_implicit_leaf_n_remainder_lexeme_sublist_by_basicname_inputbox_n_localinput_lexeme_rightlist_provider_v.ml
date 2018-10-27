(** {3 Localinput_parser_variable_name_entity_implicit_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_variable_name_entity_implicit_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol_subtree for a variable_name";
   "Author : François Colonna 01 février 2017 at 10:57:18+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building}  *)

let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let sym_lex_cur = List.hd sym_lex_sl in
  let nam_var = Localinput_symbol_v.string_off sym_lex_cur in
  let bna_var = Basicname_v.basicname_variable_of_string nam_var in
    
  let sym_loi_fvk =
    Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo) 
  in

  let sym_loi_fke = (* Coerce Down *)
    Localinput_set_fence_variable_kind_symbol_v.localinput_set_fence_variable_kind_entity_symbol_off_localinput_set_fence_variable_kind_symbol
      sym_loi_fvk
  in

  match sym_loi_fke with
  | Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol _ 
  | Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_target_symbol _ ->
	
	let sym_loi_vna =
	  Localinput_symbol_v.localinput_set_fence_variable_name_entity_implicit_constructor nam_var
	in
	
	let sym_loi_f = Tree_v.make_of_leaf sym_loi_vna in
	let sym_lex_rem_sl = List.tl sym_lex_sl in

	(sym_loi_f, sym_lex_rem_sl)
	  
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Variable_name >%s< were also defined as a variable_kind external or target to be printed"
	(Format.sprintf "kind >%s<" 
	   (Localinput_set_fence_variable_kind_symbol_v.fullname sym_loi_fvk)
	)
	(Format.sprintf "in input file :@.  %s@. introduce a define block" (Basicname_v.name bna_ibo))
;;
    
