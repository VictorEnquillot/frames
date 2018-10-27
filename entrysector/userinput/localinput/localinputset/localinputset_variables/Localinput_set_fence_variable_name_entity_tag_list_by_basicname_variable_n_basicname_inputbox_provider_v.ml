(** {3 Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given String_off in a inputbox it provides the list of corresponding Variable_name_entity";
   "What-is-it : all Variable_name_entity Tags with that Variable_name in that Inputbox";
   "Author : François Colonna 29 mars 2017 at 07:53:37+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let store (bna_var, bna_ibo) =

  let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in  

  let nam_var = Basicname_v.string_off bna_var in
  
  let tag_lne_sof_sl = List.filter 
      (fun (s, i) -> Localinput_set_fence_variable_name_entity_symbol_v.string_off s = nam_var) 
      tag_lne_l 
  in
  
  Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_register_v.store (bna_var, bna_ibo) tag_lne_sof_sl
;;

let store_list bna_ibo =

  let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in  

  let sof_lne_l = List.map Localinput_set_fence_variable_name_entity_tag_v.string_off tag_lne_l in
  let bna_var_l = List.map Basicname_v.basicname_variable_of_string sof_lne_l in
  List.iter (fun s -> store (bna_ibo, s)) bna_var_l;

;;

let build_n_store (bna_var, bna_ibo) =

  store_list bna_ibo;

  Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_register_v.retrieve (bna_var, bna_ibo)
;;

(** {6 Providing} *)

let provide_without_trace (bna_var, bna_ibo) =
  if Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_register_v.is_stored (bna_var, bna_ibo)
  then Localinput_set_fence_variable_name_entity_tag_list_by_basicname_variable_n_basicname_inputbox_register_v.retrieve (bna_var, bna_ibo)
  else build_n_store (bna_var, bna_ibo)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
