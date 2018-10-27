(** {3 Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_tag_provider_v";
   "Needs : BPRO:Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v";
   "Needs : BPRO:Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needed-by :"; 
   "Definition : an Explicit Target Entity is defined by a command_creation (define, read ...)"; 
   "Definition : an Implicit Target Entity is defined implicitly by a command_tounit (print, write)";
   "What-is-it : for a given Input Command it provides the symbol Subtree of the Target associated";
   "What-is-it : it dispatches this provision to specific modules";
   "Example : define Poi_h defines Poi_h as an explicit Target";
   "How-is-it-done : by getting their variable names (Hom_b_2, Poi_a) from the Input B-tree";
   "How-is-it-done : by allocating them to the operator and operand respectively";
   "Remark : operator (variable_name) -> Operator Tag through its define command";
   "Remark : operand (variable_name) -> Whatever_domain Tag through its define command";
 ]
;;

(* Target by define >variable_name< target *)
(*             (of Variable )              *)  
(*                 / \                     *)
(*  Operator_creation   Operand            *)
(*    (of Variable)  (of Variable)         *)
(* --------------------------------------- *)
(*        Tag            Tag               *)
(*        /\             /\                *)
(*       _BT_           _BT_               *)

let nam_mod = Management_v.current_module_name (documentation ());;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_lhc = 

  let soi_lhc = Tag_v.sole_index_off_tag tag_lhc in
  let sym_lhc = Tag_v.entity_off_tag tag_lhc in

  match sym_lhc with
  | Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
      (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol sym_lcd) ->


(* Eliminate NON TARGET define *)

        Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v.provide (sym_lcd, soi_lhc)        
	  
  | Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol sym_lup ->

        Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v.provide (sym_lup, soi_lhc)
	  
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Localinput_set_body_handle_command Symbol were Define or Print"
	(Format.sprintf "Input Target Symbol is %s"
	   (Localinput_set_body_handle_command_symbol_v.fullname sym_lhc)
	)
	"Check input file"
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
(* done with do_provider_without_register.sh Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:11 (UTC+0100) *)
