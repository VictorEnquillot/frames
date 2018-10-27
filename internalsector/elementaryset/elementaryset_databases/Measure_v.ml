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
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coering Up} *)

let measure_of_measure_actual mea_act =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol
    mea_act
;;

let measure_of_measure_canonical mea_can =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol
    mea_can
;;

(** {6 Making} *)

let make flo = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
      let mea_act = Measure_actual_v.make flo sym_eua in
      measure_of_measure_actual mea_act

  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
      let mea_can = Measure_canonical_v.make flo sym_euc in
      measure_of_measure_canonical mea_can
;;

let make_of_string_of_string_of_string str_flo str_1 str_2 = 
  try       
    measure_of_measure_actual 
      (Measure_actual_v.make_of_string_of_string_of_string str_flo str_1 str_2)
  with Failure _ ->
  try       
    measure_of_measure_canonical 
      ( Measure_canonical_v.make_of_string_of_string_of_string str_flo str_1 str_2) 
  with Failure _ ->
  failwith "Not_a_topson_notleaf:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_notleaf"
;;

(** {6 Float} *)

let float_off_measure mea =
  Doublet_v.left_off_doublet mea
;;

(** {6 Elementary_fence_units_actual_symbol} *)

let elementary_fence_units_symbol_off_measure mea = 
  Doublet_v.right_off_doublet mea
;;

(** {6 Canonicalizing} *)

let measure_canonical_of_measure_of_calculation_name mea nam_cal =
  let flo_mea = float_off_measure mea in
  let sym_efu = elementary_fence_units_symbol_off_measure mea in
  match sym_efu with
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
      let mea_act = Measure_actual_v.make flo_mea sym_eua in
      Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal

  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
      Measure_canonical_v.make flo_mea sym_euc

;;

let measure_actual_of_measure_canonical mca =
  Doublet_v.map_right 
    Elementary_fence_units_canonical_conversion_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_canonical_symbol
    mca
;;

(** {6 Naming} *)

let name mea =
  Doublet_v.name 
    String_v.string_of_float 
    Elementary_fence_units_symbol_v.name
    mea
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
  let sym_eua = elementary_fence_units_symbol_off_measure mea in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_canonical_symbol_v.name sym_eua)
;;

let print mea =
  let flo = float_off_measure mea in
  let sym_eua = elementary_fence_units_symbol_off_measure mea in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Elementary_fence_units_canonical_symbol_v.name sym_eua)
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

