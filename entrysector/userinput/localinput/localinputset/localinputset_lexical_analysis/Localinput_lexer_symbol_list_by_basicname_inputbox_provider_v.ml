(** {3 Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v";
   "Needs : LANLOI:Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";
   "Register : LANLOI:Localinput_lexer_symbol_list_by_basicname_inputbox_register_v";
   "Needed-by :"; 
   "Author : François Colonna 23 février 2017 at 11:00:30+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build bna_ibo =
  Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v.provide
    bna_ibo
;;

(** {6 Storing} *)

let store bna_ibo val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_lexer_symbol_list_by_basicname_inputbox_register_v.store nam_mod bna_ibo val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store bna_ibo =
  let val_ = build bna_ibo in
  store bna_ibo val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve bna_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_lexer_symbol_list_by_basicname_inputbox_register_v.retrieve nam_mod bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace bna_ibo =
  if Localinput_lexer_symbol_list_by_basicname_inputbox_register_v.is_stored bna_ibo
  then retrieve bna_ibo
  else build_n_store bna_ibo
;;

(** {6 Providing} *)

let provide bna_ibo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.ml  on vendredi 20 janvier 2017, 11:44:26 (UTC+0100) *)
