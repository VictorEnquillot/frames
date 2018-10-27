(** {3 A Symbol for a Nitrogenous_base.} *)


let name :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    string
;;


val print : Format.Formatter ->
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    unit
;;


(** {6 Extracting.} *)

val nitrogenous_base_symbol_off_purine_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    Pus_v
;;

val nitrogenous_base_symbol_off_pyrimidine_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    Pys_v
;;


(** {6 Querying.} *)

val is_nitrogenous_base_symbol_off_purine_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    bool
;;

val is_nitrogenous_base_symbol_off_pyrimidine_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val nitrogenous_base_symbol_of_purine_base_symbol :
  Purine_base_symbol_t.purine_base_symbol ->
    Nbs_v
;;

val Adenosine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

val Guanine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

val nitrogenous_base_symbol_of_pyrimidine_base_symbol :
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    Nbs_v
;;

val Cytosine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

val Uracil : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

val Thymine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;



(** created by ./generator nitrogenous_base v symbol at 9:28 26 Apr 2011. *)



