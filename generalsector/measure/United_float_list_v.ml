(** {3 United_float_list_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:United_float_list_v";
   "Needs : MEA:_Units_list_v";
   "Needed-by: ";
   "What-is-it : a United_float_list type couples a Units and a Float_list";
   "How-is-it-done: ";
   "Abbreviation : flo_ut";
   "Author : François Colonna 05 juillet 2017 at 11:05:40+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make (uni:Units_t.units) (flo_l:float list) =
  Doublet_v.make uni flo_l
;;

let make_of_measure_list mea_l =
  let uni_l = List.map Measure_v.units_off_measure mea_l in
  let uni = 
    if List_v.is_repeated_list_of_list uni_l 
    then List_v.only_element_of_repeated_list uni_l 
    else failwith "Non_homogeneous_list:Units_list_v.make_of_measure_list"
  in	
  let flo_l = List.map Measure_v.float_off_measure mea_l in
  make uni flo_l 
;;

(** {6 Float_list} *)

let float_list_off_united_float_list flo_ut =
  Doublet_v.right_off_doublet flo_ut
;;

(** {6 Units} *)

let units_off_united_float_list flo_ut = 
  Doublet_v.left_off_doublet flo_ut
;;

(** {6 Naming} *)

let name flo_ut =
  Doublet_v.name Units_v.name Float_list_v.name flo_ut
;;

let shortname flo_ut = 
  Doublet_v.name Units_v.shortname Float_list_v.shortname flo_ut
;;

let longname flo_ut =
  Format.sprintf "United_float_list_t.%s" (String.capitalize (name flo_ut))
;;

let fullname flo_ut =
  longname flo_ut 
;;

let dimension flo_ut =
  let uni = units_off_united_float_list flo_ut in
  Units_v.dimension uni
;;

(** {6 Operations} *)

let addition flo_ut_1 flo_ut_2 =
  let flo_l_1 = float_list_off_united_float_list flo_ut_1 in
  let flo_l_2 = float_list_off_united_float_list flo_ut_2 in
  let flo_ut = Float_list_v.addition_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_united_float_list flo_ut_1 in
  let uni_2 = units_off_united_float_list flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let difference flo_ut_1 flo_ut_2 =
  let flo_l_1 = float_list_off_united_float_list flo_ut_1 in
  let flo_l_2 = float_list_off_united_float_list flo_ut_2 in
  let flo_ut = Float_list_v.difference_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_united_float_list flo_ut_1 in
  let uni_2 = units_off_united_float_list flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let product flo_ut_1 flo_ut_2 =
  let flo_l_1 = float_list_off_united_float_list flo_ut_1 in
  let flo_l_2 = float_list_off_united_float_list flo_ut_2 in
  let flo_ut = Float_list_v.product_of_float_list_of_float_list flo_l_1 flo_l_2 in 

  let uni_1 = units_off_united_float_list flo_ut_1 in
  let uni_2 = units_off_united_float_list flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut 
;;

let division flo_ut_1 flo_ut_2 =
  let flo_l_1 = float_list_off_united_float_list flo_ut_1 in
  let flo_l_2 = float_list_off_united_float_list flo_ut_2 in
  let flo_ut = Float_list_v.division_of_float_list_of_float_list flo_l_1 flo_l_2 in

  let uni_1 = units_off_united_float_list flo_ut_1 in
  let uni_2 = units_off_united_float_list flo_ut_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_ut
;;

(** {6 Writing} *)

let write och flo_ut =
  let flo_l = float_list_off_united_float_list flo_ut in
  let uni = units_off_united_float_list flo_ut in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %s" 
    (Units_v.name uni)
    (Float_list_v.name flo_l) 
;;

let print flo_ut =
  let flo_l = float_list_off_united_float_list flo_ut in
  let uni = units_off_united_float_list flo_ut in
  Format.fprintf Format.std_formatter "%s %s" 
    (Units_v.name uni)
    (Float_list_v.name flo_l) 
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps flo_ut_1 flo_ut_2 =
  let flo_l_1 = float_list_off_united_float_list flo_ut_1 in
  let uni_1 = units_off_united_float_list flo_ut_1 in
  let flo_l_2 = float_list_off_united_float_list flo_ut_2 in
  let uni_2 = units_off_united_float_list flo_ut_2 in

  (Float_list_v.are_equal_of_epsilon_of_float_list_of_float_list eps flo_l_1 flo_l_2)
    && 
  (uni_1 = uni_2)
;;

let are_equal_at_epsilon_float flo_ut_1 flo_ut_2 =
  are_equal_of_epsilon epsilon_float flo_ut_1 flo_ut_2
;;
