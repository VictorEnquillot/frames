(** {3 Measure_by_coordinate_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : RCOO:Measure_by_coordinate_set_fence_tag_provider_v";
   "Needs : DCOO:Coordinate_father_tag_by_coordinate_son_tag_provider_v";
   "Needs : DCOO:Measure_list_by_coordinate_set_body_tuple_tag_provider_v";
   "Register : RCOO:Measure_by_coordinate_set_fence_tag_register_v";
   "What-is-it : the Coordinate_set_fence_units_value (Measure_actual) from Database";
   "Needed-by : RCOO:Coordinate_set_fence_heterogeneous_polar_rho_envelope_v";
   "How-is-it-done : Coordinate                  Db1pointsdata";
   "How-is-it-done : Coordinate                  Db1points";
   "How-is-it-done : coordinate_tuple_aopef             ";
   "Author : François Colonna 15 february 2016";
   "Improve : make a more efficient code";
   "Author : François Colonna 03 décembre 2016 at 14:02:43+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_csf =
  let tag_coo_csf = 
    Coordinate_set_fence_tag_v.coordinate_tag_of_coordinate_set_fence_tag
      tag_csf
  in

  let tag_coo_fat = 
    Coordinate_father_tag_by_coordinate_son_tag_provider_v.provide 
      tag_coo_csf 
  in
  
  let tag_cbt_fat =
    Coordinate_set_body_tuple_tag_v.coordinate_set_body_tuple_tag_off_coordinate_tag
      tag_coo_fat
  in

  let mea_l = 
    Measure_list_by_coordinate_set_body_tuple_tag_provider_v.provide
      tag_cbt_fat
  in

  let soi_csf = Tag_v.sole_index_off_tag tag_csf in
  let idx_csf = Sole_index_v.head_index soi_csf in

  try List.nth mea_l (idx_csf-1)
  with Failure _ ->
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "index %i were a valid index" (idx_csf-1))
      (Format.sprintf "Measure list is:@      %s" (List_v.name_in_column Measure_v.fullname mea_l) )
      "Check"
;;

(** {6 Storing} *)

let store tag_csf val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measure_by_coordinate_set_fence_tag_register_v.store nam_mod tag_csf val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_csf =
  let val_ = build tag_csf in
  store tag_csf val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_csf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measure_by_coordinate_set_fence_tag_register_v.retrieve nam_mod tag_csf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_csf =
  if Measure_by_coordinate_set_fence_tag_register_v.is_stored tag_csf
  then retrieve tag_csf
  else build_n_store tag_csf
;;

(** {6 Providing} *)

let provide tag_csf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_csf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Measure_by_coordinate_set_fence_tag_provider_v.ml force on samedi 3 juin 2017, 12:35:29 (UTC+0200) *)
