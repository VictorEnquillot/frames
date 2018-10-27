(** {3 Measure_actual_charge_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_charge_v";
   "Needs : MEA:_Units_actual_charge_v";
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

let make flo sym_uac =
  Doublet_v.make flo sym_uac
;;

let make_of_string_of_string_of_string str_flo str_uac_1 str_uac_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uac = Units_actual_charge_v.make str_uac_1 str_uac_2 in
  make flo sym_uac 
;;

(** {9 Float} *)

let float_off_measure_actual_charge mac =
  Doublet_v.left_off_doublet mac
;;

(** {9 Units_actual_charge} *)

let units_actual_charge_off_measure_actual_charge mac =
  Doublet_v.right_off_doublet mac
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_charge mac =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_charge
    mac
;;

(** {9 Coercing Down} *)

let measure_actual_charge_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_charge_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_charge_of_calculation_name mac nam_cal =
  let sym_uat = units_actual_charge_off_measure_actual_charge mac in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_charge
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mac =
  let flo = float_off_measure_actual_charge mac in
  let sym_uac = units_actual_charge_off_measure_actual_charge mac in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_charge_v.name sym_uac)
;;

(** {6 Printing} *)

let print mac =
  let (flo, sym_uac) = mac in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_charge_v.name sym_uac))
;;

(** {6 Unary Operations} *)

let square mac = 
  let (flo, sym_uac) = mac in
  make (flo *. flo) sym_uac
;;

let square_root mac =
  let (flo, sym_uac) = mac in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_charge_value_v.square_root"
  else
    make (sqrt flo) sym_uac
;;

let absolute_value mac =
  let (flo, sym_uac) = mac in
  make (abs_float flo) sym_uac
;;

(** {6 Naming} *)

let name mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_charge_v.name 
    mac
;;

(** {6 Shortnaming} *)

let shortname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_charge_v.shortname 
    mac
;;

(** {6 Longnaming} *)

let longname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_charge_v.longname
    mac
;;

(** {6 Fullnaming} *)

let fullname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_charge_v.fullname
    mac
;;

(** {6 Dimensioning} *)

let dimension mac = 
  let uni = units_actual_charge_off_measure_actual_charge mac in
  Units_actual_charge_v.dimension uni
;;
