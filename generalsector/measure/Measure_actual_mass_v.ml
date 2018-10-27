(** {3 Measure_actual_mass_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_mass_v";
   "Needs : MEA:_Units_actual_mass_v";
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

let make flo sym_uam =
  Doublet_v.make flo sym_uam
;;

let make_of_string_of_string_of_string str_flo str_uam_1 str_uam_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uam = Units_actual_mass_v.make str_uam_1 str_uam_2 in
  make flo sym_uam 
;;

(** {9 Float} *)

let float_off_measure_actual_mass mam =
  Doublet_v.left_off_doublet mam
;;

(** {9 Units_actual_mass} *)

let units_actual_mass_off_measure_actual_mass mam =
  Doublet_v.right_off_doublet mam
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_mass mam =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_mass
    mam
;;

(** {9 Coercing Down} *)

let measure_actual_mass_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_mass_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_mass_of_calculation_name mam nam_cal =
  let sym_uat = units_actual_mass_off_measure_actual_mass mam in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_mass
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mam =
  let flo = float_off_measure_actual_mass mam in
  let sym_uam = units_actual_mass_off_measure_actual_mass mam in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_mass_v.name sym_uam)
;;

(** {6 Printing} *)

let print mam =
  let (flo, sym_uam) = mam in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_mass_v.name sym_uam))
;;

(** {6 Unary Operations} *)

let square mam = 
  let (flo, sym_uam) = mam in
  make (flo *. flo) sym_uam
;;

let square_root mam =
  let (flo, sym_uam) = mam in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_mass_value_v.square_root"
  else
    make (sqrt flo) sym_uam
;;

let absolute_value mam =
  let (flo, sym_uam) = mam in
  make (abs_float flo) sym_uam
;;

(** {6 Naming} *)

let name mam =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_mass_v.name 
    mam
;;

(** {6 Shortnaming} *)

let shortname mam =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_mass_v.shortname 
    mam
;;

(** {6 Longnaming} *)

let longname mam =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_mass_v.longname
    mam
;;

(** {6 Fullnaming} *)

let fullname mam =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_mass_v.fullname
    mam
;;

(** {6 Dimensioning} *)

let dimension mam = 
  let uni = units_actual_mass_off_measure_actual_mass mam in
  Units_actual_mass_v.dimension uni
;;
