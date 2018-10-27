(** {3 Localinput_set_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_command_creation_define_tag_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Command_creation_define Tags";
   "Author : François Colonna 08 novembre 2016 at 10:41:14+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lhc_l =
    Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let pre_tag_lcd (s, i) = 
    Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_symbol s
  in

  let tag_lhc_l = List.filter pre_tag_lcd tag_lhc_l in
  
  List.map
    (Tag_v.map_entity 
       Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_creation_define_symbol_off_localinput_set_body_handle_command_symbol)
    tag_lhc_l
;;

let build_n_store bna_ibo =
  build bna_ibo
;;

(** {6 Providing} *)

let provide_without_trace bna_ibo =
  build_n_store bna_ibo
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
