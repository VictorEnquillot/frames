(** {3 Measured_float_tuple_by_parameter_set_body_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : EPAR:Measured_float_tuple_by_parameter_set_body_tag_provider_v";
   "Needs : EPAR:Parameter_set_body_measure_actual_conversions_v";
   "Remark : Tag is necessary to get envelopes";
   "Author : François Colonna 27 juin 2017 at 09:55:08+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_psb =
  let flo_t = Parameter_set_body_envelope_v.float_tuple_of_tag tag_psb in
  let uni_t = Parameter_set_body_envelope_v.units_tuple_of_tag tag_psb in
  let uni = Tuple_v.only_element_of_repeated_tuple uni_t in 
  
  Measured_float_tuple_v.make flo_t uni
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
