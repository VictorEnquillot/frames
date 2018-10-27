(** {3 Measure_by_elementary_fence_units_actual_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_by_elementary_fence_units_actual_tag_provider_v";
   "Register : DELE:Measure_by_elementary_fence_units_actual_tag_register_v";
   "Needs : DELE:Measure_actual_by_elementary_fence_units_actual_tag_provider_v";
   "What-is-it : the Measure as son of elementary_fence_units_actual_tag from Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build tag_eua =
  let mea_act = 
    Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide
      tag_eua
  in
  Measure_v.measure_of_measure_actual mea_act
;;

(** {6 Storing} *)

let store tag_eua val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measure_by_elementary_fence_units_actual_tag_register_v.store nam_mod tag_eua val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_eua =
  let val_ = build tag_eua in
  store tag_eua val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_eua =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measure_by_elementary_fence_units_actual_tag_register_v.retrieve nam_mod tag_eua in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_eua =
  if Measure_by_elementary_fence_units_actual_tag_register_v.is_stored tag_eua
  then retrieve tag_eua
  else build_n_store tag_eua
;;

(** {6 Providing} *)

let provide tag_eua =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_eua in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Measure_by_elementary_fence_units_actual_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:01 (UTC+0200) *)
