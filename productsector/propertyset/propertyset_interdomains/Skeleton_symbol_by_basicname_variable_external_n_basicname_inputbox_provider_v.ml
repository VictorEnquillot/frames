(** {3 Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPRO:Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : BINP:Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "Definition : Localinput_set_fence_variable_name_entity_string_off is the name of a variable entity in Input_file";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 23 avril 2017 at 16:53:01+02:00";
   "Author : François Colonna 07 juin 2017 at 15:34:22+02:00 string_off";
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

  let sof_ske = Basicname_v.string_off bna_ext_nam in 

  try 
    Skeleton_symbol_v.make str_arg sof_ske
  with Failure "Not_a_skeleton_symbol:Skeleton_symbol_v.ml:make" ->
    Error_messages_v.print_fatal_error __LOC__ "build"
      "make argument were valid for a Skeleton_symbol" 
      (Format.sprintf "\"%s\"" str_arg)
      (Format.sprintf "Probably \"constructor\" last keyword is missing in type definition above.@.   check input file %s.loc" 
	 (Basicname_v.string_off bna_ibo))
;;

(** {6 Providing} *)

let provide (bna_var_ext, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh on lundi 18 avril 2016, 12:04:45 (UTC+0200) *)
