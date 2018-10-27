(** {3 Measure_actual_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_actual_v";
   "Needs : VELE:Elementary_fence_units_actual_symbol_v";
   "Needed-by: ";
   "What-is-it : a Measure_actual type coupling a float and a Units_actual";
   "How-is-it-done: ";
   "Author : François Colonna 21 mai 2016 at 12:44:04+02:00";
   "Remark : Coercion is only done on Elementary_fence_units_actual_symbol";
   "Author : François Colonna 23 mai 2016 at 11:24:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_eua =
  Doublet_v.make flo sym_eua
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_actual_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua
;;

(** {6 Float} *)

let float_off_measure_actual mea_act =
  Doublet_v.left_off_doublet mea_act
;;

(** {6 Elementary_fence_units_actual_symbol} *)

let elementary_fence_units_actual_symbol_off_measure_actual mea_act =
  Doublet_v.right_off_doublet mea_act
;;

(** {6 Converting} *)

let measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal =
  let (flo_mea_act, sym_eua) = mea_act in
  let con_eua = 
    Elementary_fence_units_canonical_conversion_v.conversion_factor_of_elementary_fence_units_actual_symbol
      sym_eua
  in 
  let flo_mea_can = flo_mea_act *. con_eua in
  let sym_mea_can = 
    Elementary_fence_units_canonical_conversion_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_actual_symbol_of_calculation_name 
      sym_eua 
      nam_cal
  in
  make flo_mea_can sym_mea_can
;;

let measure_actual_of_measure_canonical mea_can =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_symbol
    mea_can
;;

let measure_of_measure_actual mea_act =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol
    mea_act
;;

(** {6 Naming} *)

let name mea_act =
  Doublet_v.name String_v.string_of_float Elementary_fence_units_actual_symbol_v.name mea_act
;;

let string_off mea_act = "";;

let longname mea_act =
  Format.sprintf "Measure_actual_t.%s" (String.capitalize (name mea_act))
;;

let fullname mea_act =
  Format.sprintf "%s \"%s\"" (longname mea_act) (string_off mea_act)
;;

(** {6 Writing} *)

let write och mea_act =
  let flo = float_off_measure_actual mea_act in
  let sym_eua = elementary_fence_units_actual_symbol_off_measure_actual mea_act in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_actual_symbol_v.name sym_eua)
;;

let print mea_act =
  let flo = float_off_measure_actual mea_act in
  let sym_eua = elementary_fence_units_actual_symbol_off_measure_actual mea_act in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Elementary_fence_units_actual_symbol_v.name sym_eua)
;;

(** {6 Operations Unary} *)

let square mea_act = 
  let (flo, sym_eua) = mea_act in
  make (flo *. flo) sym_eua
;;

let square_root mea_act =
  let (flo, sym_eua) = mea_act in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_eua
;;

let absolute_value mea_act =
  let (flo, sym_eua) = mea_act in
  make (abs_float flo) sym_eua
;;

