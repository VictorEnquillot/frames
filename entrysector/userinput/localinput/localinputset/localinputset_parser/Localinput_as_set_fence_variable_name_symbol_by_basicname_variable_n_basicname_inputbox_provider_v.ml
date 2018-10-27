(** {3 Localinput_as_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_as_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Author : François Colonna 31 janvier 2017 at 10:15:45+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var, bna_ibo) =
  let sym_lvn = 
    Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in

  Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_variable_name_symbol
    sym_lvn
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_as_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.ml force on mardi 31 janvier 2017, 10:59:34 (UTC+0100) *)
