(** {3 Localinput_set_fence_variable_name_context_tag_by_localinput_set_fence_cell_external_context_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_context_tag_by_localinput_set_fence_cell_external_context_tag_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Cell_external_context Tag it provides the Variable Name Entity Context Tag with same name";
   "Author : François Colonna 29 mars 2017 at 11:22:55+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lec =
  let soi_cec = Tag_v.sole_index_off_tag tag_lec in
  let nam_ibo = 
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index 
      soi_cec 
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_lvc_l = 
    Localinput_set_fence_variable_name_context_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let nam_cec = Localinput_set_fence_cell_external_context_tag_v.string_off tag_lec in
  let pre_tag_lvc_sof sof (s, i) = 
    (Localinput_set_fence_variable_name_context_symbol_v.localinput_set_fence_variable_name_context_constructor sof = s) 
  in

  List_v.only_element_of_predicate_off_list (pre_tag_lvc_sof nam_cec) tag_lvc_l
;;

let build_n_store tag_lec =
  build tag_lec 
;;

(** {6 Providing} *)

let provide_without_trace tag_lec =
  build_n_store tag_lec
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
