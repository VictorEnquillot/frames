(** {3 Localinput_set_fence_variable_name_entity_external_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_external_tag_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Variable_name_entity_external Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : _lve for localinput_set_fence_variable_name_entity_";
   "Abbreviation : loi_lve for localinput_as_set_fence_variable_name_entity_";
   "Abbreviation : loi_let for localinput_as_set_fence_variable_name_entity_external_";
   "Author : François Colonna 14 novembre 2016 at 14:29:30+01:00";
   "Author : François Colonna 19 avril 2017 at 14:40:49+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in  

  let tag_lne_sl = List.filter
      (fun (s, i) -> 
	Localinput_set_fence_variable_name_entity_symbol_v.is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol s)
      tag_lne_l 
  in
  
  List.map  (* Coerce Down *)   
    (Tag_v.map_entity
       Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol)
       tag_lne_sl
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
(* done with do_provider_without_register.sh Localinput_set_fence_variable_name_entity_external_tag_list_by_basicname_inputbox_provider_v.ml  on mercredi 19 avril 2017, 11:25:20 (UTC+0200) *)
