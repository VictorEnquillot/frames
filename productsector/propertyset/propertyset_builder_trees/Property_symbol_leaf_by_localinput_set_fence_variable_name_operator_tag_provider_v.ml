(** {3 Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v";
   "Needs : BPRO:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Needs : BPRO:Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Register : BPRO:Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_register_v";
   "Needed-by :"; 
   "Definition : an Implicit Target is implicitly defined by triplet \"print\"|\"write\" \"name\" \"units\"";
   "Definition : an Explicit Target is explicitly defined by triplet \"define\" \"name\" \"target\"";
   "What-is-it : for a given Target_localinput_variable_name_operator (explicit) it provides its B-Subtree";
   "How-is-it-done : by getting its Operator and Operand from Input-file Tree";
   "Author : François Colonna 06 mars 2017 at 15:56:31+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*                Operator             *)
(*              (String_off)           *)  
(*                   / \               *)

let nam_mod = Management_v.current_module_name (documentation ());;

let localinput_as_set_body_box_type_tag_subtree_of_localinput_as_define_tag_subtree_list_of_operator_string_off tag_loi_lcd_stl sof_ope =
  let nam_fun = "localinput_as_set_body_box_type_tag_subtree_of_operator_string_off" in

  Management_v.debug_what_string "sof_ope" nam_mod nam_fun sof_ope;

  let pre_tag_lcd_sof sof (s, i) = (Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor sof = s) in
  let pre_tag_lcd_roo sof t = pre_tag_lcd_sof sof (Tree_v.root_node_off_tree t) in

  List_v.only_element_of_predicate_off_list 
      (pre_tag_lcd_roo sof_ope) 
      tag_loi_lcd_stl 
;;

(* let localinput_as_set_body_handle_command_define_tag_subtree_list_of_localinput_fullnameoffile nam_ibo = *)
(*   let tag_loi_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide bna_ibo in *)

(*   let pre_tag_lcd (s, i) =  *)
(*     Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_symbol s  *)
(*   in *)
(*   Tree_v.subtree_list_of_node_predicate_off_tree pre_tag_lcd tag_loi_t *)
(* ;; *)

let localinput_as_set_body_handle_command_creation_define_tag_of_localinput_set_fence_variable_name_entity_tag tag_lve_cur =
  let nam_fun = "localinput_as_set_body_handle_command_creation_define_tag_of_localinput_set_fence_variable_name_entity_tag" in

  Management_v.debug_what_string "tag_lve_cur" nam_mod nam_fun (Localinput_set_fence_variable_name_entity_tag_v.longname tag_lve_cur);

  let soi_lve_cur = Tag_v.sole_index_off_tag tag_lve_cur in
  
  let tag_lcd_cur =
    Localinput_any_category_by_sole_index_extractor_v.localinput_set_body_handle_command_creation_define_tag_off_sole_index
      soi_lve_cur 
  in
  
  Tag_v.map_entity (* Coerce Up *)
    Localinput_symbol_v.localinput_symbol_of_localinput_set_body_handle_command_creation_define_symbol
    tag_lcd_cur
;;

let property_as_operator_symbol_of_localinput_as_set_body_box_type_tag_subtree tag_loi_bbt_st =
(* type [ "operator" "body" "creation" "transformation" "constructor" ] *)
  let nam_fun = "property_as_operator_symbol_of_localinput_as_set_body_box_type_tag_subtree" in

  let tag_loi_roo = Tree_v.root_node_off_tree tag_loi_bbt_st in
  let sof_ope = Localinput_tag_v.string_off tag_loi_roo in

  Management_v.debug_what_string "tag_loi_roo" nam_mod nam_fun (Localinput_tag_v.longname tag_loi_roo);

  let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor s in
  let tag_loi_bwl_l = Tree_v.node_filter_of_node_predicate_off_tree pre_tag_bwl tag_loi_bbt_st in
  let sof_l = List.map Localinput_tag_v.string_off tag_loi_bwl_l in

  match sof_l with 
  | s_l when List.mem "copy" s_l ->
      Property_symbol_v.property_operator_fence_creation_toentity_constructor sof_ope

  | s_l when List.mem "tomeasure" s_l -> 
      Property_symbol_v.property_operator_fence_creation_tomeasure_constructor sof_ope

  | s_l when List.mem "transformation" s_l ->
      Property_symbol_v.property_operator_fence_creation_toentity_constructor sof_ope

  | s_l ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
        "Localinput_set_body_box_type list of string contained a string \"transformation\" or \"tomeasure\""
	(Format.sprintf "list is :@   %s" (List_v.name_in_column (fun s->s) s_l))
	"Provide correct string from Operator_symbol list or add it"
;;

(** {6 Building} *)
 
let build tag_lno = 

(* Prerequisites *)

  let soi_lno = Tag_v.sole_index_off_tag tag_lno in

  let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_lno
  in
  let sof_ope = Localinput_set_fence_variable_name_operator_tag_v.string_off tag_lno in

  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo in

  let tag_loi_lbt = List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> Localinput_symbol_v.localinput_set_body_box_type_constructor sof_ope = s)
      tag_loi_l
  in

  let tag_loi_lbt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lbt in

  let sym_pro_ope = 
    property_as_operator_symbol_of_localinput_as_set_body_box_type_tag_subtree 
      tag_loi_lbt_st 
  in

  Tree_v.make_of_leaf sym_pro_ope
;;

(** {6 Storing} *)

let store tag_lno sym_pro_st =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_register_v.store nam_mod tag_lno sym_pro_st;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_lno =
  let sym_pro_st = build tag_lno in
  store tag_lno sym_pro_st;
  sym_pro_st
;;

(** {6 Retrieving} *)

let retrieve tag_lno =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_register_v.retrieve nam_mod tag_lno in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_lno =
  if Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_register_v.is_stored tag_lno
  then retrieve tag_lno
  else build_n_store tag_lno
;;

(** {6 Providing} *)

let provide tag_lno =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_lno in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:07 (UTC+0100) *)
