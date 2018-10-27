(** {3 Localinput_set_fence_variable_name_operator_tag_by_basicname_variable_operator_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_operator_tag_by_basicname_variable_operator_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Target Operator Tag from its fence_variable_name_operator";
   "Author : François Colonna 17 mai 2017 at 15:20:05+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ope, bna_ibo) =

  Basicname_v.check_is_basicname_variable_operator_of_basicname bna_var_ope;
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;

  let tag_lno_l = 
    Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo 
  in
  
  let nam_var_ope = Basicname_v.string_off bna_var_ope in
  List_v.only_element_of_predicate_off_list (fun t -> 
    Localinput_set_fence_variable_name_operator_tag_v.string_off t = nam_var_ope) 
    tag_lno_l
;;

let build_n_store tag_cto =
  build tag_cto 
;;

(** {6 Providing} *)

let provide_without_trace tag_cto =
  build_n_store tag_cto
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
