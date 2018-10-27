(** {3 Measure_canonical_list_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_canonical_list_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_cal, tag_eua) =
  [
   Measure_canonical_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.provide 
     (nam_cal, tag_eua)
 ]
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Measure_canonical_list_by_calculation_name_n_elementary_fence_units_actual_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:07 (UTC+0200) *)
