(** {3 measure_canonical_quantum_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_canonical_quantum_v";
   "Needed-by: ";
   "What-is-it: the coupling of a float and an units_canonical_quantum"; 
   "Remark : a Measure is NOT an Entity NO Coercision";
   "Remark : it is a Datastructure. Coercion is done on units_canonical_quantum";
   "Author : François Colonna 13 mai 2016 at 15:16:56+02:00";
   "Author : François Colonna 04 juillet 2017 at 11:56:29+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_ucq =
  Doublet_v.make flo sym_ucq
;;

(** {6 Float} *)

let float_off_measure_canonical_quantum mcq =
  Doublet_v.left_off_doublet mcq
;;

(** {6 units_canonical_quantum} *)

let units_canonical_quantum_off_measure_canonical_quantum mcq =
  Doublet_v.right_off_doublet mcq
;;

(** {6 Converting} *)

let measure_canonical_quantum_off_measure_canonical mca =
  Doublet_v.map_right 
    Units_canonical_v.units_canonical_quantum_off_units_canonical 
    mca
;;

let measure_canonical_quantum_of_measure mea =
  Doublet_v.map_right 
    Units_canonical_quantum_conversion_v.units_canonical_quantum_of_units_actual 
    mea
;;

let measure_canonical_of_measure_canonical_quantum mcq =
  Doublet_v.map_right 
    Units_canonical_v.units_canonical_of_units_canonical_quantum
    mcq
;;

let measure_of_measure_canonical_quantum mcq =
  Doublet_v.map_right 
    Units_v.units_of_units_canonical_quantum
    mcq
;;

(** {6 Naming} *)

let name mcq =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_quantum_v.name 
    mcq
;;

(** {6 Shortnaming} *)

let shortname mcq =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_quantum_v.shortname 
    mcq
;;

(** {6 Longnaming} *)

let longname mcq =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_quantum_v.longname
    mcq
;;

(** {6 Fullnaming} *)

let fullname mcq =
  Doublet_v.name
    String_v.string_of_float
    Units_canonical_quantum_v.fullname
    mcq
;;

(** {6 Dimensioning} *)

let dimension mcq = 
  let uni = units_canonical_quantum_off_measure_canonical_quantum mcq in
  Units_canonical_quantum_v.dimension uni
;;

(** {6 Writing} *)

let write och mea_ccl =
  let flo = float_off_measure_canonical_quantum mea_ccl in
  let sym_ecq = units_canonical_quantum_off_measure_canonical_quantum mea_ccl in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Units_canonical_quantum_v.name sym_ecq)
;;

let print mea_ccl =
  let flo = float_off_measure_canonical_quantum mea_ccl in
  let sym_ecq = units_canonical_quantum_off_measure_canonical_quantum mea_ccl in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Units_canonical_quantum_v.name sym_ecq)
;;

(** {6 Operations Binary} *)

let add mcq_1 mcq_2 = 
  let (flo_1, sym_ucq) = mcq_1 in
  let (flo_2, sym_ucq) = mcq_2 in

  make (flo_1 +. flo_2) sym_ucq
;;

let substract mea_1 mea_2 =
  let (flo_1, sym_ucq_1) =  mea_1 in
  let (flo_2, sym_ucq_2) =  mea_2 in

  make (flo_1 -. flo_2) sym_ucq_1
;;

let multiply mea_1 mea_2 =
  let (flo_1, sym_ucq_1) =  mea_1 in
  let (flo_2, sym_ucq_2) =  mea_2 in
  
  make (flo_1 *. flo_2) sym_ucq_1
;;

let divide mea_1 mea_2 =
  let (flo_1, sym_ucq_1) =  mea_1 in
  let (flo_2, sym_ucq_2) =  mea_2 in

  if (abs_float flo_2) < epsilon_float
  then failwith ("Division_by_zero:"^nam_mod^".divide")
  else make (flo_1 /. flo_2) sym_ucq_1

(** {6 Operations Unary} *)

let square mea = 
  let (flo, sym_ucq) = mea in
  make (flo *. flo) sym_ucq
;;

let square_root mea =
  let (flo, sym_ucq) = mea in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_ucq
;;

let absolute_value mea =
  let (flo, sym_ucq) = mea in
  make (abs_float flo) sym_ucq
;;

