(** {3 United_float_tuple_list_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:United_float_tuple_list_v";
   "Needs : MEA:_Units_tuple_list_v";
   "Needed-by: ";
   "What-is-it : a United_float_tuple_list type couples a Units and a Float_tuple_list";
   "How-is-it-done: ";
   "Abbreviation : flo_ut";
   "Author : François Colonna 05 juillet 2017 at 11:05:40+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make (uni:Units_t.units) (flo_tl:float Tuple_list_t.tuple_list) =
  Doublet_v.make uni flo_tl
;;

(** {6 Float_tuple_list} *)

let float_tuple_list_off_united_float_tuple_list flo_utl =
  Doublet_v.right_off_doublet flo_utl
;;

(** {6 Units} *)

let units_off_united_float_tuple_list flo_utl = 
  Doublet_v.left_off_doublet flo_utl
;;

(** {6 Naming} *)

let name flo_utl =
  Doublet_v.name Units_v.name Float_tuple_list_v.name flo_utl
;;

let shortname flo_utl = 
  Doublet_v.name Units_v.shortname Float_tuple_list_v.shortname flo_utl
;;

let longname flo_utl =
  Format.sprintf "United_float_tuple_list_t.%s" (String.capitalize (name flo_utl))
;;

let fullname flo_utl =
  longname flo_utl 
;;

let dimension flo_utl =
  let uni = units_off_united_float_tuple_list flo_utl in
  Units_v.dimension uni
;;

(** {6 Operations} *)

let addition flo_utl_1 flo_utl_2 =
  let flo_t_1 = float_tuple_list_off_united_float_tuple_list flo_utl_1 in
  let flo_t_2 = float_tuple_list_off_united_float_tuple_list flo_utl_2 in
  let flo_utl = Float_tuple_list_v.addition_of_float_tuple_list_of_float_tuple_list flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple_list flo_utl_1 in
  let uni_2 = units_off_united_float_tuple_list flo_utl_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_utl 
;;

let difference flo_utl_1 flo_utl_2 =
  let flo_t_1 = float_tuple_list_off_united_float_tuple_list flo_utl_1 in
  let flo_t_2 = float_tuple_list_off_united_float_tuple_list flo_utl_2 in
  let flo_utl = Float_tuple_list_v.difference_of_float_tuple_list_of_float_tuple_list flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple_list flo_utl_1 in
  let uni_2 = units_off_united_float_tuple_list flo_utl_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_utl 
;;

let product flo_utl_1 flo_utl_2 =
  let flo_t_1 = float_tuple_list_off_united_float_tuple_list flo_utl_1 in
  let flo_t_2 = float_tuple_list_off_united_float_tuple_list flo_utl_2 in
  let flo_utl = Float_tuple_list_v.product_of_float_tuple_list_of_float_tuple_list flo_t_1 flo_t_2 in 

  let uni_1 = units_off_united_float_tuple_list flo_utl_1 in
  let uni_2 = units_off_united_float_tuple_list flo_utl_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_utl 
;;

let division flo_utl_1 flo_utl_2 =
  let flo_t_1 = float_tuple_list_off_united_float_tuple_list flo_utl_1 in
  let flo_t_2 = float_tuple_list_off_united_float_tuple_list flo_utl_2 in
  let flo_utl = Float_tuple_list_v.division_of_float_tuple_list_of_float_tuple_list flo_t_1 flo_t_2 in

  let uni_1 = units_off_united_float_tuple_list flo_utl_1 in
  let uni_2 = units_off_united_float_tuple_list flo_utl_2 in
 
  let uni = Units_v.units_of_units_of_units uni_1 uni_2 in
  make uni flo_utl
;;

(** {6 Writing} *)

let write och flo_utl =
  let flo_t = float_tuple_list_off_united_float_tuple_list flo_utl in
  let uni = units_off_united_float_tuple_list flo_utl in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %s" 
    (Units_v.name uni)
    (Float_tuple_list_v.name flo_t) 
;;

let print flo_utl =
  let flo_t = float_tuple_list_off_united_float_tuple_list flo_utl in
  let uni = units_off_united_float_tuple_list flo_utl in
  Format.fprintf Format.std_formatter "%s %s" 
    (Units_v.name uni)
    (Float_tuple_list_v.name flo_t) 
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps flo_utl_1 flo_utl_2 =
  let flo_t_1 = float_tuple_list_off_united_float_tuple_list flo_utl_1 in
  let uni_1 = units_off_united_float_tuple_list flo_utl_1 in
  let flo_t_2 = float_tuple_list_off_united_float_tuple_list flo_utl_2 in
  let uni_2 = units_off_united_float_tuple_list flo_utl_2 in

  (Float_tuple_list_v.are_equal_of_epsilon_of_float_tuple_list_of_float_tuple_list eps flo_t_1 flo_t_2)
    && 
  (uni_1 = uni_2)
;;

let are_equal_at_epsilon_float flo_utl_1 flo_utl_2 =
  are_equal_of_epsilon epsilon_float flo_utl_1 flo_utl_2
;;
