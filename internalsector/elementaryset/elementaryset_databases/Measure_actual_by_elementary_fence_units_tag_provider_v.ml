(** {3 Measure_actual_by_elementary_fence_units_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_actual_by_elementary_fence_units_tag_provider_v";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_efu =
  let (sym_efu, soi_efu) = tag_efu in
  match sym_efu with
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
      let tag_eua = Tag_v.make sym_eua soi_efu in
      Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide tag_eua

  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
      let tag_euc = Tag_v.make sym_euc soi_efu in
      let mea_can = 
	Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v.provide
	  tag_euc
      in
      Measure_canonical_v.measure_actual_of_measure_canonical mea_can
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Measure_actual_by_elementary_fence_units_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:06 (UTC+0200) *)
