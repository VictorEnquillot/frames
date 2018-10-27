(** {3 A Symbol for a Ribonucleotide_purinic.} *)


let name :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    string
;;


val print : Format.Formatter ->
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Adenosine : Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol;;

val Guanosine : Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol;;



(** created by ./generator ribonucleotide_purinic v symbol at 9:28 26 Apr 2011. *)



