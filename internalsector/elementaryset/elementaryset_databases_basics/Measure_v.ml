(** {3 Measure_v} *)

(** {6 Documenting} *)

let documentation () = 
[
 "Current : DELE:Measure_v";
 "Needs: VELE:Elementary_fence_units_symbol_v";
 "Needed-by: ";
 "What-is-it : a Measure type coupling a float and a Units";
 "How-is-it-done: ";
 "Author : François Colonna 15 february 2016";
 "Improve: there is NO top type. No coercion. Coercion is only done on Elementary_fence_units_symbol";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_efu =
Doublet_v.make flo sym_efu
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_efu = Elementary_fence_units_symbol_v.make str_eu1 str_eu2 in
  make flo sym_efu
;;

(** {6 Float} *)

let float_off_measure mea =
  Doublet_v.left_off_doublet mea
;;

(** {6 Elementary_fence_units_symbol} *)

let elementary_fence_units_symbol_off_measure mea =
  Doublet_v.right_off_doublet mea
;;

(** {6 Canonicalizing} *)

let measure_canonical_of_measure_of_calculation_name mea nam_cal =
  let (flo_mea, sym_efu) = mea in
  let con_efu = 
    Elementary_fence_units_canonical_symbol_v.conversion_factor_of_elementary_fence_units_symbol
      sym_efu
  in 
  let flo_mca = flo_mea *. con_efu in
  let sym_mca = 
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_symbol_of_calculation_name 
      sym_efu 
      nam_cal
  in
  make flo_mca sym_mca
;;

let measure_of_measure_canonical mca =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol
    mca
;;

(** {6 Naming} *)

let name mea =
  Doublet_v.name String_v.string_of_float Elementary_fence_units_symbol_v.name mea
;;

let string_off mea = "";;

let longname mea =
  Format.sprintf "Measure_t.%s" (String.capitalize (name mea))
;;

let fullname mea =
  Format.sprintf "%s \"%s\"" (longname mea) (string_off mea)
;;

(** {6 Writing} *)

let write och mea =
  let flo = float_off_measure mea in
  let sym_efu = elementary_fence_units_symbol_off_measure mea in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_symbol_v.name sym_efu)
;;

let print mea =
  let flo = float_off_measure mea in
  let sym_efu = elementary_fence_units_symbol_off_measure mea in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Elementary_fence_units_symbol_v.name sym_efu)
;;

(** {6 Operations Unary} *)

let square mea = 
  let (flo, sym_efu) = mea in
  make (flo *. flo) sym_efu
;;

let square_root mea =
  let (flo, sym_efu) = mea in
  if flo < epsilon_float
  then 
    failwith ("Non_positive_float:"^nam_mod^".square_root")
  else
    make (sqrt flo) sym_efu
;;

let absolute_value mea =
  let (flo, sym_efu) = mea in
  make (abs_float flo) sym_efu
;;

