(** {3 measure_canonical_quantum_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_canonical_quantum_v";
   "Needed-by: ";
   "What-is-it: the coupling of a float and an Elementary_fence_units_canonical_quantum_symbol"; 
   "Remark : a Measure is NOT an Entity NO Coercision";
   "Remark : it is a Datastructure. Coercion is done on Elementary_fence_units_canonical_quantum_symbol";
   "Author : François Colonna 13 mai 2016 at 15:16:56+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_euc =
  Doublet_v.make flo sym_euc
;;

(** {6 Float} *)

let float_off_measure_canonical_quantum mea_cqu =
  Doublet_v.left_off_doublet mea_cqu
;;

(** {6 Elementary_fence_units_canonical_quantum_symbol} *)

let elementary_fence_units_canonical_quantum_symbol_off_measure_canonical_quantum mea_cqu =
  Doublet_v.right_off_doublet mea_cqu
;;


(** {6 Converting} *)

let measure_canonical_quantum_off_measure_canonical mca =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol 
    mca
;;

let measure_canonical_quantum_of_measure mea =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_quantum_conversion_v.elementary_fence_units_canonical_quantum_symbol_of_elementary_fence_units_actual_symbol 
    mea
;;

let measure_canonical_of_measure_canonical_quantum mca =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol
    mca
;;

let measure_of_measure_canonical_quantum mcq =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_quantum_symbol
    mcq
;;

(** {6 Naming} *)

let name mea_ccl =
  Doublet_v.name String_v.string_of_float Elementary_fence_units_canonical_quantum_symbol_v.name mea_ccl
;;

let string_off mea_ccl = "";;

let longname mea_ccl =
  Format.sprintf "Measure_canonical_quantum_t.%s" (String.capitalize (name mea_ccl))
;;

let fullname mea_ccl =
  Format.sprintf "%s \"%s\"" (longname mea_ccl) (string_off mea_ccl)
;;

(** {6 Writing} *)

let write och mea_ccl =
  let flo = float_off_measure_canonical_quantum mea_ccl in
  let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_measure_canonical_quantum mea_ccl in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_canonical_quantum_symbol_v.name sym_ecq)
;;

let print mea_ccl =
  let flo = float_off_measure_canonical_quantum mea_ccl in
  let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_measure_canonical_quantum mea_ccl in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Elementary_fence_units_canonical_quantum_symbol_v.name sym_ecq)
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

