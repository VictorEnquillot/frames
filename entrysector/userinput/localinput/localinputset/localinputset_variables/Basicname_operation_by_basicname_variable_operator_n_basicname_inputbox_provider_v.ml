(** {3 Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Register : VARLOI:Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : for a given Basicname Variable_operator it provides its Basicname Operation from its Basicname Variable_operator";
   "How-is-it-done : by extracting its Basicname_context_context string_off from its Define B-Subtree";
   "How-is-it-done : and extracting Leaf Basicname_operation_constructor from it";
   "Author : François Colonna 26 avril 2017 at 10:14:56+02:00";
   "Author : François Colonna 04 juin 2017 at 14:09:41+02:00 try added";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* define Ope_len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ope, bna_ibo) =
  Check_is_basicname_variable_operator_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide (bna_var_ope, bna_ibo);
  
  Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;

  let bna_var = Basicname_v.basicname_variable_of_basicname_variable_operator bna_var_ope in
  let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in

  let tag_loi_dbo = 
    try 
      Tree_v.only_node_of_node_predicate_off_tree
      (fun (s, i) -> 
        Localinput_symbol_v.is_localinput_set_fence_cell_operation_symbol_off_localinput_symbol s)
      tag_loi_lcd_st 
    with Failure "Not_found:Tree_v.only_node_of_predicate_off_tree" ->
      Error_messages_v.print_syntax_error __LOC__ "build"
	(Format.sprintf "keyword \"operation\" exists in databox file %s.loc" (Basicname_v.string_off bna_ibo))
	"it is missing in operator definition block"
	"Add line : operation <operation_name>"
  in
  
  let sof_loi_dbo = Localinput_tag_v.string_off tag_loi_dbo in

  Basicname_v.basicname_operation_of_string sof_loi_dbo
;;

(** {6 Storing} *)

let store (bna_var_ope, bna_ibo) val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_register_v.store nam_mod (bna_var_ope, bna_ibo) val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var_ope, bna_ibo) =
  let val_ = build (bna_var_ope, bna_ibo) in
  store (bna_var_ope, bna_ibo) val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve (bna_var_ope, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var_ope, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var_ope, bna_ibo) =
  if Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_register_v.is_stored (bna_var_ope, bna_ibo)
  then retrieve (bna_var_ope, bna_ibo)
  else build_n_store (bna_var_ope, bna_ibo)
;;

(** {6 Providing} *)

let provide (bna_var_ope, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_var_ope, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.ml force on mardi 25 avril 2017, 15:59:44 (UTC+0200) *)
