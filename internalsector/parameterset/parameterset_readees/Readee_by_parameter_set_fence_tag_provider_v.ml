(** {3 Readee_by_parameter_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPAR:Readee_by_parameter_set_fence_tag_provider_v";
   "Needs : VPAR:Measure_by_parameter_set_fence_tag_provider_v";
   "Needed-by : VPAR:";
   "Definition : a Readee_measure generalizes a Measure";
   "Author : François Colonna 30 décembre 2016 at 16:47:07+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_psf =
  let mea = Measure_by_parameter_set_fence_tag_provider_v.provide tag_psf in
  Readee_v.readee_of_measure mea
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Measure_list_by_parameter_set_body_tuple_tag_provider_v.ml force on mardi 6 décembre 2016, 09:18:33 (UTC+0100) *)
