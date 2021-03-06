(** {3 Measure_actual_energy_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_energy_v";
   "Needs : MEA:_Units_actual_energy_v";
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

let make flo sym_uae =
  Doublet_v.make flo sym_uae
;;

let make_of_string_of_string_of_string str_flo str_uae_1 str_uae_2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uae = Units_actual_energy_v.make str_uae_1 str_uae_2 in
  make flo sym_uae 
;;

(** {9 Float} *)

let float_off_measure_actual_energy mae =
  Doublet_v.left_off_doublet mae
;;

(** {9 Units_actual_energy} *)

let units_actual_energy_off_measure_actual_energy mae =
  Doublet_v.right_off_doublet mae
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_energy mae =
  Doublet_v.map_right 
    Units_actual_v.units_actual_of_units_actual_energy
    mae
;;

(** {9 Coercing Down} *)

let measure_actual_energy_off_measure_actual mea =
  Doublet_v.map_right 
    Units_actual_v.units_actual_energy_off_units_actual
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_energy_of_calculation_name mae nam_cal =
  let sym_uat = units_actual_energy_off_measure_actual_energy mae in
  let sym_efu = 
    Units_actual_v.units_actual_of_units_actual_energy
      sym_uat
  in
  
  Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mae =
  let flo = float_off_measure_actual_energy mae in
  let sym_uae = units_actual_energy_off_measure_actual_energy mae in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_energy_v.name sym_uae)
;;

(** {6 Printing} *)

let print mae =
  let (flo, sym_uae) = mae in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Units_actual_energy_v.name sym_uae))
;;

(** {6 Unary Operations} *)

let square mae = 
  let (flo, sym_uae) = mae in
  make (flo *. flo) sym_uae
;;

let square_root mae =
  let (flo, sym_uae) = mae in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:_Units_actual_energy_value_v.square_root"
  else
    make (sqrt flo) sym_uae
;;

let absolute_value mae =
  let (flo, sym_uae) = mae in
  make (abs_float flo) sym_uae
;;

(** {6 Naming} *)

let name mae =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_energy_v.name 
    mae
;;

(** {6 Shortnaming} *)

let shortname mae =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_energy_v.shortname 
    mae
;;

(** {6 Longnaming} *)

let longname mae =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_energy_v.longname
    mae
;;

(** {6 Fullnaming} *)

let fullname mae =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_energy_v.fullname
    mae
;;

(** {6 Dimensioning} *)

let dimension mae = 
  let uni = units_actual_energy_off_measure_actual_energy mae in
  Units_actual_energy_v.dimension uni
;;
