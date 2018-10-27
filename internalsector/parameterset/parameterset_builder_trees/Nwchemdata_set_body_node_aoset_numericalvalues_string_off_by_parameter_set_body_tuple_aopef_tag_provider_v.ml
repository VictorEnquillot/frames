(** {3 Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_databox_name_provider_v";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "Needs : BPAR:Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_databox_name_provider_v";
   "Register : BPAR:Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_register_v";
   "Author : François Colonna 03 décembre 2016 at 19:33:59+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Preparing} *)

let store_in_register tag_pta =

  let soi_pta = Tag_v.sole_index_off_tag tag_pta in
  let bna_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_pta in

  let sof_nwc_anv_l =
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_basicname_databox_provider_v.provide 
      bna_dbo 
  in

  let sof_par_l =
    Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
      sof_nwc_anv_l
  in
 
  List.iter2 
    (Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_string_off_register_v.store nam_mod)
    sof_par_l sof_nwc_anv_l
;;

(** {6 Building} *)

let build tag_pta =
  let soi_pta = Tag_v.sole_index_off_tag tag_pta in
  let bna_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_pta in

  let sof_nwc_anv_l =
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_by_basicname_databox_provider_v.provide 
      bna_dbo 
  in

  let sof_par_l =
    Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
      sof_nwc_anv_l
  in

  let sof_pta = Parameter_set_body_tuple_aopef_tag_v.string_off tag_pta in

  let idx_sof_par = List_v.index_of_element_of_list sof_pta sof_par_l in
 
  List.nth sof_nwc_anv_l idx_sof_par 
;;

(** {6 Storing} *)

let store tag_pta result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_register_v.store nam_mod tag_pta result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_pta =
  let result = build tag_pta in
  store tag_pta result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_pta =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_register_v.retrieve nam_mod tag_pta in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_pta =
  if Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_register_v.is_stored tag_pta
  then retrieve tag_pta
  else build_n_store tag_pta
;;

(** {6 Providing} *)

let provide tag_pta =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_pta in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v.ml force on lundi 5 décembre 2016, 19:54:35 (UTC+0100) *)
