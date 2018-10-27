(** {3 Calculation_name_by_units_canonical_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Calculation_name_by_units_canonical_provider_v";
   "Needs : UNI:Units_canonical_t";
   "What-is-it : the Calculation_name from Units_canonical";
   "Author : François Colonna 21 mai 2016 at 18:57:36+02:00";
   "Author : François Colonna 29 novembre 2016 at 13:58:20+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build uca =
  match uca with
  | Units_canonical_t.Units_canonical_classical ucc ->
      "classical"
  | Units_canonical_t.Units_canonical_quantum ucq ->
      "quantum"
;;

(** {6 Providing} *)

let provide uca =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build uca in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
