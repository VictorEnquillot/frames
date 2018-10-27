(** {3 Readee_list_by_coordinate_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : RCOO:Readee_list_by_coordinate_set_body_tuple_tag_provider_v";
   "Needs : DPAR:Measure_list_by_coordinate_set_body_tuple_tag_provider_v";
   "Needed-by : RCOO:Coordinate_set_fence_coefficient_envelope_v";
   "Definition : a Readee generalizes any Elementary Value like Measure";
   "Author : François Colonna 06 décembre 2016 at 09:31:30+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_cbt =
  let mea_l = 
    Measure_list_by_coordinate_set_body_tuple_tag_provider_v.provide
      tag_cbt
  in
  List.map Readee_v.readee_of_measure mea_l 
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
(* done with do_provider_without_register.sh Measure_list_by_coordinate_set_body_tuple_tag_provider_v.ml force on mardi 6 décembre 2016, 09:18:33 (UTC+0100) *)
