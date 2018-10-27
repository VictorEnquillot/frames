(** {3 Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Cell_target_operator Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _lib for localinput_set_body_";
   "Abbreviation : _lbh for localinput_set_body_handle_";
   "Abbreviation : _lhc for localinput_set_body_handle_command_";
   "Abbreviation : loi_lib for localinput_as_set_body_";
   "Author : François Colonna 09 novembre 2016 at 08:37:23+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =

  let tag_lbh_l = 
    Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lhc (s, i) = 
    Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol s
  in

  let tag_lbh_sl = List.filter pre_tag_lhc tag_lbh_l in

  List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_body_handle_symbol_v.localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol)
       tag_lbh_sl
;;

(** {6 Storing} *)

let store key result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_register_v.store nam_mod key result;
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
  let result = Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_register_v.retrieve nam_mod key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace key =
  if Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_register_v.is_stored key
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

(* done with do_provider_with_register.sh Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:00 (UTC+0200) *)
