(** {3 Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Register : PARLOI:Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v";
   "Needs : PARLOI:Localinput_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs : LEXLOI:Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Author : François Colonna 31 janvier 2017 at 10:17:08+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building and Storing} *)

let build_n_store (bna_var, bna_ibo) =
  let sym_lvk = 
    Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
  in

  Localinput_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide
    sym_lvk
;;

(** {6 Retrieving} *)

let retrieve key =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result =
    if (Management_v.is_set_trace_of_module_name_of_function_name nam_mod nam_fun) 
    then Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.retrieve_with_trace key 
    else Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.retrieve key
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var, bna_ibo) =
  if Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.is_stored (bna_var, bna_ibo)
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
