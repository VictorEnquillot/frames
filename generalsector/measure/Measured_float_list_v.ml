(** {3 Measured_float_list_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measured_float_list_v";
   "Needs : MEA:Units_list_v";
   "Needed-by: ";
   "What-is-it : a Measured_float_list type couples a float List and a Units";
   "How-is-it-done: ";
   "Abbreviation : flo_ml";
   "Author : François Colonna 05 juillet 2017 at 12:00:08+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make (flo_l:float list) (uni:Units_t.units) =
  Doublet_v.make flo_l uni
;;

let make_of_measure_list mea_l =
  let uni_l = List.map Measure_v.units_off_measure mea_l in
  let uni = 
    if List_v.is_repeated_list_of_list uni_l
    then List_v.only_element_of_repeated_list uni_l 
    else failwith "Non_homogeneous_list:Units_list_v.make_of_measure_list"
  in	
  let flo_l = List.map Measure_v.float_off_measure mea_l in
  make flo_l uni
;;

(** {6 Float_list} *)

let float_list_off_measured_float_list flo_ml =
  Doublet_v.left_off_doublet flo_ml
;;

(** {6 Units} *)

let units_off_measured_float_list flo_ml = 
  Doublet_v.right_off_doublet flo_ml
;;

(** {6 Naming} *)

let name flo_ml =
  Doublet_v.name Float_list_v.name Units_v.name flo_ml
;;

let shortname flo_ml = 
  Doublet_v.name Float_list_v.name Units_v.shortname flo_ml
;;

let longname flo_ml =
  Format.sprintf "Measured_float_list_t.%s" (String.capitalize (name flo_ml))
;;

let fullname flo_ml =
  longname flo_ml 
;;

let dimension flo_ml =
  let uni = units_off_measured_float_list flo_ml in
  Units_v.dimension uni
;;

(** {6 Operations} *)

let addition flo_ml_1 flo_ml_2 =
  let flo_l_1 = float_list_off_measured_float_list flo_ml_1 in
  let flo_l_2 = float_list_off_measured_float_list flo_ml_2 in
  let flo_ml = Float_list_v.addition_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_measured_float_list flo_ml_1 in
  let uni_2 = units_off_measured_float_list flo_ml_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_ml uni 
;;

let difference flo_ml_1 flo_ml_2 =
  let flo_l_1 = float_list_off_measured_float_list flo_ml_1 in
  let flo_l_2 = float_list_off_measured_float_list flo_ml_2 in
  let flo_ml = Float_list_v.difference_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_measured_float_list flo_ml_1 in
  let uni_2 = units_off_measured_float_list flo_ml_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_ml uni 
;;

let product flo_ml_1 flo_ml_2 =
  let flo_l_1 = float_list_off_measured_float_list flo_ml_1 in
  let flo_l_2 = float_list_off_measured_float_list flo_ml_2 in
  let flo_ml = Float_list_v.product_of_float_list_of_float_list flo_l_1 flo_l_2 in 

  let uni_1 = units_off_measured_float_list flo_ml_1 in
  let uni_2 = units_off_measured_float_list flo_ml_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_ml uni 
;;

let division flo_ml_1 flo_ml_2 =
  let flo_l_1 = float_list_off_measured_float_list flo_ml_1 in
  let flo_l_2 = float_list_off_measured_float_list flo_ml_2 in
  let flo_ml = Float_list_v.division_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_measured_float_list flo_ml_1 in
  let uni_2 = units_off_measured_float_list flo_ml_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make flo_ml uni 
;;

(** {6 Writing} *)

let write och flo_ml =
  let flo_l = float_list_off_measured_float_list flo_ml in
  let uni = units_off_measured_float_list flo_ml in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %s" 
    (Float_list_v.name flo_l) 
    (Units_v.name uni)
;;

let print flo_ml =
  let flo_l = float_list_off_measured_float_list flo_ml in
  let uni = units_off_measured_float_list flo_ml in
  Format.fprintf Format.std_formatter "%s %s" 
    (Float_list_v.name flo_l) 
    (Units_v.name uni)
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps flo_ml_1 flo_ml_2 =
  let flo_l_1 = float_list_off_measured_float_list flo_ml_1 in
  let uni_1 = units_off_measured_float_list flo_ml_1 in
  let flo_l_2 = float_list_off_measured_float_list flo_ml_2 in
  let uni_2 = units_off_measured_float_list flo_ml_2 in

  (Float_list_v.are_equal_of_epsilon_of_float_list_of_float_list eps flo_l_1 flo_l_2)
    && 
  (uni_1 = uni_2)
;;

let are_equal_at_epsilon_float flo_ml_1 flo_ml_2 =
  are_equal_of_epsilon epsilon_float flo_ml_1 flo_ml_2
;;
