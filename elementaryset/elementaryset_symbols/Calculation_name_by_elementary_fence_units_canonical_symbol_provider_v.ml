(** {3 Calculation_name_by_elementary_fence_units_canonical_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Calculation_name_by_elementary_fence_units_canonical_symbol_provider_v";
   "Needs : SELE:Elementary_fence_units_canonical_symbol_t";
   "What-is-it : the Calculation_name from Elementary_fence_units_canonical_symbol";
   "Author : François Colonna 21 mai 2016 at 18:57:36+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build sym_euc =
  match sym_euc with
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_euc ->
      "classical"
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
      "quantum"
;;

(** {6 Providing} *)

let provide sym_euc =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build sym_euc in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
