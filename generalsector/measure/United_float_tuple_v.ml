(** {3 United_float_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:United_float_tuple_v";
   "Needs : MEA:_Units_tuple_v";
   "Needed-by: ";
   "What-is-it : a United_float_tuple type couples a Units and a Float_tuple";
   "How-is-it-done: ";
   "Abbreviation : flo_ut";
   "Author : François Colonna 05 juillet 2017 at 11:05:40+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make (uni:Units_t.units) (flo_t:float Tuple_t.tuple) =
  Doublet_v.make uni flo_t
;;

let make_of_measure_tuple mea_t =
  let uni_t = Measure_tuple_v.units_tuple_off_measure_tuple mea_t in
  let uni = 
    if Units_tuple_v.is_homogeneous_of_units_tuple uni_t
    then Tuple_v.only_element_of_repeated_tuple uni_t 
    else failwith "Non_homogeneous_tuple:Units_tuple_v.make_of_measure_tuple"
  in	
  let flo_t = Measure_tuple_v.float_tuple_off_measure_tuple mea_t in
  make uni flo_t 
;;

(** {6 Float_tuple} *)

let float_tuple_off_united_float_tuple flo_ut =
  Doublet_v.right_off_doublet flo_ut
;;

(** {6 Units} *)

let units_off_united_float_tuple flo_ut = 
  Doublet_v.left_off_doublet flo_ut
;;

(** {6 Naming} *)

let name flo_ut =
  Doublet_v.name Units_v.name Float_tuple_v.name flo_ut
;;

let shortname flo_ut = 
  Doublet_v.name Units_v.shortname Float_tuple_v.shortname flo_ut
;;

let longname flo_ut =
  Format.sprintf "United_float_tuple_t.%s" (String.capitalize (name flo_ut))
;;

let fullname flo_ut =
  longname flo_ut 
;;

let dimension flo_ut =
  let uni = units_off_united_float_tuple flo_ut in
  Units_v.dimension uni
;;

(** {6 Operations} *)

let addition flo_ut_1 flo_ut_2 =
  let flo_t_1 = float_tuple_off_united_float_tuple flo_ut_1 in
  let flo_t_2 = float_tuple_off_united_float_tuple flo_ut_2 in
  let flo_ut = Float_tuple_v.addition_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple flo_ut_1 in
  let uni_2 = units_off_united_float_tuple flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let difference flo_ut_1 flo_ut_2 =
  let flo_t_1 = float_tuple_off_united_float_tuple flo_ut_1 in
  let flo_t_2 = float_tuple_off_united_float_tuple flo_ut_2 in
  let flo_ut = Float_tuple_v.difference_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple flo_ut_1 in
  let uni_2 = units_off_united_float_tuple flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let product flo_ut_1 flo_ut_2 =
  let flo_t_1 = float_tuple_off_united_float_tuple flo_ut_1 in
  let flo_t_2 = float_tuple_off_united_float_tuple flo_ut_2 in
  let flo_ut = Float_tuple_v.product_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in 

  let uni_1 = units_off_united_float_tuple flo_ut_1 in
  let uni_2 = units_off_united_float_tuple flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let division flo_ut_1 flo_ut_2 =
  let flo_t_1 = float_tuple_off_united_float_tuple flo_ut_1 in
  let flo_t_2 = float_tuple_off_united_float_tuple flo_ut_2 in
  let flo_ut = Float_tuple_v.division_of_float_tuple_of_float_tuple flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple flo_ut_1 in
  let uni_2 = units_off_united_float_tuple flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut
;;

(** {6 Writing} *)

let write och flo_ut =
  let flo_t = float_tuple_off_united_float_tuple flo_ut in
  let uni = units_off_united_float_tuple flo_ut in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %s" 
    (Units_v.name uni)
    (Float_tuple_v.name flo_t) 
;;

let print flo_ut =
  let flo_t = float_tuple_off_united_float_tuple flo_ut in
  let uni = units_off_united_float_tuple flo_ut in
  Format.fprintf Format.std_formatter "%s %s" 
    (Units_v.name uni)
    (Float_tuple_v.name flo_t) 
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps flo_ut_1 flo_ut_2 =
  let flo_t_1 = float_tuple_off_united_float_tuple flo_ut_1 in
  let uni_1 = units_off_united_float_tuple flo_ut_1 in
  let flo_t_2 = float_tuple_off_united_float_tuple flo_ut_2 in
  let uni_2 = units_off_united_float_tuple flo_ut_2 in

  (Float_tuple_v.are_equal_of_epsilon_of_float_tuple_of_float_tuple eps flo_t_1 flo_t_2)
    && 
  (uni_1 = uni_2)
;;

let are_equal_at_epsilon_float flo_ut_1 flo_ut_2 =
  are_equal_of_epsilon epsilon_float flo_ut_1 flo_ut_2
;;
