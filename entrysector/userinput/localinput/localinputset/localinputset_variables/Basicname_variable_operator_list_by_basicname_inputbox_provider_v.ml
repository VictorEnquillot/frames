(** {3 Basicname_variable_operator_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Basicname_variable_operator_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Basicname Variable_operator";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lee_l = 
    Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let nam_var_ext_l = List.map
      Localinput_set_fence_variable_name_operator_tag_v.string_off 
      tag_lee_l
  in
  
  List.map Basicname_v.basicname_variable_operator_of_string nam_var_ext_l
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
(* done with do_provider_without_register.sh Basicname_variable_operator_list_by_basicname_inputbox_provider_v.ml  on mercredi 19 avril 2017, 11:25:20 (UTC+0200) *)
