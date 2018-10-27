(** {3 measure_canonical_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_canonical_v";
   "Needed-by: ";
   "What-is-it: the coupling of a float and an Elementary_fence_units_canonical_symbol"; 
   "Remark: a Measure is NOT an Entity : it is a Datastructure. Coercion is done on Elementary_fence_units_canonical_symbol";
   "Author : François Colonna 23 mai 2016 at 11:24:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_euc =
  Doublet_v.make flo sym_euc
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_canonical_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua
;;

(** {6 Float} *)

let float_off_measure_canonical mea_can =
  Doublet_v.left_off_doublet mea_can
;;

(** {6 Elementary_fence_units_canonical_symbol} *)

let elementary_fence_units_canonical_symbol_off_measure_canonical mea_can =
  Doublet_v.right_off_doublet mea_can
;;

(** {6 Converting} *)

let measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal =
  let (flo_mea, sym_eua) = mea_act in
  let con_eua = 
    Elementary_fence_units_canonical_conversion_v.conversion_factor_of_elementary_fence_units_actual_symbol
      sym_eua
  in 
  let flo_mea_can = flo_mea *. con_eua in
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

let measure_of_measure_canonical mea_can =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol
    mea_can
;;

(** {6 Naming} *)

let name mea_act =
  Doublet_v.name String_v.string_of_float Elementary_fence_units_canonical_symbol_v.name mea_act
;;

let string_off mea_act = "";;

let longname mea_act =
  Format.sprintf "Measure_canonical_t.%s" (String.capitalize (name mea_act))
;;

let fullname mea_act =
  Format.sprintf "%s \"%s\"" (longname mea_act) (string_off mea_act)
;;

(** {6 Writing} *)

let write och mea_act =
  let flo = float_off_measure_canonical mea_act in
  let sym_eua = elementary_fence_units_canonical_symbol_off_measure_canonical mea_act in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_canonical_symbol_v.name sym_eua)
;;

let print mea_act =
  let flo = float_off_measure_canonical mea_act in
  let sym_eua = elementary_fence_units_canonical_symbol_off_measure_canonical mea_act in
  Format.fprintf Format.std_formatter "%f %s" 
    flo 
    (Elementary_fence_units_canonical_symbol_v.name sym_eua)
;;

(** {6 Operations Binary} *)

let add mea_can_1 mea_can_2 = 
  let (flo_1, sym_euc) = mea_can_1 in
  let (flo_2, sym_euc) = mea_can_2 in

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

