(** {3 Coordinate_operation_measured_float_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needs: OCOO:Coordinate_operation_float_v";
   "Needs: OCOO:Coordinate_operation_units_v";
   "Needed-by: ";
   "What-is-it: ";
   "How-is-it-done: by using Measured_float_tuple : (float tuple, units) doublet";
   "Abbreviation : Measured_float_tuple = flo_mt";
   "Author : François Colonna 28 avril 2017 at 16:30:15+02:00";
   "Author : François Colonna 23 juin 2017 at 11:30:14+02:00 Measured_float_tuple. No more list";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
]
;;

let measure_length_of_measured_float_tuple_duo flo_mtd = (* 2 Points *)

  let flo_td = Duo_v.map 
      Measured_float_tuple_v.float_tuple_off_measured_float_tuple 
      flo_mtd 
  in
  
  let flo_len = 
    Coordinate_operation_float_v.length_of_float_tuple_duo
      flo_td 
  in
  
  let uni_d = Duo_v.map Measured_float_tuple_v.units_off_measured_float_tuple flo_mtd in
  let uni = Units_v.units_off_units_duo uni_d in
  
  Measure_v.make flo_len uni
;;

let measure_perimeter_of_measured_float_tuple_trio flo_mtt = (* 3 Points *)

  let flo_tt = Trio_v.map 
      Measured_float_tuple_v.float_tuple_off_measured_float_tuple 
      flo_mtt 
  in
  let flo_per = 
    Coordinate_operation_float_v.perimeter_of_triangle_float_tuple_trio 
      flo_tt 
  in

  let uni_t = Trio_v.map Measured_float_tuple_v.units_off_measured_float_tuple flo_mtt in
  let uni = Units_v.units_off_units_trio uni_t in
  
  Measure_v.make flo_per uni
;;

