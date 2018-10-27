(** {3 Measure_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_v";
   "Needs : MEA:_Units_v";
   "Needed-by: ";
   "What-is-it : a Measure type couples a float and a Units";
   "How-is-it-done: ";
   "Author : François Colonna 21 mai 2016 at 12:44:04+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up} *)

let measure_of_measure_actual mac =
  Doublet_v.map_right 
    Units_v.units_of_units_actual
    mac
;;

let measure_of_measure_canonical mca =
  Doublet_v.map_right 
    Units_v.units_of_units_canonical
    mca
;;

(** {6 Coercing Down} *)

let measure_actual_off_measure mea =
  Doublet_v.map_right 
    Units_conversion_v.units_to_units_actual_of_units 
    mea
;;

let measure_canonical_off_measure mea =
  Doublet_v.map_right 
    Units_v.units_canonical_off_units
    mea
;;

(** {6 Making} *)

let make (flo:float) = function
  | Units_t.Units_actual uat ->
      let mac = Measure_actual_v.make flo uat in
      measure_of_measure_actual mac

  | Units_t.Units_canonical sym_euc ->
      let mca = Measure_canonical_v.make flo sym_euc in
      measure_of_measure_canonical mca
;;

let make_of_string_of_string_of_string str_flo str_1 str_2 = 
  try       
    measure_of_measure_actual 
      (Measure_actual_v.make_of_string_of_string_of_string str_flo str_1 str_2)
  with Failure _ ->
  try       
    measure_of_measure_canonical 
      ( Measure_canonical_v.make_of_string_of_string_of_string str_flo str_1 str_2) 
  with Failure _ ->
  failwith "Not_a_topson_notleaf:_Units_actual_v.ml:make_of_topson_notleaf"
;;

(** {6 Float} *)

let float_off_measure (mea:Measure_t.measure) =
  Doublet_v.left_off_doublet mea
;;

(** {6 units_actual} *)

let units_off_measure (mea:Measure_t.measure) = 
  Doublet_v.right_off_doublet mea
;;

let measure_actual_of_measure_canonical mca =
  Doublet_v.map_right 
    Units_canonical_conversion_v.units_actual_of_units_canonical
    mca
;;

(** {6 Canonicalizing} *)

let measure_canonical_of_measure_of_calculation_name (mea:Measure_t.measure) nam_cal = (* Improve *)
  let flo_mea = float_off_measure mea in
  let uni_mea = units_off_measure mea in
  match uni_mea with
  | Units_t.Units_actual uac ->
      let mac = Measure_actual_v.make flo_mea uac in
      Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mac nam_cal

  | Units_t.Units_canonical uca ->
      let mca = Measure_canonical_v.make flo_mea uca in
      let mea_act = measure_actual_of_measure_canonical mca in
      Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal
;;

(** {6 Naming} *)

let name (mea:Measure_t.measure) =
  Doublet_v.name 
    String_v.string_of_float 
    Units_v.name
    mea
;;

let dimension (mea:Measure_t.measure) =
  let uni = units_off_measure mea in
  Units_v.dimension uni
;;

let shortname (mea:Measure_t.measure) = 
  let (flo, uni) = mea in
  (Format.sprintf "%g %s"
     flo 
     (Units_v.shortname uni) 
  )
;;

let longname (mea:Measure_t.measure) =
  Format.sprintf "Measure_t.%s" (String.capitalize (name mea))
;;

let fullname (mea:Measure_t.measure) =
  Format.sprintf "%s \"%s\"" (longname mea) (dimension mea)
;;

(** {6 Writing} *)

let write och (mea:Measure_t.measure) =
  let flo = float_off_measure mea in
  let uat = units_off_measure mea in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_v.name uat)
;;

let print (mea:Measure_t.measure) =
  let flo = float_off_measure mea in
  let uat = units_off_measure mea in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Units_v.name uat)
;;

(** {6 Operations Unary} *)

let square (mea:Measure_t.measure) = 
  let (flo, uni_mea) = mea in
  make (flo *. flo) uni_mea
;;

let square_root (mea:Measure_t.measure) =
  let (flo, uni_mea) = mea in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) uni_mea
;;

let absolute_value (mea:Measure_t.measure) =
  let (flo, uni_mea) = mea in
  make (abs_float flo) uni_mea
;;

(** {6 Comparing} *)

let are_equal_of_epsilon eps (mea_1:Measure_t.measure) (mea_2:Measure_t.measure) =
  let flo_1 = float_off_measure mea_1 in
  let flo_2 = float_off_measure mea_2 in
  let uni_1 = units_off_measure mea_1 in
  let uni_2 = units_off_measure mea_2 in

  (uni_1 = uni_2)
    &&
  Float_value_v.are_equal_of_epsilon eps flo_1 flo_2
;;

let are_equal_at_epsilon_float (mea_1:Measure_t.measure) (mea_2:Measure_t.measure) =
  are_equal_of_epsilon epsilon_float mea_1 mea_2
;;
