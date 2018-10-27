(** {3 Measured_float_tuple_by_parameter_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : EPAR:Measured_float_tuple_by_parameter_tag_provider_v";
   "Needs : EPAR:Parameter_set_body_measure_actual_conversions_v";
   "Remark : Tag is necessary to get envelopes";
   "Author : François Colonna 26 juin 2017 at 12:24:32+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_par =
  let (sym_par, soi_par) = tag_par in

  match sym_par with
  | Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_body_symbol sym_cbt) ->
	   let tag_cbt = Tag_v.make sym_cbt soi_par in
	   Measured_float_tuple_by_parameter_set_body_tag_provider_v.provide tag_cbt

  | Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_fence_symbol sym_psf) ->

	let tag_psf = Tag_v.make sym_psf soi_par in
	let uni = Parameter_set_fence_envelope_v.units_of_tag tag_psf in
	let flo_t = Parameter_set_fence_envelope_v.float_tuple_of_tag tag_psf in 
	Measured_float_tuple_v.make flo_t uni 

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Parameter_symbol were Parameter_set_fence_symbol | Parameter_set_body_symbol"
	(Format.sprintf "%s" (Parameter_symbol_v.fullname sym_par))
	"Check"
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

