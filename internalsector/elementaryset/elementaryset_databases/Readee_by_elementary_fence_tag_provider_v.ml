(** {3 Readee_by_elementary_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_by_elementary_fence_tag_provider_v";
   "Register : DELE:Readee_by_elementary_fence_tag_register_v";
   "What-is-it : the Elementary_border_value (Readee) from Database";
   "Remark : ";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_edf =
  let soi_edf = Tag_v.sole_index_off_tag tag_edf in
  let sym_edf = Tag_v.entity_off_tag tag_edf in
  match sym_edf with   
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_eba ->
      let tag_eba = Tag_v.make sym_eba soi_edf in
      let bou_bas = Readee_basic_by_elementary_fence_basic_tag_provider_v.provide tag_eba in
      Readee_v.readee_of_readee_basic bou_bas
	
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_eco ->
      Readee_v.readee_of_elementary_fence_color_symbol sym_eco 
	
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_efu ->
      let tag_efu = Tag_v.make sym_efu soi_edf in
      let mea_act = Measure_actual_by_elementary_fence_units_tag_provider_v.provide tag_efu in
      Readee_v.readee_of_measure_actual mea_act
;;

(** {6 Storing} *)

let store tag_edf val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Readee_by_elementary_fence_tag_register_v.store nam_mod tag_edf val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_edf =
  let val_ = build tag_edf in
  store tag_edf val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_edf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Readee_by_elementary_fence_tag_register_v.retrieve nam_mod tag_edf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_edf =
  if Readee_by_elementary_fence_tag_register_v.is_stored tag_edf
  then retrieve tag_edf
  else build_n_store tag_edf
;;

(** {6 Providing} *)

let provide tag_edf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_edf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Readee_by_elementary_fence_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:02 (UTC+0200) *)
