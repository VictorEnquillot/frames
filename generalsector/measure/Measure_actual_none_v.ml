(** {3 Measure_actual_none_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_none_v";
   "Needs : MEA:_Units_actual_none_v";
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

let make flo sym_uan =
  Doublet_v.make flo sym_uan
;;

let make_of_string_of_string_of_string str_flo str_uan_1 str_uan_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uan = Units_actual_none_v.make str_uan_1 str_uan_2 in
  make flo sym_uan 
;;

(** {9 Float} *)

let float_off_measure_actual_none man =
  Doublet_v.left_off_doublet man
;;

(** {9 Units_actual_none} *)

let units_actual_none_off_measure_actual_none man =
  Doublet_v.right_off_doublet man
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_none man =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_none
    man
;;

(** {9 Coercing Down} *)

let measure_actual_none_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_none_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_none_of_calculation_name man nam_cal =
  let sym_uat = units_actual_none_off_measure_actual_none man in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_none
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och man =
  let flo = float_off_measure_actual_none man in
  let sym_uan = units_actual_none_off_measure_actual_none man in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_none_v.name sym_uan)
;;

(** {6 Printing} *)

let print man =
  let (flo, sym_uan) = man in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_none_v.name sym_uan))
;;

(** {6 Unary Operations} *)

let square man = 
  let (flo, sym_uan) = man in
  make (flo *. flo) sym_uan
;;

let square_root man =
  let (flo, sym_uan) = man in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_none_value_v.square_root"
  else
    make (sqrt flo) sym_uan
;;

let absolute_value man =
  let (flo, sym_uan) = man in
  make (abs_float flo) sym_uan
;;

(** {6 Naming} *)

let name man =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_none_v.name 
    man
;;

(** {6 Shortnaming} *)

let shortname man =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_none_v.shortname 
    man
;;

(** {6 Longnaming} *)

let longname man =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_none_v.longname
    man
;;

(** {6 Fullnaming} *)

let fullname man =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_none_v.fullname
    man
;;

(** {6 Dimensioning} *)

let dimension man = 
  let uni = units_actual_none_off_measure_actual_none man in
  Units_actual_none_v.dimension uni
;;
