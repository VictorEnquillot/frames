(** {3 Coordinate_envelope_as_measured_float_tuple_by_coordinate_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_envelope_as_measured_float_tuple_by_coordinate_tag_provider_v";
   "Needs : ECOO:Coordinate_set_body_tuple_measure_actual_conversions_v";
   "Needs : ECOO:Coordinate_set_fence_symbol_tuple_conversions_v";
   "Remark : Tag is necessary to get envelopes";
   "Author : François Colonna 26 juin 2017 at 12:24:32+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_coo =

;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

