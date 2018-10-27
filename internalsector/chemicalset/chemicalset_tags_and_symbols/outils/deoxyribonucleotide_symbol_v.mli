(** {3 A Symbol for a Deoxyribonucleotide.} *)


let name :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    string
;;


val print : Format.Formatter ->
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    unit
;;


(** {6 Extracting.} *)

val deoxyribonucleotide_symbol_off_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Dpus_v
;;

val deoxyribonucleotide_symbol_off_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Dpys_v
;;


(** {6 Querying.} *)

val is_deoxyribonucleotide_symbol_off_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    bool
;;

val is_deoxyribonucleotide_symbol_off_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    Des_v
;;

val Deoxyadenosine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

val Deoxyguanosine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

val deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    Des_v
;;

val Deoxyuridine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

val Deoxycytidine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

val Thymidine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;



(** created by ./generator deoxyribonucleotide v symbol at 9:28 26 Apr 2011. *)



