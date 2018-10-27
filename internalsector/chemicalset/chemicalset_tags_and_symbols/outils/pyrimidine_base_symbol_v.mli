(** {3 A Symbol for a Pyrimidine_base.} *)


let name :
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    string
;;


val print : Format.Formatter ->
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Cytosine : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;

val Uracil : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;

val Thymine : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;



(** created by ./generator pyrimidine_base v symbol at 9:28 26 Apr 2011. *)



