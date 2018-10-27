(** {3 A Symbol for a Deoxyribonucleotide_purinic.} *)


let name :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    string
;;


val print : Format.Formatter ->
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Deoxyadenosine : Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol;;

val Deoxyguanosine : Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol;;



(** created by ./generator deoxyribonucleotide_purinic v symbol at 9:28 26 Apr 2011. *)



