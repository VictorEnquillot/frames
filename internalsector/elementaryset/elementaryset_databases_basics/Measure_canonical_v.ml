(** {3 measure_canonical_v} *)

(** {6 Documenting} *)

let documentation () = 
[
 "Current : DELE:Measure_canonical_v";
 "Needed-by: ";
 "What-is-it: the coupling of a float and an Elementary_fence_units_canonical_symbol"; 
 "Remark: a Measure is NOT an Entity : it is a Datastructure. Coercion is done on Elementary_fence_units_canonical_symbol";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo sym_euc =
  Doublet_v.make flo sym_euc
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

(** {6 Definition} *)

(** {6 Conversion} *)

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

