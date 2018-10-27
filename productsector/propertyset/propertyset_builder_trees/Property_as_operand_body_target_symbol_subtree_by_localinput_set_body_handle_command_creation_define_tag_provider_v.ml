(** {3 Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v";
   "Needs : BPRO:Make_argument_by_localinput_set_body_box_type_tag_provider_v";
   "Needs : BPRO:Localinput_tag_subtree_by_localinput_tag_provider_v";
   "Needs : BPRO:Localinput_tag_subtree_by_localinput_tag_provider_v";
   "Needs : BPRO:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Register : BPRO:Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_register_v";
   "Needed-by :"; 
   "Definition : an Explicit Target Entity is defined by a command_creation (define, read ...)"; 
   "Definition : an Implicit Target Entity is defined implicitly by a command_tounit (print, write)";
   "What-is-it : for a given Command_creation String_off (variable name)";
   "What-is-it : it provides the B-Tree for the Target_explicit_ associated to this variable_name";
   "Example : define Poi_h defines Poi_h as an explicit_ Target";
   "How-is-it-done : by getting their variable names (Hom_b_2, Poi_a) from the Input B-tree";
   "How-is-it-done : by allocating them to the operator and operand respectively";
   "Remark : operator (variable_name) -> Operator Tag through its define command";
   "Remark : operand (variable_name) -> Whatever_domain Tag through its define command";
   "Author : François Colonna 04 avril 2017 at 10:21:23+02:00";
 ]
;;

(* Target_explicit_ by define >variable_name< target *)
(*                     (of Variable)                 *)  
(*                          / \                      *)
(*       Operator_creation        Operand            *)
(*         (of Variable)       (of Variable)         *)
(* ------------------------------------------------- *)
(*             Tag                 Tag               *)
(*             /\                  /\                *)
(*            _BT_                _BT_               *)

let nam_mod = Management_v.current_module_name (documentation ());;

let property_as_operand_body_target_of_variable_name_of_localinput_command_creation_define_tag_subtree nam_ivn_lcd tag_loi_lcd_st =
  let nam_fun = "property_as_operand_body_target_of_variable_name_of_localinput_command_creation_define_tag_subtree" in

  Management_v.debug_what_string "nam_ivn_lcd" nam_mod nam_fun nam_ivn_lcd;

  let pre_tag_bty_sof sof (s, i) = (Localinput_symbol_v.localinput_set_body_box_type_constructor sof = s) in
  let tag_loi_bty = 
    try Tree_v.only_node_of_node_predicate_off_tree 
	(pre_tag_bty_sof nam_ivn_lcd) 
	tag_loi_lcd_st 
    with Failure "Not_found:Tree_v.only_node_of_predicate_off_tree" -> 
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "Variable name >%s< defined a Body_box" nam_ivn_lcd)
      "it did NOT"
      "Check input file and/or Property_symbol_v.make"
  in

  let tag_bty = Localinput_set_body_box_type_tag_v.localinput_set_body_box_type_tag_off_localinput_tag tag_loi_bty in
  let str_mak = Make_argument_by_localinput_set_body_box_type_tag_provider_v.provide tag_bty in

  try Property_symbol_v.make str_mak nam_ivn_lcd
  with Failure "Not_a_property_symbol:Property_symbol_v.ml:make" ->
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "string >%s< were a valid argument for Property_symbol_v.make" str_mak)
      "it is NOT"
      "Check input file and/or Property_symbol_v.make"
;;

let localinput_variable_name_of_localinput_command_creation_define_symbol_subtree sym_loi_lcd_st =

  let pre_sym_ctd s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operand_constructor s in
  let sym_loi_ctd = Tree_v.only_node_of_node_predicate_off_tree pre_sym_ctd sym_loi_lcd_st in
  Localinput_symbol_v.string_off sym_loi_ctd
;;

let localinput_as_variable_name_symbol_of_localinput_command_creation_define_symbol_subtree sym_loi_lcd_st =

  let pre_sym_lve s = Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol s in
  Tree_v.only_node_of_node_predicate_off_tree pre_sym_lve sym_loi_lcd_st
;;

let localinput_as_set_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_list nam_ivn_opd tag_loi_l =

  let pre_tag_lcd_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof) in

  List_v.only_element_of_predicate_off_list (pre_tag_lcd_sof nam_ivn_opd) tag_loi_l 
;;

let localinput_as_set_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree nam_ivn_opd tag_loi_t =

  let pre_tag_lcd_sof sof (s, i) = 
  (Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol s)
    && (Localinput_symbol_v.string_off s = sof) in

  Tree_v.only_node_of_node_predicate_off_tree (pre_tag_lcd_sof nam_ivn_opd) tag_loi_t 
;;

let operator_creation_leaf_of_localinput_command_creation_define_tag_subtree sym_loi_lcd_cur_st =
  let nam_fun = "operator_creation_leaf_of_localinput_command_creation_define_tag_subtree" in
  
  let pre_sym_cto s = Localinput_symbol_v.is_localinput_set_fence_cell_target_operator_constructor s in
  
  let sym_loi_cto = try Tree_v.only_node_of_node_predicate_off_tree pre_sym_cto sym_loi_lcd_cur_st 
  with Failure "Not_found:Tree_v:node_find_of_predicate_off_tree" ->
    Error_messages_v.print_fatal_error __LOC__ "build"
      "Some Target_operator Symbol node exists in Command_define Subtree"
      (Format.sprintf "Command_define Subtree Node list is :@.   %s" 
	 (List_v.name_in_column  Localinput_symbol_v.fullname (Tree_v.node_list_off_tree sym_loi_lcd_cur_st) )
      )
      "Check input file"
  in
  
  let nam_ivn_cto = Localinput_symbol_v.string_off sym_loi_cto in
  Management_v.debug_what_string "nam_ivn_cto" nam_mod nam_fun nam_ivn_cto;
  
  let sym_pro_pct = 
    Property_symbol_v.property_operator_fence_creation_toentity_constructor 
      nam_ivn_cto
  in
  
  Tree_v.make_of_leaf sym_pro_pct
