(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)


let name :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    Marts_v
;;


(** {6 Querying.} *)

val is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val pro : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol ->
    Mafts_v
;;

val Ala : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Arg : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Asn : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Asp : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Cys : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Gln : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Glu : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val His : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Ile : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Leu : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Lys : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Met : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Phe : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Ser : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Thr : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Trp : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Tyr : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val Val : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;



(** created by ./generator molecule_aminoacid_fragmented_tlc v symbol at 9:28 26 Apr 2011. *)



