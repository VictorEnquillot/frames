(** {3 Measure_actual_energy_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_actual_energy_v";
   "Needs : VELE:Elementary_fence_units_actual_energy_symbol_v";
   "Needed-by: ";
   "Definition : a Readee generalizes any Elementary Value";
   "Definition : a Measure_actual couples a float and an Elementary_fence_units_actual_symbol";
   "Definition : a Closure is a list of Readee. It valuates the Elementary_fence i.e. the Deepfence of any Domain";
   "Definition : a Closure_units is a list of Readee_units (i.e. Measure_actual)";
   "What-is-it : a Measure_actual subtype coupling a float and a Unit of Energy";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

(** {6 Naming} *)

let name mte =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_actual_energy_symbol_v.name 
    mte
;;

let string_off mte = "";;

let longname mte =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_actual_energy_symbol_v.longname
    mte
;;

let fullname mte =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_actual_energy_symbol_v.fullname
    mte
;;

(** {6 Making} *)

let make flo sym_eua =
  Doublet_v.make flo sym_eua
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_actual_energy_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua 
;;

(** {9 Float} *)

let float_off_measure_actual_energy mte =
  Doublet_v.left_off_doublet mte
;;

(** {9 Elementary_fence_units_actual_energy_symbol} *)

let elementary_fence_units_actual_energy_symbol_off_measure_actual_energy mte =
  Doublet_v.right_off_doublet mte
;;

(** {9 Coercing Up} *)

let measure_actual_of_measure_actual_energy mte =
  Doublet_v.map_right 
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol
    mte
;;

(** {9 Coercing Down} *)

let measure_actual_energy_off_measure_actual mea =
  Doublet_v.map_right 
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol
    mea
;;

(** {6 Canonicalizing} *)

let measure_actual_canonical_of_measure_actual_energy_of_calculation_name mte nam_cal =
  let sym_eut = elementary_fence_units_actual_energy_symbol_off_measure_actual_energy mte in
  let sym_efu = 
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol
      sym_eut
  in
  
  Elementary_fence_units_canonical_conversion_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_actual_symbol_of_calculation_name 
    sym_efu
    nam_cal
;;

(** {6 Writing} *)

let write och mte =
  let flo = float_off_measure_actual_energy mte in
  let sym_eua = elementary_fence_units_actual_energy_symbol_off_measure_actual_energy mte in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_actual_energy_symbol_v.name sym_eua)
;;

(** {6 Printing} *)

let print mte =
  let (flo, sym_eua) = mte in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Elementary_fence_units_actual_energy_symbol_v.name sym_eua))
;;

(** {6 Unary Operations} *)

let square mte = 
  let (flo, sym_eua) = mte in
  make (flo *. flo) sym_eua
;;

let square_root mte =
  let (flo, sym_eua) = mte in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:Elementary_fence_units_actual_energy_value_v.square_root"
  else
    make (sqrt flo) sym_eua
;;

let absolute_value mte =
  let (flo, sym_eua) = mte in
  make (abs_float flo) sym_eua
;;

