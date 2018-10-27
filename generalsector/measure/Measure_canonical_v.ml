(** {3 measure_canonical_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_canonical_v";
   "Needed-by: ";
   "What-is-it: the coupling of a float and an units_canonical"; 
   "Remark: a Measure is NOT an Entity : it is a Datastructure. Coercion is done on units_canonical";
   "Author : François Colonna 23 mai 2016 at 11:24:28+02:00";
   "Author : François Colonna 04 juillet 2017 at 12:06:47+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_euc =
  Doublet_v.make flo sym_euc
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Units_canonical_v.make str_eu1 str_eu2 in
  make flo sym_eua
;;

(** {6 Float} *)

let float_off_measure_canonical mca =
  Doublet_v.left_off_doublet mca
;;

(** {6 units_canonical} *)

let units_canonical_off_measure_canonical mca =
  Doublet_v.right_off_doublet mca
;;

(** {6 Converting} *)

let measure_canonical_of_measure_actual_of_calculation_name mac nam_cal =
  let (flo_mea, sym_eua) = mac in
  let con_eua = 
    Units_canonical_conversion_v.conversion_factor_of_units_actual
      sym_eua
  in 
  let flo_mca = flo_mea *. con_eua in
  let sym_mca = 
    Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
      sym_eua 
      nam_cal
  in
  make flo_mca sym_mca
;;

let measure_actual_of_measure_canonical mca =
  Doublet_v.map_right 
    Units_canonical_conversion_v.units_actual_of_units_canonical
    mca
;;

let measure_of_measure_canonical mca =
  Doublet_v.map_right 
    Units_v.units_of_units_canonical
    mca
;;

(** {6 Naming} *)

let name mca =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_v.name 
    mca
;;

(** {6 Shortnaming} *)

let shortname mca =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_v.shortname 
    mca
;;

(** {6 Longnaming} *)

let longname mca =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_v.longname
    mca
;;

(** {6 Fullnaming} *)

let fullname mca =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_v.fullname
    mca
;;

(** {6 Dimensioning} *)

let dimension mca = 
  let uni = units_canonical_off_measure_canonical mca in
  Units_canonical_v.dimension uni
;;

(** {6 Writing} *)

let write och mac =
  let flo = float_off_measure_canonical mac in
  let sym_eua = units_canonical_off_measure_canonical mac in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_canonical_v.name sym_eua)
;;

let print mac =
  let flo = float_off_measure_canonical mac in
  let sym_eua = units_canonical_off_measure_canonical mac in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Units_canonical_v.name sym_eua)
;;

(** {6 Operations Binary} *)

let add mca_1 mca_2 = 
  let (flo_1, sym_euc) = mca_1 in
  let (flo_2, sym_euc) = mca_2 in

  make (flo_1 +. flo_2) sym_euc
;;

let substract mea_1 mea_2 =
  let (flo_1, sym_euc_1) =  mea_1 in
  let (flo_2, sym_euc_2) =  mea_2 in

  make (flo_1 -. flo_2) sym_euc_1
;;

let multiply mea_1 mea_2 =
  let (flo_1, sym_euc_1) =  mea_1 in
  let (flo_2, sym_euc_2) =  mea_2 in
  
  make (flo_1 *. flo_2) sym_euc_1
;;

let divide mea_1 mea_2 =
  let (flo_1, sym_euc_1) =  mea_1 in
  let (flo_2, sym_euc_2) =  mea_2 in

  if (abs_float flo_2) < epsilon_float
  then failwith ("Division_by_zero:"^nam_mod^".divide")
  else make (flo_1 /. flo_2) sym_euc_1

(** {6 Operations Unary} *)

let square mea = 
  let (flo, sym_euc) = mea in
  make (flo *. flo) sym_euc
;;

let square_root mea =
  let (flo, sym_euc) = mea in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_euc
;;

let absolute_value mea =
  let (flo, sym_euc) = mea in
  make (abs_float flo) sym_euc
;;

