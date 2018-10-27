(** {3 Localinput_symbol_subtree_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_symbol_subtree_by_basicname_inputbox_provider_v";
   "Register : B:Localinput_symbol_subtree_by_basicname_inputbox_register_v";
   "Needs : B:Localinput_fullnameoffile_by_basicname_inputbox_provider_v";
   "Needs : PARDB1:Localinput_parser_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Localinput_symbol Rooted by Inputbox_name";
   "What-is-it : a Localinput_context_inputbox son is a ";
   "What-is-it : Localinput_field sons are Localinput_set_fence";
   "How-is-it-done : by using Parser";
   "Abbreviation : dbo  = databox";
   "Abbreviation : db1  = localinput";
   "Invariant : List of Localinput_symbol is unique";
   "Author : François Colonna 03 mars 2017 at 16:51:47+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*         |-           Localinput_context_sector    -|          *)
(*         |                       / | \              |          *)
(*         |-           Localinput_context_domain    -| fixed    *)
(* Context |                       / | \              | trio     *)
(* Quatuor |-           Localinput_context_inputbase -|          *)
(*         |                       / | \              |          *)
(*         |-           Localinput_context_inputbox  -| variable *)
(*         |                         |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_ibo =
  Localinput_parser_tree_by_basicname_inputbox_provider_v.provide
    bna_ibo 
;;

(** {6 Storing} *)

let store bna_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_symbol_subtree_by_basicname_inputbox_register_v.store nam_mod bna_ibo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store bna_ibo =
  let result = build bna_ibo in
  store bna_ibo result;
  result
;;

(** {6 Retrieving} *)

let retrieve bna_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_symbol_subtree_by_basicname_inputbox_register_v.retrieve nam_mod bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace bna_ibo =
  if Localinput_symbol_subtree_by_basicname_inputbox_register_v.is_stored bna_ibo
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
(* done with do_provider_with_register.sh Localinput_symbol_subtree_by_basicname_inputbox_provider_v.ml force on lundi 31 octobre 2016, 14:54:04 (UTC+0100) *)
