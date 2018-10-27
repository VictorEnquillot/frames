(** {3 Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Localinput_set_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v";
   "Needs : BPRO:Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given input file it provides the Property_symbol B-SubTree Rooted by it";
   "What-is-it : its topson are only Property_target_body_implicit_tounit_symbol";
   "What-is-it : Only Property_target_body_implicit_tounit are producing something from the Code";
   "How-is-it-done : a Target is connected to its Operand by its Command Define";
   "How-is-it-done : this a pseudo recursive process";
   "Improve : get rid of tags : use only symbols";
   "Author : François Colonna 18 mai 2017 at 10:35:15+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
 ;;

(* Tree :                       Property_target_body_implicit_tounit                             *)
(* Tree :                                       ( Len_bc )                                       *)
(* Tree :                                     /            \                                     *)
(* Tree :           Property_operand_body_target_measured  Property_operator_fence_tounit_print  *)  
(* Tree :                           ( Len_bc )                        ( Len_bc )                 *)
(* Tree :                   /                              \                                     *)
(* Tree :.Property_operator_fence_creation_tomeasure       Property_operand_fence_external       *)
(* Tree :               ( Ope_len )                          ( Seg_bc )                          *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_ibo, bna_iba) =
   let nam_fun = "build" in

   Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;
   Basicname_v.check_is_basicname_inputbase_of_basicname bna_iba;

   let nam_ibo = Basicname_v.string_off bna_ibo in
   let nam_iba = Basicname_v.string_off bna_iba in

   Management_v.debug_what_string "nam_ibo" nam_mod nam_fun nam_ibo;
   Management_v.debug_what_string "nam_iba" nam_mod nam_fun nam_iba;

   match nam_iba with 
   | "local" ->

       let tag_lct_l = 
	 Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.provide
	   bna_ibo
       in

       if ( tag_lct_l = [] ) 
       then
	 Error_messages_v.print_fatal_error __LOC__ nam_fun
	   (Format.sprintf "at least one print command existed in input file %s.loc"
	      nam_ibo
	   )
	   "NONE"
	   "Check"
       else 
	 begin
	   let sym_pro_stl = List.map 
	       Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v.provide
	       tag_lct_l 
	   in
	   
	   let sym_pro_pbo = Property_symbol_v.property_context_inputbox_constructor nam_ibo in 
	   
	   Tree_v.make_of_node sym_pro_pbo sym_pro_stl
	 end
   | _ ->
       Error_messages_v.print_fatal_error __LOC__ nam_fun
	 "Inputbase were \"local\""
	 nam_iba
	 "Check"
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
(* done with do_provider_without_register.sh Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:14 (UTC+0100) *)
