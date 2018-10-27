(** {3 Readee_by_coordinate_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : RCOO:Readee_by_coordinate_set_fence_tag_provider_v";
   "Needs : RCOO:Measure_by_coordinate_set_fence_tag_provider_v";
   "Needed-by : RCOO:";
   "Definition : a Readee_measure generalizes a Measure";
   "Author : François Colonna 25 décembre 2016 at 19:03:17+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_csf =
  let mea = Measure_by_coordinate_set_fence_tag_provider_v.provide tag_csf in
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
