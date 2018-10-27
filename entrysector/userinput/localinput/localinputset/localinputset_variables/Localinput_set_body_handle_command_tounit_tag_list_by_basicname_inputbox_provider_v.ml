(** {3 Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by : BPRO:Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v"; 
   "What-is-it : for a given inputbox file it provides the list of all Command_tounit Tags";
   "Remark : no direct storage";
   "Author : François Colonna 07 avril 2017 at 15:13:43+02:00";
   "Author : François Colonna 01 juin 2017 at 12:23:46+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lhc_l =
    Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let tag_lhc_lct_sl = List.filter 
      (fun (s, i) -> Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol s)
      tag_lhc_l 
  in
  
  List.map 
    (Tag_v.map_entity
       Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol)
    tag_lhc_lct_sl
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
(* done with do_provider_without_register.sh Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.ml force on lundi 6 mars 2017, 10:39:06 (UTC+0100) *)
