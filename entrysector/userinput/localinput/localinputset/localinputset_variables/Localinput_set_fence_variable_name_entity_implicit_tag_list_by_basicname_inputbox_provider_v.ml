(** {3 Localinput_set_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_implicit_tag_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Variable_name_entity_implicit Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : _lve for localinput_set_fence_variable_name_entity_";
   "Abbreviation : loi_lve for localinput_as_set_fence_variable_name_entity_";
   "Abbreviation : loi_lei for localinput_as_set_fence_variable_name_entity_implicit_";
   "Author : François Colonna 08 novembre 2016 at 14:43:27+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in  

  let pre_tag_lne (s, i) = 
    Localinput_set_fence_variable_name_entity_symbol_v.is_localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol s 
  in
  
  let tag_lne_sl = List.filter pre_tag_lne tag_lne_l in

  List.map  (* Coerce Down *)   
    (Tag_v.map_entity
       Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_implicit_symbol_off_localinput_set_fence_variable_name_entity_symbol)
       tag_lne_sl
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
