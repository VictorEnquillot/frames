(** {3 Measure_actual_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_actual_v";
   "Needs : MEA:_Units_actual_v";
   "Needed-by: ";
   "What-is-it : a Measure_actual type coupling a float and a Units_actual";
   "How-is-it-done: ";
   "Author : François Colonna 21 mai 2016 at 12:44:04+02:00";
   "Remark : Coercion is only done on units_actual";
   "Author : François Colonna 23 mai 2016 at 11:24:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_uac =
  Doublet_v.make flo sym_uac
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_uac = Units_actual_v.make str_eu1 str_eu2 in
  make flo sym_uac
;;

(** {6 Float} *)

let float_off_measure_actual mac =
  Doublet_v.left_off_doublet mac
;;

(** {6 units_actual} *)

let units_actual_off_measure_actual mac =
  Doublet_v.right_off_doublet mac
;;

(** {6 Converting} *)

let measure_canonical_of_measure_actual_of_calculation_name mac nam_cal =
  let (flo_mac, sym_uac) = mac in
  let con_uac = 
    Units_canonical_conversion_v.conversion_factor_of_units_actual
      sym_uac
  in 
  let flo_mea_can = flo_mac *. con_uac in
  let sym_mea_can = 
    Units_canonical_conversion_v.units_canonical_of_units_actual_of_calculation_name 
      sym_uac 
      nam_cal
  in
  make flo_mea_can sym_mea_can
;;

let measure_actual_of_measure_canonical mea_can =
  Doublet_v.map_right 
    Units_canonical_conversion_v.units_actual_of_units_canonical
    mea_can
;;

let measure_of_measure_actual mac =
  Doublet_v.map_right 
    Units_v.units_of_units_actual
    mac
;;

(** {6 Naming} *)

let name mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_v.name 
    mac
;;

(** {6 Shortnaming} *)

let shortname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_v.shortname 
    mac
;;

(** {6 Longnaming} *)

let longname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_v.longname
    mac
;;

(** {6 Fullnaming} *)

let fullname mac =
  Doublet_v.name
    String_v.string_of_float
    Units_actual_v.fullname
    mac
;;

(** {6 Dimensioning} *)

let dimension mac = 
  let uni = units_actual_off_measure_actual mac in
  Units_actual_v.dimension uni
;;

(** {6 Writing} *)

let write och mac =
  let flo = float_off_measure_actual mac in
  let sym_uac = units_actual_off_measure_actual mac in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_actual_v.name sym_uac)
;;

let print mac =
  let flo = float_off_measure_actual mac in
  let sym_uac = units_actual_off_measure_actual mac in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Units_actual_v.name sym_uac)
;;

(** {6 Operations Unary} *)

let square mac = 
  let (flo, sym_uac) = mac in
  make (flo *. flo) sym_uac
;;

let square_root mac =
  let (flo, sym_uac) = mac in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_uac
;;

let absolute_value mac =
  let (flo, sym_uac) = mac in
  make (abs_float flo) sym_uac
;;

