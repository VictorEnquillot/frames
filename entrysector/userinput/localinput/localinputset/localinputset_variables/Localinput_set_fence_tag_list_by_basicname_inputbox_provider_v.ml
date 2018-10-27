(** {3 Localinput_set_fence_tag_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_tag_list_by_basicname_inputbox_provider_v";
   "Register : VARLOI:Localinput_set_fence_tag_list_by_basicname_inputbox_register_v";
   "Needs : VARLOI:Localinput_tag_all_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the list of all  Tags";
   "Abbreviation : _ibo for inputbox_";
   "Abbreviation : _loi for localinput_";
   "Abbreviation : _lif for localinput_set_fence_";
   "Abbreviation : loi_lif for localinput_as_set_fence_";
   "Author : François Colonna 08 novembre 2016 at 17:07:31+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_loi_l = 
    Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lif (s, i) = 
    Localinput_symbol_v.is_localinput_set_fence_symbol_off_localinput_symbol s 
  in

  let tag_loi_lif_l = List.filter pre_tag_lif tag_loi_l in

  List.map  (* Coerce Down *)
    Localinput_set_fence_tag_v.localinput_set_fence_tag_off_localinput_tag
    tag_loi_lif_l 
;;

let build_n_store key =
  let tag_lif_l = build key in
  Localinput_set_fence_tag_list_by_basicname_inputbox_register_v.store key tag_lif_l;
  tag_lif_l
;;

(** {6 Providing} *)

let provide_without_trace key =
  if Localinput_set_fence_tag_list_by_basicname_inputbox_register_v.is_stored key
  then Localinput_set_fence_tag_list_by_basicname_inputbox_register_v.retrieve key
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
