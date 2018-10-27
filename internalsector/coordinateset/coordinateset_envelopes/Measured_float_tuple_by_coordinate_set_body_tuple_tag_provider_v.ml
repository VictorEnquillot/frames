(** {3 Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v";
   "Needs : ECOO:Coordinate_set_body_tuple_measure_actual_conversions_v";
   "Remark : Tag is necessary to get envelopes";
   "Author : François Colonna 27 juin 2017 at 09:55:08+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build tag_cbt =
  let tag_coo = Tag_v.map_entity 
      Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_body_tuple_symbol 
      tag_cbt
  in
  
  let sym_cbt = Tag_v.entity_off_tag tag_cbt in
  
  match sym_cbt with
  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol sym_cth ->

      let mat_het_t = Coordinate_envelope_v.measure_actual_tuple_of_tag tag_coo in
      let mat_hom_t = 
	Coordinate_set_body_tuple_measure_actual_conversions_v.measure_actual_tuple_homogeneous_of_measure_actual_tuple_heterogeneous 
	  mat_het_t 
      in
      let mea_hom_t = Tuple_v.map Measure_actual_v.measure_of_measure_actual mat_hom_t in
      Measured_float_tuple_v.make_of_measure_tuple mea_hom_t

  | Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_homogeneous_symbol sym_cth ->
      let mat_hom_t = Coordinate_envelope_v.measure_actual_tuple_of_tag tag_coo in
      let mea_hom_t = Tuple_v.map Measure_actual_v.measure_of_measure_actual mat_hom_t in
      Measured_float_tuple_v.make_of_measure_tuple mea_hom_t
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
