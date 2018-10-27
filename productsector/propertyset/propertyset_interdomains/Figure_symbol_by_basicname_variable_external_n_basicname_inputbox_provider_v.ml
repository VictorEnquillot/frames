(** {3 Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : IPRO:Figure_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs: VARLOI:Basicname_external_name_by_basicname_variable_external";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 03 janvier 2017 at 10:10:28+01:00";
   "Author : François Colonna 24 avril 2017 at 08:40:17+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_var_ext, bna_ibo) = 

  let bna_var = Basicname_v.basicname_variable_of_basicname_variable_external bna_var_ext in
  let str_arg = 
    Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in 

  let bna_ext_nam = 
    Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let sof_fig = Basicname_v.string_off bna_ext_nam in 

  try 
    Figure_symbol_v.make str_arg sof_fig
  with Failure "Not_a_figure_symbol:Figure_symbol_v.ml:make" ->
    Error_messages_v.print_fatal_error __LOC__ "build"
      "make argument were valid for a Figure_symbol" 
      (Format.sprintf "\"%s\"" str_arg)
      (Format.sprintf "Probably \"constructor\" last keyword is missing in type definition above.@.   check input file %s.loc" 
	 (Basicname_v.string_off bna_ibo))

(** {6 Providing} *)

let provide (bna_var, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build (bna_var, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh on lundi 18 avril 2016, 12:04:45 (UTC+0200) *)
