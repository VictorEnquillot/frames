(** {3 Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needs : BPRO:Localinput_as_set_fence_variable_name_entity_target_tag_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needs : BPRO:Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Register : BPRO:Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v";
   "Needed-by :"; 
   "Definition : an Implicit Target is implicitly defined by triplet \"print\"|\"write\"|\"name\" \"units\"";
   "Definition : an Explicit Target is explicitly defined by triplet \"define\" \"name\" \"target\"";
   "What-is-it : for a given target_localinput_variable_name_entity (explicit) it provides its B-Subtree";
   "How-is-it-done : by getting its Operator and Operand from Input-file Tree";
   "How-is-it-done : by using Recursion";
   "Author : François Colonna 03 mars 2017 at 15:50:23+01:00";
 ]
;;

(* Inputbox : print Len_bc *)
(* Inputbox :       units [ Uni_len ] *)
(* Inputbox :       end -- print *)

(* Tree :            Target_implicit                *)
(* Tree :              (String_off)                 *)  
(* Tree :                 /       \                 *)
(* Tree :         Operator         Operand          *)
(* Tree : (of Operator_print_tag) (of Target_tag)   *)
(* Tree : (of Operator_write_tag) (of External_tag) *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build tag_lct = 
  let nam_fun = "build" in

  let sym_lct = Tag_v.entity_off_tag tag_lct in
  let soi_lct = Tag_v.sole_index_off_tag tag_lct in
  let bna_ibo = Localinput_basicname_inputbox_by_any_sole_index_provider_v.provide soi_lct in
  
  Management_v.debug_what_string "sym_lct" nam_mod nam_fun (Localinput_set_body_handle_command_tounit_symbol_v.longname sym_lct);
  
    match sym_lct with 
    | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
	(Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor nam_var) ->
	  
	  Management_v.debug_what_string "nam_var" nam_mod nam_fun nam_var;

(* Operator Tounit *)
	  let sym_pro_ope = 
	    Property_symbol_v.property_operator_fence_tounit_print_constructor 
	      nam_var
	  in
	  
	  let sym_pro_ope_f = Tree_v.make_of_leaf sym_pro_ope in
	  
(* Operand Target_implicit *)
	  let sym_pro_pit = 
	    Property_symbol_v.property_target_body_implicit_tounit_constructor 
	      nam_var
	  in 
	  
(* Operand Entity Target or External from Definition *)
	  let sym_lcd = 
	    Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
	      nam_var 
	  in

	  let tag_lne_opd = 
	    Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.provide
	      (bna_ibo, sym_lcd)
	  in
	  
(* Target Subtree got recursively *)
	  let sym_pro_opd_st =
	    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	      tag_lne_opd
	  in
	  
	  Tree_v.make_of_node sym_pro_pit (sym_pro_ope_f :: [sym_pro_opd_st]) 
	    
    | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_write_symbol
	(Localinput_set_body_handle_command_tounit_write_symbol_t.Localinput_set_body_handle_command_tounit_write_constructor nam_var) ->

	  Utilities_v.not_yet_implemented nam_mod "build write"
;;
 
(** {6 Storing} *)

let store tag_lht val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.store nam_mod tag_lht val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lht =
  let val_ = build tag_lht in
  store tag_lht val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_lht =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.retrieve nam_mod tag_lht in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lht =
  if Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.is_stored tag_lht
  then retrieve tag_lht
  else build_n_store tag_lht
;;

(** {6 Providing} *)

let provide tag_lht =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lht in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:07 (UTC+0100) *)
