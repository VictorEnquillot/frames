(** {3 Measure_actual_this_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_this_v";
   "Needs : MEA:_Units_actual_this_v";
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

let make flo sym_uuu =
  Doublet_v.make flo sym_uuu
;;

let make_of_string_of_string_of_string str_flo str_uuu_1 str_uuu_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uuu = Units_actual_this_v.make str_uuu_1 str_uuu_2 in
  make flo sym_uuu 
;;

(** {9 Float} *)

let float_off_measure_actual_this ttt =
  Doublet_v.left_off_doublet ttt
;;

(** {9 Units_actual_this} *)

let units_actual_this_off_measure_actual_this ttt =
  Doublet_v.right_off_doublet ttt
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_this ttt =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_this
    ttt
;;

(** {9 Coercing Down} *)

let measure_actual_this_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_this_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_this_of_calculation_name ttt nam_cal =
  let sym_uat = units_actual_this_off_measure_actual_this ttt in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_this
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och ttt =
  let flo = float_off_measure_actual_this ttt in
  let sym_uuu = units_actual_this_off_measure_actual_this ttt in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_this_v.name sym_uuu)
;;

(** {6 Printing} *)

let print ttt =
  let (flo, sym_uuu) = ttt in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_this_v.name sym_uuu))
;;

(** {6 Unary Operations} *)

let square ttt = 
  let (flo, sym_uuu) = ttt in
  make (flo *. flo) sym_uuu
;;

let square_root ttt =
  let (flo, sym_uuu) = ttt in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_this_value_v.square_root"
  else
    make (sqrt flo) sym_uuu
;;

let absolute_value ttt =
  let (flo, sym_uuu) = ttt in
  make (abs_float flo) sym_uuu
;;

(** {6 Naming} *)

let name ttt =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_this_v.name 
    ttt
;;

(** {6 Shortnaming} *)

let shortname ttt =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_this_v.shortname 
    ttt
;;

(** {6 Longnaming} *)

let longname ttt =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_this_v.longname
    ttt
;;

(** {6 Fullnaming} *)

let fullname ttt =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_this_v.fullname
    ttt
;;

(** {6 Dimensioning} *)

let dimension ttt = 
  let uni = units_actual_this_off_measure_actual_this ttt in
  Units_actual_this_v.dimension uni
;;
