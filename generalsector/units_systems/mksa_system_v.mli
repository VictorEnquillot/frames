
val system : Mksa_system_t.mksa_system
;;

(* http://en.wikipedia.org/wiki/Physi_systemcal_constants *)
val universal_constants : string list
;;

val electromagnetic_constants : string list
;;

val atomic_and_nuclear_constants_text : string list
;;

(* http://en.wikipedia.org/wiki/Physi_systemcal_constant
   #Table_of_physi_systemco-chemical_constants *)

val physi_systemco_chemical_constants : string list
;;

val adopted_values : string list 
;;

val print : Format.formatter -> float -> unit
;;
