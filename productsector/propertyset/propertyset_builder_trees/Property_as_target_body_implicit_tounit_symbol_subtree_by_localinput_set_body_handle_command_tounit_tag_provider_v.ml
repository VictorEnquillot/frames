(** {3 Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v";
   "Needs : BPRO:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Needs : BPRO:Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v";
   "Register : BPRO:Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v";
   "Needed-by :"; 
   "Definition : an Explicit Target Entity is defined by a command_creation (define, read ...)"; 
   "Definition : an Implicit Target Entity is defined implicitly by a command_tounit (print, write)";
   "What-is-it : for a given Command_tounit String_off (variable name)";
   "What-is-it : it provides the B-Tree for the Target_implicit_tounit associated to this variable_name";
   "Example : print Poi_h defines Poi_h as an implicit_tounit Target";
   "How-is-it-done : by allocating its variable name (Poi_h) to its operator and operand";
   "Remark : operator (variable_name) -> Operator Tag through its define command";
   "Remark : operand (variable_name) -> Whatever_domain Tag through its define command";
 ]
;;

(*             Target_implicit_tounit            *)
(*              for print or write             *)
(*              (of Variable Poi_h)            *)  
(*                     / \                     *)
(*        Operator_unit   Operand Poi_h        *)
(*        (of Variable)   (Target Poi_h        *)
(*                         | External Variable *)
(* ------------------------------------------- *)
(*              Other domains                  *)
(* ------------------------------------------- *)
(*            Tag            Tag               *)
(*            /\             /\                *)
(*           _BT_           _BT_               *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

let property_as_operand_symbol_subtree_of_localinput_set_body_handle_command_tounit_tag tag_lcu =
  let nam_fun = "property_as_operand_symbol_subtree_of_localinput_set_body_handle_command_tounit_tag" in

(* Full Localinput_tag B-Tree *)

  let soi_lcu = Tag_v.sole_index_off_tag tag_lcu in
  let nam_ibo = 
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index 
      soi_lcu 
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide bna_ibo in
  let sym_loi_t = Tree_v.map Tag_v.entity_off_tag tag_loi_t in

(* Print Localinput_tag variable_name_entity_ not implicit *)
(* Kind of Variable name entity implicit *)

  let sof_lcu = Localinput_set_body_handle_command_tounit_tag_v.string_off tag_lcu in

  let pre_sym_lve_sof sof s = 
    (Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol s)
      && (Localinput_symbol_v.string_off s = sof)
  in  
 
  let sym_loi_lve_l =
    Tree_v.node_list_of_node_predicate_off_tree 
      (pre_sym_lve_sof sof_lcu)
      sym_loi_t
  in
  
  let pre_sym_lei_sof sof s = 
    (Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_constructor s)
      && (Localinput_symbol_v.string_off s = sof)
  in
  
  let sym_loi_lve =    
    List_v.only_element_of_predicate_off_list 
      (fun s -> not (pre_sym_lei_sof sof_lcu s) )
      sym_loi_lve_l 
  in

  match sym_loi_lve with 
  | w when Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_external_constructor w ->
		    
      let sym_pro_fop = 
	Property_symbol_v.property_operand_fence_external_constructor 
	  sof_lcu 
      in
      
      Tree_v.make_of_leaf sym_pro_fop 
	
  | w when Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor w ->
      
      let tag_loi_opd = 
	Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v.localinput_as_set_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree
	  sof_lcu 
	  tag_loi_t
      in
      
      let tag_opd = (* Coerce Down *)
	Localinput_set_body_handle_command_creation_define_tag_v.localinput_set_body_handle_command_creation_define_tag_off_localinput_tag
	  tag_loi_opd 
      in
      
      Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v.provide
	tag_opd
	
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Variable_name %s existed in Localinput_as_set_fence_variable_name_entity_tag_list" sof_lcu)
	(Format.sprintf "Localinput_as_set_fence_variable_name_entity_tag_list is:@   %s"
	   (List_v.name_in_column Localinput_symbol_v.longname sym_loi_lve_l)
	)
	"Check input file"
;;

(** {6 Building} *)
 
let build tag_lcu =
  let sym_lcu = Tag_v.entity_off_tag tag_lcu in

  match sym_lcu with 
  | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_write_symbol
      (Localinput_set_body_handle_command_tounit_write_symbol_t.Localinput_set_body_handle_command_tounit_write_constructor sof_cuw) ->
	let nam_mod = Management_v.current_module_name (documentation ()) in
	Utilities_v.not_yet_implemented nam_mod "build unit_write"

  | Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
      (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor sof_lup) ->

(* Operator_unit Leaf Subtree *)

  let sym_pro_ptp =
    Property_symbol_v.property_operator_fence_tounit_print_constructor 
      sof_lup
  in

  let sym_pro_ptp_f = Tree_v.make_of_leaf sym_pro_ptp in

(* Operand Subtree *)

  let sym_pro_opd_st = 
    property_as_operand_symbol_subtree_of_localinput_set_body_handle_command_tounit_tag
      tag_lcu
  in
  
(* Target Subtree *)
  
  let sym_pro_pec =
    Property_symbol_v.property_target_body_implicit_tounit_constructor
      sof_lup
  in
  
  Tree_v.make_of_node sym_pro_pec [sym_pro_ptp_f; sym_pro_opd_st]	  
;;

(** {6 Storing} *)

let store tag_lcu result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.store nam_mod tag_lcu result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lcu =
  let result = build tag_lcu in
  store tag_lcu result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_lcu =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.retrieve nam_mod tag_lcu in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lcu =
  if Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_register_v.is_stored tag_lcu
  then retrieve tag_lcu
  else build_n_store tag_lcu
;;

(** {6 Providing} *)

let provide tag_lcu =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lcu in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_as_target_body_implicit_tounit_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:04 (UTC+0100) *)
