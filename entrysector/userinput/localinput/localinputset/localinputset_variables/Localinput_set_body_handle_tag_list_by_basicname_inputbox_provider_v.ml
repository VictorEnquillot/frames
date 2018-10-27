(** {3 Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_body_handle_tag_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_set_body_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Cell_target_operator Tags";
   "Author : François Colonna 08 novembre 2016 at 10:09:26+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lsb_l = 
    Localinput_set_body_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let tag_lbh_l = List.filter 
      (fun (s, i) ->
	Localinput_set_body_symbol_v.is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol s
      )
      tag_lsb_l
  in
  
  List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_body_symbol_v.localinput_set_body_handle_symbol_off_localinput_set_body_symbol) 
    tag_lbh_l
;;

(** {6 Storing} *)

let store bna_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_set_body_handle_tag_list_by_basicname_inputbox_register_v.store nam_mod bna_ibo result;
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
  let result = Localinput_set_body_handle_tag_list_by_basicname_inputbox_register_v.retrieve nam_mod bna_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace bna_ibo =
  if Localinput_set_body_handle_tag_list_by_basicname_inputbox_register_v.is_stored bna_ibo
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

(* done with do_provider_with_register.sh Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:00 (UTC+0200) *)
