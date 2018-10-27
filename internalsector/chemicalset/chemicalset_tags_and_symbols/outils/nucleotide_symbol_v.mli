(** {3 A Symbol for a Nucleotide.} *)


let name :
  Nucleotide_symbol_t.nucleotide_symbol ->
    string
;;


val print : Format.Formatter ->
  Nucleotide_symbol_t.nucleotide_symbol ->
    unit
;;


(** {6 Extracting.} *)

val nucleotide_symbol_off_ribonucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Ris_v
;;

val nucleotide_symbol_off_ribonucleotide_purinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Rpus_v
;;

val nucleotide_symbol_off_ribonucleotide_pyrimidinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Rps_v
;;

val nucleotide_symbol_off_deoxyribonucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Des_v
;;

val nucleotide_symbol_off_deoxyribonucleotide_purinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Dpus_v
;;

val nucleotide_symbol_off_deoxyribonucleotide_pyrimidinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Dpys_v
;;


(** {6 Querying.} *)

val is_nucleotide_symbol_off_ribonucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;

val is_nucleotide_symbol_off_ribonucleotide_purinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;

val is_nucleotide_symbol_off_ribonucleotide_pyrimidinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;

val is_nucleotide_symbol_off_deoxyribonucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;

val is_nucleotide_symbol_off_deoxyribonucleotide_purinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;

val is_nucleotide_symbol_off_deoxyribonucleotide_pyrimidinic_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val nucleotide_symbol_of_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Nts_v
;;

val nucleotide_symbol_of_ribonucleotide_purinic_symbol :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    Nts_v
;;

val Adenosine : Nucleotide_symbol_t.nucleotide_symbol;;

val Guanosine : Nucleotide_symbol_t.nucleotide_symbol;;

val nucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    Nts_v
;;

val Uridine : Nucleotide_symbol_t.nucleotide_symbol;;

val Cytidine : Nucleotide_symbol_t.nucleotide_symbol;;

val nucleotide_symbol_of_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Nts_v
;;

val nucleotide_symbol_of_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    Nts_v
;;

val Deoxyadenosine : Nucleotide_symbol_t.nucleotide_symbol;;

val Deoxyguanosine : Nucleotide_symbol_t.nucleotide_symbol;;

val nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    Nts_v
;;

val Deoxyuridine : Nucleotide_symbol_t.nucleotide_symbol;;

val Deoxycytidine : Nucleotide_symbol_t.nucleotide_symbol;;

val Thymidine : Nucleotide_symbol_t.nucleotide_symbol;;



(** created by ./generator nucleotide v symbol at 9:28 26 Apr 2011. *)



