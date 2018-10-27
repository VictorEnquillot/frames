(** {3 Coordinate_operation_measured_float_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needs: OCOO:Coordinate_operation_float_v";
   "Needs: UNI:Units_conversion_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: by using Measured_float_tuple : (float tuple, units) doublet";
   "How-is-it-done: Measured_float_tuple warants that coordinates are homogeneous";
   "Abbreviation : Measured_float_tuple = flo_mt";
   "Remark : Units are converted to whatever Operand Units are";
   "Author : François Colonna 28 avril 2017 at 16:30:15+02:00";
   "Author : François Colonna 23 juin 2017 at 15:25:39+02:00 Measured_float_tuple";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
]
;;

let conversion_factor_to_units_operand_of_units_operand_of_units uni_opd uni =
  let con_ucc_opd = Units_conversion_v.conversion_factor_to_units_canonical_classical_of_units uni_opd in
  let con_ucc_uni = Units_conversion_v.conversion_factor_to_units_canonical_classical_of_units uni in
  con_ucc_uni /. con_ucc_opd
;;

let conversion_to_units_operand_of_units_operand_of_units_of_float_tuple uni_opd uni flo_t =
  let con = conversion_factor_to_units_operand_of_units_operand_of_units uni_opd uni in
  Float_tuple_v.multiply_of_float_tuple_of_float flo_t con
;;

let translation_point_measured_float_tuple_of_operand_measured_float_tuple_of_vector_measured_float_tuple flo_opd_mt flo_vec_mt =
  
  let uni_opd = Measured_float_tuple_v.units_off_measured_float_tuple flo_opd_mt in
  let uni_vec = Measured_float_tuple_v.units_off_measured_float_tuple flo_vec_mt in

  let flo_vec_t = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_vec_mt in
  let flo_vec_con_t =
    conversion_to_units_operand_of_units_operand_of_units_of_float_tuple
      uni_opd
      uni_vec
      flo_vec_t
  in

  let flo_opd_t = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_opd_mt in
  let flo_tra_t = 
    Coordinate_operation_float_v.translation_point_float_tuple_of_operand_float_tuple_of_vector_float_tuple 
      flo_opd_t 
      flo_vec_con_t 
  in
  
  Measured_float_tuple_v.make flo_tra_t uni_opd 
;;

let homothety_point_measured_float_tuple_of_operand_measured_float_tuple_of_center_measured_float_tuple_of_scale_factor flo_opd_mt flo_cen_mt flo_sca =

  let uni_opd = Measured_float_tuple_v.units_off_measured_float_tuple flo_opd_mt in
  let uni_cen = Measured_float_tuple_v.units_off_measured_float_tuple flo_cen_mt in

  let flo_cen_t = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_cen_mt in
  let flo_cen_con_t =
    conversion_to_units_operand_of_units_operand_of_units_of_float_tuple
      uni_opd
      uni_cen
      flo_cen_t
  in

  let flo_opd_t = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_opd_mt in

  let flo_hom_t = 
    Coordinate_operation_float_v.homothety_point_float_tuple_of_operand_float_tuple_of_center_float_tuple_of_scale_factor 
      flo_opd_t 
      flo_cen_con_t 
      flo_sca 
  in
  
  Measured_float_tuple_v.make flo_hom_t uni_opd 
;;

