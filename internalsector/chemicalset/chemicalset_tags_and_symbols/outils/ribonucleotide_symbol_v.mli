(** {3 A Symbol for a Ribonucleotide.} *)


let name :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    string
;;


val print : Format.Formatter ->
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    unit
;;


(** {6 Extracting.} *)

val ribonucleotide_symbol_off_ribonucleotide_purinic_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Rpus_v
;;

val ribonucleotide_symbol_off_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Rps_v
;;


(** {6 Querying.} *)

val is_ribonucleotide_symbol_off_ribonucleotide_purinic_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    bool
;;

val is_ribonucleotide_symbol_off_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val ribonucleotide_symbol_of_ribonucleotide_purinic_symbol :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    Ris_v
;;

val Adenosine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

val Guanosine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

val ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    Ris_v
;;

val Uridine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

val Cytidine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;



(** created by ./generator ribonucleotide v symbol at 9:28 26 Apr 2011. *)



