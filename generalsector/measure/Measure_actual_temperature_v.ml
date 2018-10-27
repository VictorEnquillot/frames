(** {3 Measure_actual_temperature_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_temperature_v";
   "Needs : MEA:_Units_actual_temperature_v";
   "Needed-by: ";
   "Definition : a Readee generalizes any Elementary Value";
   "Definition : a Measure_actual couples a float and an units_actual";
   "Definition : a Closure is a list of Readee. It valuates the Elementary_fence i.e. the Deepfence of any Domain";
   "Definition : a Closure_units is a list of Readee_units (i.e. Measure_actual)";
   "What-is-it : a Measure_actual subtype coupling a float and a Unit of This";
   "Author : François Colonna 04 juillet 2017 at 11:24:15+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(** {6 Making} *)

let make flo sym_uat =
  Doublet_v.make flo sym_uat
;;

let make_of_string_of_string_of_string str_flo str_uat_1 str_uat_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uat = Units_actual_temperature_v.make str_uat_1 str_uat_2 in
  make flo sym_uat 
;;

(** {9 Float} *)

let float_off_measure_actual_temperature mat =
  Doublet_v.left_off_doublet mat
;;

(** {9 Units_actual_temperature} *)

let units_actual_temperature_off_measure_actual_temperature mat =
  Doublet_v.right_off_doublet mat
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_temperature mat =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_temperature
    mat
;;

(** {9 Coercing Down} *)

let measure_actual_temperature_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_temperature_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_temperature_of_calculation_name mat nam_cal =
  let sym_uat = units_actual_temperature_off_measure_actual_temperature mat in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_temperature
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mat =
  let flo = float_off_measure_actual_temperature mat in
  let sym_uat = units_actual_temperature_off_measure_actual_temperature mat in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_temperature_v.name sym_uat)
;;

(** {6 Printing} *)

let print mat =
  let (flo, sym_uat) = mat in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_temperature_v.name sym_uat))
;;

(** {6 Unary Operations} *)

let square mat = 
  let (flo, sym_uat) = mat in
  make (flo *. flo) sym_uat
;;

let square_root mat =
  let (flo, sym_uat) = mat in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_temperature_value_v.square_root"
  else
    make (sqrt flo) sym_uat
;;

let absolute_value mat =
  let (flo, sym_uat) = mat in
  make (abs_float flo) sym_uat
;;

(** {6 Naming} *)

let name mat =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_temperature_v.name 
    mat
;;

(** {6 Shortnaming} *)

let shortname mat =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_temperature_v.shortname 
    mat
;;

(** {6 Longnaming} *)

let longname mat =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_temperature_v.longname
    mat
;;

(** {6 Fullnaming} *)

let fullname mat =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_temperature_v.fullname
    mat
;;

(** {6 Dimensioning} *)

let dimension mat = 
  let uni = units_actual_temperature_off_measure_actual_temperature mat in
  Units_actual_temperature_v.dimension uni
;;
