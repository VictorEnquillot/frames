(** {3 Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Make_argument_by_localinput_set_body_box_type_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the string argument of the make function for an Target";
   "How-is-it-done : by contatenating domain_name \"_\" type_name and name (string_off)";
   "Improve : subtype Localinput_variable_name Localinput_variable_name_target etc...";
   "Author : François Colonna 27 mars 2017 at 11:04:30+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var, bna_ibo) =

  Basicname_v.check_is_basicname_variable_of_basicname bna_var;
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;

  let str_l =
    Localinput_set_body_box_type_string_list_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  List_v.name_underscored_off_string_list str_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:13 (UTC+0200) *)
