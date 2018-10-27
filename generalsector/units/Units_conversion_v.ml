(** {3 Units_conversion_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_conversionv";
   "Needs : Units_canonical_classical_conversion_v";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Author : François Colonna 31 mai 2017 at 11:57:45+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Conversion} *)

let conversion_factor_to_units_canonical_classical_of_units = function
  | Units_t.Units_actual uac -> 
      Units_canonical_classical_conversion_v.conversion_factor_of_units_actual uac
  | Units_t.Units_canonical
      (Units_canonical_t.Units_canonical_classical ucc ) -> 1.0
  | Units_t.Units_canonical 
      (Units_canonical_t.Units_canonical_quantum ucq ) -> 
	Utilities_v.not_yet_implemented __LOC__ "conversion_factor_to_units_canonical_classical_of_units"
;;

let units_to_units_actual_of_units = function
  | Units_t.Units_actual uac -> uac 
  | Units_t.Units_canonical uca -> 
      Units_canonical_conversion_v.units_actual_of_units_canonical uca
;;
