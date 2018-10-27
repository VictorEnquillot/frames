(** {3 Localinput_as_set_fence_variable_name_operator_tag_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_fence_variable_name_operator_tag_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tounit_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Variable_name_operator Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : loi_lei for localinput_as_set_fence_variable_name_entity_implicit_";
   "Abbreviation : loi_lvn for localinput_as_set_fence_variable_name_";
   "Abbreviation : loi_lve for localinput_as_set_fence_variable_name_entity_";
   "Abbreviation : _lvn for localinput_set_fence_variable_name_";
   "Abbreviation : _lvc for localinput_set_fence_variable_name_context_";
   "Abbreviation : _lve for localinput_set_fence_variable_name_entity_";
   "Abbreviation : _lvo for localinput_set_fence_variable_name_operator_";
   "Author : François Colonna 08 novembre 2016 at 16:53:59+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lvn_l = 
    Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_vno (s, i) = 
    Localinput_set_fence_variable_name_symbol_v.is_localinput_set_fence_variable_name_operator_constructor s 
  in

  let tag_lvn_vno_l = List.filter pre_tag_vno tag_lvn_l in
  
  List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_operator_symbol_off_localinput_set_fence_variable_name_symbol)
    tag_lvn_vno_l
;;

let build_n_store key =
  let tag_loi_vno_l = build key in
  Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_register_v.store key tag_loi_vno_l;
  tag_loi_vno_l
;;

(** {6 Providing} *)

let provide_without_trace key =
  if Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_register_v.is_stored key
  then Localinput_set_fence_variable_name_operator_tag_list_by_basicname_inputbox_register_v.retrieve key
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
