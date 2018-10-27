(** {3 Localinput_lexer_lexical_analysis_tools_second_pass_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_lexical_analysis_tools_second_pass_v";
   "Needs : ";
   "Needed-by :"; 
   "Author : François Colonna 24 février 2017 at 17:25:29+01:00";
   "Author : François Colonna 13 mai 2017 at 11:40:06+02:00 is_keyword_ended_of_lexeme";
   "Author : François Colonna 01 juin 2017 at 19:37:14+02:00 keyword_enede list empty";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let is_keyword_ended_of_lexeme sym_lex = 

(* Localinput_lexer_command_define_constructor *)
(* Localinput_lexer_variable_kind_operator_constructor *)
(* Localinput_lexer_keyword_defvarnamed_cofactor_constructor *)
  
  (Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol sym_lex)
|| 
  (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_lex)
|| 
  (
   (Localinput_lexer_symbol_v.is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lex)
     &&
   (not 
      (Localinput_lexer_symbol_v.is_localinput_lexer_command_stop_constructor sym_lex)
   )
  )
;;

let localinput_lexer_symbol_list_complete_nextstring_nextvarnamed_of_lexeme_list sym_lex_l =
  let nam_fun = "localinput_lexer_symbol_list_complete_nextstring_nextvarnamed_of_lexeme_list" in

  Management_v.debug_what_string "entering in :" nam_mod nam_fun "function";   

(* [lex_lef_l; lex_rig_l]           *)
(* [lex_lef_l; hr ; tlr]            *)
(* [lex_lef_l; hr ; nexr ; new_lex_rig_l] *)

  let rec apply lex_lef_l lex_rig_l =
    match lex_rig_l with
    | [] -> lex_lef_l
    | hr :: tlr ->
	
	let sof_hr = Localinput_lexer_symbol_v.string_off hr in
	begin
	  match sof_hr with
	  | "?nextstringed?" 
	  | "?nextvarnamed?" -> 

	      Management_v.debug_what_string "hr" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname hr); 

	      let nexr = List.hd tlr in
	      let sof_nex = Localinput_lexer_symbol_v.string_off nexr in
	      let str_arg = Localinput_lexer_symbol_v.name hr in
	      let sym_lex_new = Localinput_lexer_symbol_v.make str_arg sof_nex in 

	      Management_v.debug_what_string "sym_lex_new" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex_new); 
	      
	      apply (lex_lef_l @ [sym_lex_new]) tlr
	  | _ ->
	      apply (lex_lef_l @ [hr]) tlr
	end
  in
  
  apply [] sym_lex_l 
  
;;

let localinput_lexer_symbol_list_complete_defvarnamed_of_lexeme_list sym_lex_l =
  let nam_fun = "localinput_lexer_symbol_list_complete_defvarnamed_of_lexeme_list" in
(* nam_var ..... hr          *)

  Management_v.debug_what_string "entering in :" nam_mod nam_fun "function";   
  
  let rec apply nam_var lex_lef_l lex_rig_l =
    match lex_lef_l with
    | [] -> lex_rig_l
    | lef_h :: lef_tl ->
	
	match lef_h with
	| w when Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w -> 
	    let nam_var = Localinput_lexer_symbol_v.string_off lef_h in
	    Management_v.debug_what_string "nam_var" nam_mod nam_fun nam_var;

	    apply nam_var lef_tl (lef_h :: lex_rig_l)

	| w when Localinput_lexer_symbol_v.string_off w = "?defvarnamed?" ->
	    
	    let str_arg = Localinput_lexer_symbol_v.name w in
	    Management_v.debug_what_string "str_arg" nam_mod nam_fun str_arg;
	    Management_v.debug_what_string "w nam_var" nam_mod nam_fun nam_var;

	    let sym_lex_new = Localinput_lexer_symbol_v.make str_arg nam_var in 
	    Management_v.debug_what_string "sym_lex_new" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex_new); 
	    
	    apply nam_var lef_tl (sym_lex_new :: lex_rig_l)
	      
	| _ ->
	    
	    apply nam_var lef_tl (lef_h :: lex_rig_l)

  in
  
  let sym_lex_rev_l = apply "" sym_lex_l [] in
  List.rev sym_lex_rev_l
    
