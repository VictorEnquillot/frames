(** {3 Localinput_set_fence_variable_name_context_tag_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_context_tag_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_variable_name_context_tag_by_basicname_inputbox_register_v";
   "Needs : BLOI:Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Variable_name_context Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : _lif for localinput_set_fence_";
   "Abbreviation : _lfv for localinput_set_fence_variable_name_";
   "Abbreviation : _lvc for localinput_set_fence_variable_name_context_";
   "Author : François Colonna 09 novembre 2016 at 08:58:06+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =

  let tag_lfv_l = 
    Localinput_set_fence_variable_name_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lve (s, i) = 
    Localinput_set_fence_variable_name_symbol_v.is_localinput_set_fence_variable_name_context_symbol_off_localinput_set_fence_variable_name_symbol s 
  in

  let tag_lfv_sl = List.filter pre_tag_lve tag_lfv_l in

  List.map (* Coerce Down *)
    (Tag_v.map_entity
    Localinput_set_fence_variable_name_symbol_v.localinput_set_fence_variable_name_context_symbol_off_localinput_set_fence_variable_name_symbol)
    tag_lfv_sl 
;;

let build_n_store bna_ibo =
  let tag_lne_l = build bna_ibo in
  Localinput_set_fence_variable_name_context_tag_list_by_basicname_inputbox_register_v.store bna_ibo tag_lne_l;
  tag_lne_l
;;

(** {6 Providing} *)

let provide_without_trace bna_ibo =
  if Localinput_set_fence_variable_name_context_tag_list_by_basicname_inputbox_register_v.is_stored bna_ibo
  then Localinput_set_fence_variable_name_context_tag_list_by_basicname_inputbox_register_v.retrieve bna_ibo
  else build_n_store bna_ibo
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
