(** {3 Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_external_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Basicname Variable_external";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ope, bna_ibo) =
  Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo; 
  
  let bna_var_ope_l = Basicname_variable_external_list_by_basicname_inputbox_provider_v.provide bna_ibo in
  if not (List.mem bna_var_ope bna_var_ope_l)
  then
    failwith (Format.sprintf "Not_a_Basicname_variable_external:%s.%s" nam_mod "build")
  else ()
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
(* done with do_provider_without_register.sh Check_is_basicname_variable_external_by_basicname_provider_v.ml  on mercredi 19 avril 2017, 11:25:20 (UTC+0200) *)
