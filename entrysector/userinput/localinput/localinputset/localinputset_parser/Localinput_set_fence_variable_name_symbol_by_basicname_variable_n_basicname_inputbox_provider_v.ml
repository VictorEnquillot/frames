(** {3 Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Register : PARLOI:Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v";
   "Author : François Colonna 29 mars 2017 at 09:33:08+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build (bna_var, bna_ibo) =
  let sym_lvk = 
    Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
  in

  Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide
    sym_lvk
;;

(** {6 Storing} *)

let store (bna_var, bna_ibo) val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.store nam_mod (bna_var, bna_ibo) val_;
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
  let result = 
    Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var, bna_ibo) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var, bna_ibo) =
  if Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.is_stored (bna_var, bna_ibo)
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
(* done with do_provider_with_register.sh Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.ml force on mardi 31 janvier 2017, 10:46:17 (UTC+0100) *)
