(** {3 Measured_float_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measured_float_tuple_v";
   "Needs : MEA:_Units_tuple_v";
   "Needed-by: ";
   "What-is-it : a Measured_float_tuple type couples a float Tuple and a Units";
   "How-is-it-done: ";
   "Abbreviation : flo_mt";
   "Author : François Colonna 20 juin 2017 at 09:10:26+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo_t uni =
  Doublet_v.make flo_t uni
;;

let make_of_measure_tuple mea_t =
  let uni_t = Measure_tuple_v.units_tuple_off_measure_tuple mea_t in
  let uni = 
    if Units_tuple_v.is_homogeneous_of_units_tuple uni_t
    then Tuple_v.only_element_of_repeated_tuple uni_t 
    else failwith "Non_homogeneous_tuple:Units_tuple_v.make_of_measure_tuple"
  in	
  let flo_t = Measure_tuple_v.float_tuple_off_measure_tuple mea_t in
  make flo_t uni
;;

(** {6 Float_tuple} *)

let float_tuple_off_measured_float_tuple flo_mt =
  Doublet_v.left_off_doublet flo_mt
;;

(** {6 Units} *)

let units_off_measured_float_tuple flo_mt = 
  Doublet_v.right_off_doublet flo_mt
;;

(** {6 Naming} *)

let name flo_mt =
  Doublet_v.name Float_tuple_v.name Units_v.name flo_mt
;;

let shortname flo_mt = 
  Doublet_v.name Float_tuple_v.name Units_v.shortname flo_mt
;;

let longname flo_mt =
  Format.sprintf "Measured_float_tuple_t.%s" (String.capitalize (name flo_mt))
;;

let fullname flo_mt =
  longname flo_mt 
;;

let dimension flo_mt =
  let uni = units_off_measured_float_tuple flo_mt in
  Units_v.dimension uni
;;

(** {6 Operations} *)

let addition flo_mt_1 flo_mt_2 =
  let flo_t_1 = float_tuple_off_measured_float_tuple flo_mt_1 in
  let flo_t_2 = float_tuple_off_measured_float_tuple flo_mt_2 in
  let flo_mt = Float_tuple_v.addition_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_measured_float_tuple flo_mt_1 in
  let uni_2 = units_off_measured_float_tuple flo_mt_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_mt uni 
;;

let difference flo_mt_1 flo_mt_2 =
  let flo_t_1 = float_tuple_off_measured_float_tuple flo_mt_1 in
  let flo_t_2 = float_tuple_off_measured_float_tuple flo_mt_2 in
  let flo_mt = Float_tuple_v.difference_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_measured_float_tuple flo_mt_1 in
  let uni_2 = units_off_measured_float_tuple flo_mt_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_mt uni 
;;

let product flo_mt_1 flo_mt_2 =
  let flo_t_1 = float_tuple_off_measured_float_tuple flo_mt_1 in
  let flo_t_2 = float_tuple_off_measured_float_tuple flo_mt_2 in
  let flo_mt = Float_tuple_v.product_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in 

  let uni_1 = units_off_measured_float_tuple flo_mt_1 in
  let uni_2 = units_off_measured_float_tuple flo_mt_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_mt uni 
;;

let division flo_mt_1 flo_mt_2 =
  let flo_t_1 = float_tuple_off_measured_float_tuple flo_mt_1 in
  let flo_t_2 = float_tuple_off_measured_float_tuple flo_mt_2 in
  let flo_mt = Float_tuple_v.division_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_measured_float_tuple flo_mt_1 in
  let uni_2 = units_off_measured_float_tuple flo_mt_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_mt uni 
;;

(** {6 Writing} *)

let write och flo_mt =
  let flo_t = float_tuple_off_measured_float_tuple flo_mt in
  let uni = units_off_measured_float_tuple flo_mt in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %s" 
    (Float_tuple_v.name flo_t) 
    (Units_v.name uni)
;;

let print flo_mt =
  let flo_t = float_tuple_off_measured_float_tuple flo_mt in
  let uni = units_off_measured_float_tuple flo_mt in
  Format.fprintf Format.std_formatter "%s %s" 
    (Float_tuple_v.name flo_t) 
    (Units_v.name uni)
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps flo_mt_1 flo_mt_2 =
  let flo_t_1 = float_tuple_off_measured_float_tuple flo_mt_1 in
  let uni_1 = units_off_measured_float_tuple flo_mt_1 in
  let flo_t_2 = float_tuple_off_measured_float_tuple flo_mt_2 in
  let uni_2 = units_off_measured_float_tuple flo_mt_2 in

  (Float_tuple_v.are_equal_of_epsilon_of_float_tuple_of_float_tuple eps flo_t_1 flo_t_2)
    && 
  (uni_1 = uni_2)
;;

let are_equal_at_epsilon_float flo_mt_1 flo_mt_2 =
  are_equal_of_epsilon epsilon_float flo_mt_1 flo_mt_2
;;
