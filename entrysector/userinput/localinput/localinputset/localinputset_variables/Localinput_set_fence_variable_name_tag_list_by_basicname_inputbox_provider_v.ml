(** {3 Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_set_fence_tag_all_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Variable_name Tags";
   "Author : François Colonna 08 novembre 2016 at 17:17:18+01:00";
   "Author : François Colonna 21 avril 2017 at 11:26:17+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lsf_l = 
    Localinput_set_fence_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let tag_lsf_sl = List.filter
      (fun (s, i) -> 
	Localinput_set_fence_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol s) 
      tag_lsf_l 
  in

  List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_fence_symbol_v.localinput_set_fence_variable_name_symbol_off_localinput_set_fence_symbol)
    tag_lsf_sl
;;

(** {6 Storing} *)

let store key result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_register_v.store nam_mod key result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store key =
  let result = build key in
  store key result;
  result
;;

(** {6 Retrieving} *)

let retrieve key =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_register_v.retrieve nam_mod key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace key =
  if Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_register_v.is_stored key
  then retrieve key
  else build_n_store key
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:02 (UTC+0200) *)
