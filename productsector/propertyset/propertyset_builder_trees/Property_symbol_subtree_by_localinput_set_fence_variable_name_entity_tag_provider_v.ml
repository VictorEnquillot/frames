(** {3 Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needs : BPRO:Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Needs : BPRO:Localinput_as_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Needs : BPRO:Localinput_set_fence_cell_target_operator_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v";
   "Needs : BPRO:Localinput_set_fence_variable_name_operator_tag_by_localinput_set_fence_cell_target_operator_tag_provider_v";
   "Needs : BPRO:Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v";
   "Needs : BPRO:Localinput_set_fence_cell_target_operand_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v";
   "Needs : BPRO:Localinput_set_fence_variable_name_entity_tag_by_localinput_set_fence_cell_target_operand_tag_provider_v";
   "Needs : BPRO:Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v";
   "Register : BPRO:Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_register_v";
   "Needed-by :"; 
   "Definition : an Implicit Target is implicitly defined by triplet \"print\"|\"write\"|\"name\" \"units\"";
   "Definition : an Explicit Target is explicitly defined by triplet \"define\" \"name\" \"target\"";
   "What-is-it : for a given target_localinput_variable_name_entity (explicit) it provides its B-Subtree";
   "How-is-it-done : by getting its Operator and Operand from Input-file Tree";
   "How-is-it-done : by using Recursion";
   "Author : François Colonna 03 mars 2017 at 15:50:23+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* Tree :                Target               *)
(* Tree :             (String_off)            *)  
(* Tree :                 / \                 *)
(* Tree :         Operator   Operand          *)
(* Tree : (of Operator_tag) (of External_tag) *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lne = 
  let nam_fun = "build" in
  
  let rec apply tag_lne_cur =   (* Recursion *)
    
    let (sym_lne_cur, soi_lne_cur) = tag_lne_cur in
    
    Management_v.debug_what_string "sym_lne_cur" nam_mod nam_fun (Localinput_set_fence_variable_name_entity_symbol_v.longname sym_lne_cur);

    match sym_lne_cur with 
    | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_implicit_symbol sym_lei_cur ->

(* Operator Tounit *)

	let tag_lei_cur = Tag_v.make sym_lei_cur soi_lne_cur in
	let sym_pou_ope = 
	  Property_operator_fence_tounit_symbol_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide 
	    tag_lei_cur
	in

	(* Coerce Up *) 
	let sym_pro_ope =
	  Property_symbol_v.property_symbol_of_property_operator_fence_tounit_symbol
	    sym_pou_ope
	in
	
	let sym_pro_ope_f = Tree_v.make_of_leaf sym_pro_ope in
	
(* Operand External | Target *)
	
	let tag_lei_cur = Tag_v.make sym_lei_cur soi_lne_cur in 
	let tag_lne_opd = 
   	  Localinput_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v.provide 
	    tag_lei_cur
	in

(* Recursion *)

	let sym_pro_opd_st = apply tag_lne_opd in 
	let sym_pro_stl = sym_pro_ope_f :: [sym_pro_opd_st] in
	
(* Root Property_symbol <= Translated from Localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol *)
	     
	let sof_lei_cur = Localinput_set_fence_variable_name_entity_implicit_symbol_v.string_off sym_lei_cur in
	let sym_pro_pec = Property_symbol_v.property_target_body_implicit_tounit_constructor sof_lei_cur in

	Tree_v.make_of_node sym_pro_pec sym_pro_stl

    | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol sym_let_cur ->

(* Operator of Target *)

	let tag_let_cur = Tag_v.make sym_let_cur soi_lne_cur in

(* here Property_symbol_leaf_by_localinput_set_fence_variable_name_entity_target_tag_provider_v *)
	let tag_lto_ope = 
	  Localinput_set_fence_cell_target_operator_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
          tag_let_cur
	in

	let tag_lvo =
	  Localinput_set_fence_variable_name_operator_tag_by_localinput_set_fence_cell_target_operator_tag_provider_v.provide
	    tag_lto_ope
	in

	let sym_pro_ope_f = 
	  Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v.provide
	    tag_lvo
	in

(* --- Property_symbol_leaf_by_localinput_set_fence_variable_name_entity_target_tag_provider_v *)

(* Operand of Target *)

	let tag_lto_opd = 
	  Localinput_set_fence_cell_target_operand_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
	    tag_let_cur
	in

	let tag_lne_opd = 
	  Localinput_set_fence_variable_name_entity_tag_by_localinput_set_fence_cell_target_operand_tag_provider_v.provide
	    tag_lto_opd
	in
	
(* Recursion *)

	let sym_pro_opd_st = apply tag_lne_opd in  

(* Root symbol from Operator kind *)

	let sym_pro_cur =
	  Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
	    tag_let_cur
	in

	Tree_v.make_of_node sym_pro_cur (sym_pro_ope_f :: [sym_pro_opd_st] )

    | Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol sym_lee_cur ->

	let sof_lee_cur = Localinput_set_fence_variable_name_entity_external_symbol_v.string_off sym_lee_cur in
	let sym_pro_opd = Property_symbol_v.property_operand_fence_external_constructor sof_lee_cur in
	Tree_v.make_of_leaf sym_pro_opd 

  in

  apply tag_lne

;;

(** {6 Storing} *)

let store tag_lne val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_register_v.store nam_mod tag_lne val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lne =
  let val_ = build tag_lne in
  store tag_lne val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_lne =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_register_v.retrieve nam_mod tag_lne in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lne =
  if Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_register_v.is_stored tag_lne
  then retrieve tag_lne
  else build_n_store tag_lne
;;

(** {6 Providing} *)

let provide tag_lne =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lne in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.ml force on lundi 6 mars 2017, 11:18:05 (UTC+0100) *)
