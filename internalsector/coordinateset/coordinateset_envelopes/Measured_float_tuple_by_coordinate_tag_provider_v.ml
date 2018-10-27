(** {3 Measured_float_tuple_by_coordinate_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Measured_float_tuple_by_coordinate_tag_provider_v";
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
  let (sym_coo, soi_coo) = tag_coo in

  match sym_coo with
  | Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol
	 (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol sym_cbt)) ->
	   let tag_cbt = Tag_v.make sym_cbt soi_coo in
	   Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v.provide tag_cbt

  | Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol sym_csf) ->

	let tag_csf = Tag_v.make sym_csf soi_coo in
	let uni = Coordinate_set_fence_envelope_v.units_of_tag tag_csf in
	let flo_t = Coordinate_set_fence_envelope_v.float_tuple_of_tag tag_csf in 
	Measured_float_tuple_v.make flo_t uni 

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Coordinate_symbol were Coordinate_set_fence_symbol | Coordinate_set_body_symbol"
	(Format.sprintf "%s" (Coordinate_symbol_v.fullname sym_coo))
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

