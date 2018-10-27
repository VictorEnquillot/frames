(** {3 Measure_by_parameter_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VCOO:Measure_by_parameter_set_fence_tag_provider_v";
   "Register : VCOO:Measure_by_parameter_set_fence_tag_register_v";
   "Needs : VCOO:Parameter_string_off_list_by_db1pointsdata_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : VCOO:Parameter_aopef_name_n_db1pointsdata_aopef_name_list_by_center_name_provider_v";
   "What-is-it : the Parameter_set_fence_units_value (Measure_actual) from Database";
   "Needed-by : VCOO:Parameter_set_fence_heterogeneous_polar_rho_envelope_v";
   "How-is-it-done : Parameter                  Db1pointsdata";
   "How-is-it-done : Parameter                  Db1points";
   "How-is-it-done : parameter_tuple_aopef             ";
   "Author : François Colonna 15 february 2016";
   "Improve : make a more efficient code";
   "Author : François Colonna 03 décembre 2016 at 14:02:43+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_psf =
  let tag_par_psf = 
    Parameter_set_fence_tag_v.parameter_tag_of_parameter_set_fence_tag
      tag_psf
  in

  let tag_par_fat = 
    Parameter_father_tag_by_parameter_son_tag_provider_v.provide 
      tag_par_psf 
  in
  
  let tag_cbt_fat =
    Parameter_set_body_tuple_tag_v.parameter_set_body_tuple_tag_off_parameter_tag
      tag_par_fat
  in

  let mea_l = 
    Measure_list_by_parameter_set_body_tuple_tag_provider_v.provide
      tag_cbt_fat
  in

  let soi_psf = Tag_v.sole_index_off_tag tag_psf in
  let idx_psf = Sole_index_v.head_index soi_psf in
  List.nth mea_l (idx_psf-1)
;;

(** {6 Storing} *)

let store tag_psf val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measure_by_parameter_set_fence_tag_register_v.store nam_mod tag_psf val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_psf =
  let val_ = build tag_psf in
  store tag_psf val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_psf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measure_by_parameter_set_fence_tag_register_v.retrieve nam_mod tag_psf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_psf =
  if Measure_by_parameter_set_fence_tag_register_v.is_stored tag_psf
  then retrieve tag_psf
  else build_n_store tag_psf
;;

(** {6 Providing} *)

let provide tag_psf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_psf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
