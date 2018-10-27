(** {3 Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Register : VARLOI:Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : for a given Basicname Variable_external it provides its Basicname External_context from its Define Handle";
   "Author : François Colonna 23 avril 2017 at 13:00:43+02:00";
 ]
;;

(* define Seg_bc                    -- Basicname_variable_external *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc -- Basicname_external_context *)
(*          end -- external *)
(*        end -- define *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ext, bna_ibo) =

  let bna_var = Basicname_v.basicname_variable_of_basicname_variable_external bna_var_ext in
  let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in

  let tag_loi_cto = Tree_v.only_node_of_node_predicate_off_tree
      (fun (s, i) -> 
	Localinput_symbol_v.is_localinput_set_fence_cell_external_context_symbol_off_localinput_symbol s)
      tag_loi_lcd_st 
  in
  
  let sof_loi_cto = Localinput_tag_v.string_off tag_loi_cto in

  Basicname_v.basicname_external_context_of_string sof_loi_cto
;;

(** {6 Storing} *)

let store (bna_var_ext, bna_ibo) val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_register_v.store nam_mod (bna_var_ext, bna_ibo) val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var_ext, bna_ibo) =
  let val_ = build (bna_var_ext, bna_ibo) in
  store (bna_var_ext, bna_ibo) val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve (bna_var_ext, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var_ext, bna_ibo) =
  if Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_register_v.is_stored (bna_var_ext, bna_ibo)
  then retrieve (bna_var_ext, bna_ibo)
  else build_n_store (bna_var_ext, bna_ibo)
;;

(** {6 Providing} *)

let provide (bna_var_ext, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v.ml  on mardi 3 janvier 2017, 09:21:52 (UTC+0100) *)
