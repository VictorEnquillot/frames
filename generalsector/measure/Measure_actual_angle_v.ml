(** {3 Measure_actual_angle_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_angle_v";
   "Needs : MEA:_Units_actual_angle_v";
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

let make flo sym_uaa =
  Doublet_v.make flo sym_uaa
;;

let make_of_string_of_string_of_string str_flo str_uaa_1 str_uaa_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uaa = Units_actual_angle_v.make str_uaa_1 str_uaa_2 in
  make flo sym_uaa 
;;

(** {9 Float} *)

let float_off_measure_actual_angle maa =
  Doublet_v.left_off_doublet maa
;;

(** {9 Units_actual_angle} *)

let units_actual_angle_off_measure_actual_angle maa =
  Doublet_v.right_off_doublet maa
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_angle maa =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_angle
    maa
;;

(** {9 Coercing Down} *)

let measure_actual_angle_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_angle_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_angle_of_calculation_name maa nam_cal =
  let sym_uat = units_actual_angle_off_measure_actual_angle maa in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_angle
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och maa =
  let flo = float_off_measure_actual_angle maa in
  let sym_uaa = units_actual_angle_off_measure_actual_angle maa in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_angle_v.name sym_uaa)
;;

(** {6 Printing} *)

let print maa =
  let (flo, sym_uaa) = maa in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_angle_v.name sym_uaa))
;;

(** {6 Unary Operations} *)

let square maa = 
  let (flo, sym_uaa) = maa in
  make (flo *. flo) sym_uaa
;;

let square_root maa =
  let (flo, sym_uaa) = maa in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_angle_value_v.square_root"
  else
    make (sqrt flo) sym_uaa
;;

let absolute_value maa =
  let (flo, sym_uaa) = maa in
  make (abs_float flo) sym_uaa
;;

(** {6 Naming} *)

let name maa =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_angle_v.name 
    maa
;;

(** {6 Shortnaming} *)

let shortname maa =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_angle_v.shortname 
    maa
;;

(** {6 Longnaming} *)

let longname maa =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_angle_v.longname
    maa
;;

(** {6 Fullnaming} *)

let fullname maa =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_angle_v.fullname
    maa
;;

(** {6 Dimensioning} *)

let dimension maa = 
  let uni = units_actual_angle_off_measure_actual_angle maa in
  Units_actual_angle_v.dimension uni
;;
