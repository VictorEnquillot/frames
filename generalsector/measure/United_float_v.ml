(** {3 United_float_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:United_float_v";
   "Needs : MEA:_Units_v";
   "Needed-by: ";
   "What-is-it : a United_float type couples a Units and a Float";
   "How-is-it-done: ";
   "Author : François Colonna 05 juillet 2017 at 10:54:21+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up} *)

let united_float_of_measure_actual mac =
  Doublet_v.map_right 
    Units_v.units_of_units_actual
    mac
;;

let united_float_of_measure_canonical mca =
  Doublet_v.map_right 
    Units_v.units_of_units_canonical
    mca
;;

(** {6 Coercing Down} *)

let measure_actual_off_united_float mea =
  Doublet_v.map_right 
    Units_conversion_v.units_to_units_actual_of_units 
    mea
;;

let measure_canonical_off_united_float mea =
  Doublet_v.map_right 
    Units_v.units_canonical_off_units
    mea
;;

(** {6 Making} *)

let make uni flo = 
  match uni with 
  | Units_t.Units_actual uat ->
      let mac = Measure_actual_v.make flo uat in
      united_float_of_measure_actual mac
	
  | Units_t.Units_canonical sym_euc ->
      let mca = Measure_canonical_v.make flo sym_euc in
      united_float_of_measure_canonical mca
;;

let make_of_string_of_string_of_string str_flo str_1 str_2 = 
  try       
    united_float_of_measure_actual 
      (Measure_actual_v.make_of_string_of_string_of_string str_flo str_1 str_2)
  with Failure _ ->
  try       
    united_float_of_measure_canonical 
      ( Measure_canonical_v.make_of_string_of_string_of_string str_flo str_1 str_2) 
  with Failure _ ->
  failwith "Not_a_topson_notleaf:_Units_actual_v.ml:make_of_topson_notleaf"
;;

(** {6 Float} *)

let float_off_united_float ufl =
  Doublet_v.right_off_doublet ufl
;;

(** {6 units_actual} *)

let units_off_united_float ufl = 
  Doublet_v.left_off_doublet ufl
;;

(** {6 Naming} *)

let name ufl =
  Doublet_v.name 
    Units_v.name
    String_v.string_of_float 
    ufl
;;

let dimension ufl =
  let uni = units_off_united_float ufl in
  Units_v.dimension uni
;;

let shortname ufl = 
  let (flo, uni) = ufl in
  (Format.sprintf "%s %g"
      (Units_v.shortname uni) 
     flo 
 )
;;

let longname ufl =
  Format.sprintf "United_float_t.%s" (String.capitalize (name ufl))
;;

let fullname ufl =
  Format.sprintf "%s \"%s\"" (longname ufl) (dimension ufl)
;;

(** {6 Writing} *)

let write och ufl =
  let flo = float_off_united_float ufl in
  let uat = units_off_united_float ufl in
  Format.fprintf (Format.formatter_of_out_channel och) "%s %f" 
    (Units_v.name uat)
    flo 
;;

let print ufl =
  let flo = float_off_united_float ufl in
  let uat = units_off_united_float ufl in
  Format.fprintf Format.std_formatter "%s %f" 
    (Units_v.name uat)
    flo 
;;

(** {6 Operations Unary} *)

let square ufl = 
  let flo = float_off_united_float ufl in
  let uni = units_off_united_float ufl in
  make uni (flo *. flo)
;;

let square_root ufl =
  let flo = float_off_united_float ufl in
  let uni = units_off_united_float ufl in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make uni (sqrt flo) 
;;

let absolute_value ufl =
  let flo = float_off_united_float ufl in
  let uni = units_off_united_float ufl in
  make uni (abs_float flo)
;;

(** {6 Comparing} *)

let are_equal_of_epsilon eps ufl_1 ufl_2 =
  let flo_1 = float_off_united_float ufl_1 in
  let flo_2 = float_off_united_float ufl_2 in
  let uni_1 = units_off_united_float ufl_1 in
  let uni_2 = units_off_united_float ufl_2 in

  (uni_1 = uni_2)
    &&
  Float_value_v.are_equal_of_epsilon eps flo_1 flo_2
;;

let are_equal_at_epsilon_float ufl_1 ufl_2 =
  are_equal_of_epsilon epsilon_float ufl_1 ufl_2
;;
