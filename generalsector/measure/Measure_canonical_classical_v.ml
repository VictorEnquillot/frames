(** {3 measure_canonical_classical_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_canonical_classical_v";
   "Needed-by: ";
   "What-is-it: the coupling of a float and an units_canonical_classical"; 
   "Remark : a Measure is NOT an Entity NO Coercision";
   "Remark : it is a Datastructure. Coercion is done on units_canonical_classical";
   "Author : François Colonna 13 mai 2016 at 15:16:56+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_ucc =
  Doublet_v.make flo sym_ucc
;;

(** {6 Float} *)

let float_off_measure_canonical_classical mcc =
  Doublet_v.left_off_doublet mcc
;;

(** {6 units_canonical_classical} *)

let units_canonical_classical_off_measure_canonical_classical mcc =
  Doublet_v.right_off_doublet mcc
;;

(** {6 Canonical_classicalizing} *)

let measure_canonical_classical_off_measure_canonical mca =
  Doublet_v.map_right 
    Units_canonical_v.units_canonical_classical_off_units_canonical 
    mca
;;

let measure_canonical_classical_of_measure mea =
  Doublet_v.map_right 
    Units_canonical_classical_conversion_v.units_canonical_classical_of_units_actual 
    mea
;;

let measure_canonical_of_measure_canonical_classical mca =
  Doublet_v.map_right 
    Units_canonical_v.units_canonical_of_units_canonical_classical
    mca
;;

(** {6 Definition} *)

(** {6 Conversion} *)

let measure_of_measure_canonical_classical mcc =
  Doublet_v.map_right 
    Units_canonical_classical_conversion_v.units_actual_of_units_canonical_classical
  mcc
;;

(** {6 Naming} *)

let name mcc =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_classical_v.name 
    mcc
;;

(** {6 Shortnaming} *)

let shortname mcc =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_classical_v.shortname 
    mcc
;;

(** {6 Longnaming} *)

let longname mcc =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_classical_v.longname
    mcc
;;

(** {6 Fullnaming} *)

let fullname mcc =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_classical_v.fullname
    mcc
;;

(** {6 Dimensioning} *)

let dimension mcc = 
  let uni = units_canonical_classical_off_measure_canonical_classical mcc in
  Units_canonical_classical_v.dimension uni
;;

(** {6 Writing} *)

let write och mcc =
  let flo = float_off_measure_canonical_classical mcc in
  let sym_ecc = units_canonical_classical_off_measure_canonical_classical mcc in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_canonical_classical_v.name sym_ecc)
;;

let print mcc =
  let flo = float_off_measure_canonical_classical mcc in
  let sym_ecc = units_canonical_classical_off_measure_canonical_classical mcc in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Units_canonical_classical_v.name sym_ecc)
;;

(** {6 Operations Binary} *)

let add mca_1 mca_2 = 
  let (flo_1, sym_ucc) = mca_1 in
  let (flo_2, sym_ucc) = mca_2 in

  make (flo_1 +. flo_2) sym_ucc
;;

let substract mea_1 mea_2 =
  let (flo_1, sym_ucc_1) =  mea_1 in
  let (flo_2, sym_ucc_2) =  mea_2 in

  make (flo_1 -. flo_2) sym_ucc_1
;;

let multiply mea_1 mea_2 =
  let (flo_1, sym_ucc_1) =  mea_1 in
  let (flo_2, sym_ucc_2) =  mea_2 in
  
  make (flo_1 *. flo_2) sym_ucc_1
;;

let divide mea_1 mea_2 =
  let (flo_1, sym_ucc_1) =  mea_1 in
  let (flo_2, sym_ucc_2) =  mea_2 in

  if (abs_float flo_2) < epsilon_float
  then failwith ("Division_by_zero:"^nam_mod^".divide")
  else make (flo_1 /. flo_2) sym_ucc_1

(** {6 Operations Unary} *)

let square mea = 
  let (flo, sym_ucc) = mea in
  make (flo *. flo) sym_ucc
;;

let square_root mea =
  let (flo, sym_ucc) = mea in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_ucc
;;

let absolute_value mea =
  let (flo, sym_ucc) = mea in
  make (abs_float flo) sym_ucc
;;

