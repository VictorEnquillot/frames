(** {3 Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_set_fence_cell_tag_list_by_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all Cell_target_operator Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _lto for localinput_set_fence_cell_target_operator_";
   "Abbreviation : _lfc for localinput_set_fence_cell_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : loi_lto for localinput_as_set_fence_cell_target_operator_";
   "Author : François Colonna 09 novembre 2016 at 07:50:29+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =

  let tag_lfc_l = 
    Localinput_set_fence_cell_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lto (s, i) = 
    Localinput_set_fence_cell_symbol_v.is_localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol s
  in

  let tag_lto_l = List.filter pre_tag_lto tag_lfc_l in

  List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_fence_cell_symbol_v.localinput_set_fence_cell_target_operator_symbol_off_localinput_set_fence_cell_symbol) 
    tag_lto_l
;;

let build_n_store bna_ibo =
  let tag_loi_cto_l = build bna_ibo in
  Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_register_v.store bna_ibo tag_loi_cto_l;
  tag_loi_cto_l
;;

(** {6 Providing} *)

let provide_without_trace bna_ibo =
  if Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_register_v.is_stored bna_ibo
  then Localinput_set_fence_cell_target_operator_tag_list_by_basicname_inputbox_register_v.retrieve bna_ibo
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
