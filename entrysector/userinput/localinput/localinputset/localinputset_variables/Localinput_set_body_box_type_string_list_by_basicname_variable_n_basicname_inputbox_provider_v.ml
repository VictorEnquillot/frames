(** {3 Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v";
   "Register : VARLOI:Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : the string argument of the make function for an Target";
   "How-is-it-done : by contatenating domain_name \"_\" type_name and name (string_off)";
   "Author : François Colonna 27 mars 2017 at 14:47:02+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var, bna_ibo) =

  let tag_inp_lcd_st =
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  
  let pre_tag_bbt_sof sof (s, i) = Localinput_symbol_v.localinput_set_body_box_type_constructor sof = s in
  let nam_var = Basicname_v.string_off bna_var in
  let tag_inp_bbt = Tree_v.only_node_of_node_predicate_off_tree 
      (pre_tag_bbt_sof nam_var) 
      tag_inp_lcd_st
  in
  let tag_bbt = (* Coerce Down *) 
    Localinput_set_body_box_type_tag_v.localinput_set_body_box_type_tag_off_localinput_tag 
      tag_inp_bbt 
  in

  Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v.provide tag_bbt
;;

(** {6 Storing} *)

let store (bna_var, bna_ibo) val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_register_v.store nam_mod (bna_var, bna_ibo) val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var, bna_ibo) =
  let val_ = build (bna_var, bna_ibo) in
  store (bna_var, bna_ibo) val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve (bna_var, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var, bna_ibo) =
  if Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_register_v.is_stored (bna_var, bna_ibo)
  then retrieve (bna_var, bna_ibo)
  else build_n_store (bna_var, bna_ibo)
;;

(** {6 Providing} *)

let provide (bna_var, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_var, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.ml  on mercredi 9 novembre 2016, 11:39:19 (UTC+0100) *)
