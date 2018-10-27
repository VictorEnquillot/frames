(** {3 Measure_actual_length_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_length_v";
   "Needs : MEA:_Units_actual_length_v";
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

let make flo sym_ual =
  Doublet_v.make flo sym_ual
;;

let make_of_string_of_string_of_string str_flo str_ual_1 str_ual_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_ual = Units_actual_length_v.make str_ual_1 str_ual_2 in
  make flo sym_ual 
;;

(** {9 Float} *)

let float_off_measure_actual_length mal =
  Doublet_v.left_off_doublet mal
;;

(** {9 Units_actual_length} *)

let units_actual_length_off_measure_actual_length mal =
  Doublet_v.right_off_doublet mal
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_length mal =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_length
    mal
;;

(** {9 Coercing Down} *)

let measure_actual_length_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_length_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_length_of_calculation_name mal nam_cal =
  let sym_uat = units_actual_length_off_measure_actual_length mal in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_length
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mal =
  let flo = float_off_measure_actual_length mal in
  let sym_ual = units_actual_length_off_measure_actual_length mal in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_length_v.name sym_ual)
;;

(** {6 Printing} *)

let print mal =
  let (flo, sym_ual) = mal in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_length_v.name sym_ual))
;;

(** {6 Unary Operations} *)

let square mal = 
  let (flo, sym_ual) = mal in
  make (flo *. flo) sym_ual
;;

let square_root mal =
  let (flo, sym_ual) = mal in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_length_value_v.square_root"
  else
    make (sqrt flo) sym_ual
;;

let absolute_value mal =
  let (flo, sym_ual) = mal in
  make (abs_float flo) sym_ual
;;

(** {6 Naming} *)

let name mal =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_length_v.name 
    mal
;;

(** {6 Shortnaming} *)

let shortname mal =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_length_v.shortname 
    mal
;;

(** {6 Longnaming} *)

let longname mal =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_length_v.longname
    mal
;;

(** {6 Fullnaming} *)

let fullname mal =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_length_v.fullname
    mal
;;

(** {6 Dimensioning} *)

let dimension mal = 
  let uni = units_actual_length_off_measure_actual_length mal in
  Units_actual_length_v.dimension uni
;;