;;

let operand_symbol_subtree_of_apply_of_variable_name_of_localinput_tag_of_localinput_tag_subtree apply nam_ivn_opd tag_loi_opd tag_loi_opd_st =
  let nam_fun = "operand_symbol_subtree_of_apply_of_localinput_tag_of_localinput_tag_subtree" in

  let sym_loi_opd_st = Tree_v.map Tag_v.entity_off_tag tag_loi_opd_st in
  
  let sym_loi_opd_lve = (* Localinput_set_fence_variable_name_entity_symbol *)
    localinput_as_variable_name_symbol_of_localinput_command_creation_define_symbol_subtree
      sym_loi_opd_st
  in
  
  match sym_loi_opd_lve with
  | w when Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor w ->

      apply tag_loi_opd
		      
  | w when Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_external_constructor w ->
		    
      let sym_pro_fop =
	Property_symbol_v.property_operand_fence_external_constructor 
	  nam_ivn_opd
      in
      Tree_v.make_of_leaf sym_pro_fop
	
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Input Target Symbol were Target or External"
	(Format.sprintf "Input Target Symbol is %s"
	   (Localinput_symbol_v.fullname sym_loi_opd_lve)
	)
	"Check input file"
;;	  

let property_symbol_subtree_of_localinput_tag_tree_of_localinput_as_comand_define_tag tag_loi_t tag_loi_lcd =
  let nam_fun = "property_symbol_subtree_of_localinput_tag_tree_of_localinput_as_comand_define_tag" in

  let rec apply tag_loi_lcd_cur =

    let nam_ivn_lcd_cur = Localinput_tag_v.string_off tag_loi_lcd_cur in
    Management_v.debug_what_string "nam_ivn_lcd_cur" nam_mod nam_fun nam_ivn_lcd_cur;

    let tag_loi_lcd_cur_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lcd_cur in
    
(* Command_define Subtree Improve : dont use Tag subtree *)
    
    let sym_loi_lcd_cur_st = Tree_v.map Tag_v.entity_off_tag tag_loi_lcd_cur_st in
    
(* Target Symbol *)
    
    let sym_pro_pec = 
      property_as_operand_body_target_of_variable_name_of_localinput_command_creation_define_tag_subtree 
	nam_ivn_lcd_cur 
	tag_loi_lcd_cur_st 
    in
    
(* Operator_creation Leaf Subtree *)

    let sym_pro_pct_f = 
      operator_creation_leaf_of_localinput_command_creation_define_tag_subtree 
	sym_loi_lcd_cur_st 
    in

(* Operand Subtree *)
    
    let nam_ivn_opd =
      localinput_variable_name_of_localinput_command_creation_define_symbol_subtree 
	sym_loi_lcd_cur_st 
    in

    Management_v.debug_what_string "nam_ivn_opd" nam_mod "apply" nam_ivn_opd;
    
    let tag_loi_opd = 
      localinput_as_set_body_handle_command_creation_define_tag_of_localinput_variable_name_of_localinput_tag_tree
	nam_ivn_opd 
	tag_loi_t
    in
    
    let tag_loi_opd_st = 
      Localinput_tag_subtree_by_localinput_tag_provider_v.provide 
	tag_loi_opd 
    in

    let sym_pro_opd_st = 
      if Property_symbol_subtree_by_localinput_tag_register_v.is_stored tag_loi_opd 
      then Property_symbol_subtree_by_localinput_tag_register_v.retrieve nam_mod tag_loi_opd 
      else
	operand_symbol_subtree_of_apply_of_variable_name_of_localinput_tag_of_localinput_tag_subtree 
	  apply 
	  nam_ivn_opd 
	  tag_loi_opd 
	  tag_loi_opd_st
    in
    
(* Target Subtree *)

    Tree_v.make_of_node sym_pro_pec [sym_pro_pct_f; sym_pro_opd_st]	  

  in

  apply tag_loi_lcd 
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_lcd = 

  let soi_lcd = Tag_v.sole_index_off_tag tag_lcd in
  let nam_ibo = 
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index 
      soi_lcd 
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide bna_ibo in

  let tag_loi_lcd = (* Coerce Up *)
    Localinput_set_body_handle_command_creation_define_tag_v.localinput_tag_of_localinput_set_body_handle_command_creation_define_tag  
      tag_lcd 
  in

  property_symbol_subtree_of_localinput_tag_tree_of_localinput_as_comand_define_tag tag_loi_t tag_loi_lcd
;;

(** {6 Storing} *)

let store tag_lcd val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_register_v.store nam_mod tag_lcd val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lcd =
  let val_ = build tag_lcd in
  store tag_lcd val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_lcd =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_register_v.retrieve nam_mod tag_lcd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lcd =
  if Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_register_v.is_stored tag_lcd
  then retrieve tag_lcd
  else build_n_store tag_lcd
;;

(** {6 Providing} *)

let provide tag_lcd =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lcd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_as_operand_body_target_symbol_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:03 (UTC+0100) *)
