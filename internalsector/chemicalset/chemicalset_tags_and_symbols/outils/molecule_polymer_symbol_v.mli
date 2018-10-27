(** {3 A Symbol for a Molecule_polymer.} *)


let name :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_polymer_symbol_off_polypeptide_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Pds_v
;;

val molecule_polymer_symbol_off_polypeptide_regular_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Prs_v
;;

val molecule_polymer_symbol_off_polyproline_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Pps_v
;;

val molecule_polymer_symbol_off_polyglycine_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Pgs_v
;;

val molecule_polymer_symbol_off_nucleicacid_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Nus_v
;;


(** {6 Querying.} *)

val is_molecule_polymer_symbol_off_polypeptide_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    bool
;;

val is_molecule_polymer_symbol_off_polypeptide_regular_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    bool
;;

val is_molecule_polymer_symbol_off_polyproline_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    bool
;;

val is_molecule_polymer_symbol_off_polyglycine_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    bool
;;

val is_molecule_polymer_symbol_off_nucleicacid_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_polymer_symbol_of_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Mps_v
;;

val molecule_polymer_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Mps_v
;;

val Acg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Adh : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Agagag : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Agc : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Agg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Agp : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Gac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Gap : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Ggg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Ggacgg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Ggaggg : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Gagaga : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Mhb : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Pac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Pag : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Pgk : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Pti : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Sac : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Tab : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Try : Molecule_polymer_symbol_t.molecule_polymer_symbol;;


val molecule_polymer_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Mps_v
;;

val molecule_polymer_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Mps_v
;;

val molecule_polymer_symbol_of_nucleicacid_symbol :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    Mps_v
;;

val Dna : Molecule_polymer_symbol_t.molecule_polymer_symbol;;

val Rna : Molecule_polymer_symbol_t.molecule_polymer_symbol;;



(** created by ./generator molecule_polymer v symbol at 9:28 26 Apr 2011. *)