;;

let localinput_lexer_symbol_list_complete_blocknamed_of_lexeme_list sym_lex_l =
  let nam_fun = "localinput_lexer_symbol_list_complete_blocknamed_of_lexeme_list" in
(* nam_var ..... hr          *)

  Management_v.debug_what_string "entering in :" nam_mod nam_fun "function";   
  
  let rec apply str_end_l lex_lef_l lex_rig_l =  (* str_end_l stack for labelling end keyword *)

    Management_v.debug_what_string "argument str_end_l" nam_mod nam_fun (List_v.name_in_column (fun s->s) str_end_l);

    match lex_lef_l with
    | [] -> lex_rig_l
    | lef_h :: lef_tl ->
	
	match lef_h with
	| w when is_keyword_ended_of_lexeme w ->

	    Management_v.debug_what_string "is_keyword_ended w" nam_mod nam_fun (Localinput_lexer_symbol_v.string_off w);
	    let nam_ent = Localinput_lexer_symbol_v.name lef_h in
	    let wor_l = String_v.split_of_character_of_string '_' nam_ent in
	    let kin_ent = List_v.penultimate_element_off_list wor_l in

	    Management_v.debug_what_string "kin_ent" nam_mod nam_fun kin_ent;
	    
	    apply (kin_ent :: str_end_l) lef_tl (lef_h :: lex_rig_l)

	| w when Localinput_lexer_symbol_v.string_off w = "?blocknamed?" ->
	    
	    Management_v.debug_what_string "?blocknamed? w" nam_mod nam_fun (Localinput_lexer_symbol_v.string_off w);
	    let str_arg = Localinput_lexer_symbol_v.name w in
	    Management_v.debug_what_string "str_arg" nam_mod nam_fun str_arg;

	    let kin_ent = 
	      try List.hd str_end_l 
	      with Failure _ -> 
		Error_messages_v.print_syntax_error __LOC__ nam_fun
		  "list of keyword_ended were NOT EMPTY"
		  (Format.sprintf "it is EMPTY for %s" (Localinput_lexer_symbol_v.fullname w))
		  (Format.sprintf "Check for Syntax Error in inputfile")
	    in
	    let str_end_tl = List.tl str_end_l in
	    Management_v.debug_what_string "w kin_ent" nam_mod nam_fun kin_ent;

	    let sym_lex_new = Localinput_lexer_symbol_v.make str_arg kin_ent in 
	    Management_v.debug_what_string "sym_lex_new" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex_new); 
	    
	    apply str_end_tl lef_tl (sym_lex_new :: lex_rig_l)
	      
	| _ ->
	    
	    apply str_end_l lef_tl (lef_h :: lex_rig_l)

  in
  
  let sym_lex_rev_l = apply [] sym_lex_l [] in
  List.rev sym_lex_rev_l
    
;;

let check_for_empty_string_off sym_lex_l =
  let nam_fun = "check_for_empty_string_off" in

  let emp_l = List.filter 
      (fun s -> (Localinput_lexer_symbol_v.string_off s = "")
	  && 
	(not ( 
	 (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_unnamed_symbol_off_localinput_lexer_symbol s) 
       ||
	 (Localinput_lexer_symbol_v.is_localinput_lexer_token_symbol_off_localinput_lexer_symbol s)
) 
	) 
      )
      sym_lex_l
  in

  if List.length emp_l = 0
  then ()
  else 
    begin
      Error_messages_v.print_lexical_error __LOC__ nam_fun
	"Current lexer had non empty string_off"
	(Format.sprintf "list of Localinput_lexer_symbol_v empty string_off :@.    %s" 
	   (List_v.name_in_column Localinput_lexer_symbol_v.name emp_l) )
	"Check"
    end
      
;;

