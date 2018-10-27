(** {3 Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v";
   "Register : DELE:Measure_canonical_by_elementary_fence_units_canonical_tag_register_v";
   "Needs : DELE:Measure_canonical_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v";
   "Needs : SELE:Elementary_fence_units_canonical_conversion_v";
   "What-is-it : the Measure_canonical from Elementary_fence_units_canonical_tag";
   "How-is-it-done : by converting units_canonical to actual";
   "How-is-it-done : by getting Measure_actual from units_actual";
   "How-is-it-done : by converting units_actual to canonical";
   "Author : François Colonna 13 mai 2016 at 14:28:28+02:00";
   "Author : François Colonna 21 mai 2016 at 19:17:58+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_euc =
  let (sym_euc, soi_euc) = tag_euc in
  let sym_eua =  
    Elementary_fence_units_canonical_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_symbol 
      sym_euc
  in
  let tag_eua = Tag_v.make sym_eua soi_euc in
  let nam_cal = Calculation_name_by_elementary_fence_units_canonical_symbol_provider_v.provide sym_euc in 
  Measure_canonical_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.provide (nam_cal, tag_eua)
;;

(** {6 Storing} *)

let store tag_euc val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.store nam_mod tag_euc val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_euc =
  let val_ = build tag_euc in
  store tag_euc val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_euc =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.retrieve nam_mod tag_euc in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_euc =
  if Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.is_stored tag_euc
  then retrieve tag_euc
  else build_n_store tag_euc
;;

(** {6 Providing} *)

let provide tag_euc =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_euc in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:02 (UTC+0200) *)
