(** {3 Measure_length_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_length_v";
   "Needs: SELE:Elementary_fence_units_length_symbol_v";
   "Needs: SELE:Elementary_fence_units_symbol_v";
   "Needs: SELE:Elementary_fence_units_canonical_symbol_v";
   "Needed-by: ";
   "What-is-it : a Measure subtype coupling a float and a Units of Length";
   "How-is-it-done: ";
   "Author : François Colonna 15 february 2016. Canonical corrected";
   "Example: (54.7, Elementary_fence_units_length_symbol_t.Bohr)";
 ]
;;

(** {6 Making} *)

let make flo sym_eua =
  Doublet_v.make flo sym_eua
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_length_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua 
;;

(** {6 Float} *)

let float_off_measure_length mle =
  Doublet_v.left_off_doublet mle
;;

(** {6 Elementary_fence_units_length_symbol} *)

let elementary_fence_units_length_symbol_off_measure_length mle =
  Doublet_v.right_off_doublet mle
;;

(** {6 Elementary_fence_units_length_symbol} *)

let elementary_fence_units_symbol_off_measure_length mle =
  let sym_eul = elementary_fence_units_length_symbol_off_measure_length mle in
  Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_length_symbol
    sym_eul
;;

(** {6 Coercing Up} *)

let measure_of_measure_length mle =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_length_symbol
    mle
;;

(** {6 Coercing Down} *)

let measure_length_off_measure mea =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_length_symbol_off_elementary_fence_units_symbol
    mea
;;

(** {6 Canonicalizing} *)

(** {9 Elementary_fence_units_canonical_symbol} *)

let elementary_fence_units_canonical_symbol_of_measure_length_of_calculation_name mle nam_cal =
  let sym_efu = elementary_fence_units_symbol_off_measure_length mle in
  Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_symbol_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {9 Measure_canonical} *)

let measure_canonical_of_measure_length_of_calculation_name mle nam_cal =
  let (flo_mle, sym_eul) = mle in
  let con_eul = 
    Elementary_fence_units_canonical_symbol_v.conversion_factor_of_elementary_fence_units_length_symbol
      sym_eul
  in 
  let flo_mca = flo_mle *. con_eul in
  let sym_euc = 
    elementary_fence_units_canonical_symbol_of_measure_length_of_calculation_name 
      mle 
      nam_cal
  in
  make flo_mca sym_euc
;;

(** {6 Naming} *)

let name mle =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_length_symbol_v.name 
    mle
;;

let string_off mle = "";;

let longname mle =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_length_symbol_v.longname
    mle
;;

let fullname mle =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_length_symbol_v.fullname
    mle
;;

(** {6 Writing} *)

let write och mle =
  let flo = float_off_measure_length mle in
  let sym_eua = elementary_fence_units_length_symbol_off_measure_length mle in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_length_symbol_v.name sym_eua)
;;

(** {6 Printing} *)

let print mle =
  let (flo, sym_eua) = mle in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Elementary_fence_units_length_symbol_v.name sym_eua))
;;

(** {6 Unary Operations} *)

let square mle = 
  let (flo, sym_eua) = mle in
  make (flo *. flo) sym_eua
;;

let square_root mle =
  let (flo, sym_eua) = mle in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:Elementary_fence_units_length_value_v.square_root"
  else
    make (sqrt flo) sym_eua
;;

let absolute_value mle =
  let (flo, sym_eua) = mle in
  make (abs_float flo) sym_eua
;;

