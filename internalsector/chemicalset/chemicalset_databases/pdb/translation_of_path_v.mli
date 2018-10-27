(* $Id: atom_pdbs.mli,v 1.8 2007-09-19 19:20:17 colonna Exp $ *)


(** {3 The Functions to translate Nomenclature to Atom_keypdb_t.} *)

val atom_keypdb_of_path : Atom_keypdb_t.atom_keypdb -> 
  Atom_keypdb_t.atom_keypdb 
;;
(** [let k = atom_keypdb_of_path n;;]
    
    [n] is the [path] of a [atom_pdb].
    [k] is its [atom_keypdb]. *)

(** {6 The Functions to translate Nomenclature to Atom_name_pdb_t.} *)

val atom_name_pdb_of_path : Atom_keypdb_t.atom_keypdb ->
  Atom_name_pdb_t.atom_name_pdb
;;
(** [let a = atom_name_pdb_of_path n;;]

    [n] is the [path] of a [atom_pdb].
    [a] is its [atom_name_pdb] triplet. *)
(** {6 The Functions to translate Nomenclature to Residue_pdb_t_key.} *)

val residue_keypdb_in_chain_of_path : Atom_keypdb_t.atom_keypdb ->
    Atom_keypdb_t.atom_keypdb
;;
(** There is no reference, in its path, to the residue it belongs to, 
    if an atom or a group is "in_chain"; because it is directly bound to 
    the polypeptidic chain either at the Nterminal or at the Cterminal.
    This function gets the lacking residue information to produce 
    the atom_keypdb. *)
 
(** {6 The Functions to translate Nomenclature to Aminoacid_symbol_pdb_t.} *)

val aminoacid_symbol_pdb_of_path : Atom_keypdb_t.atom_keypdb ->
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;


(** {3 The Functions to translate Nomenclature to Protein_pdb_t.} *)

val protein_sequence_of_sequence_pdb : Sequence_pdb_t.sequence_pdb -> 
  Protein.protein_sequence
;;
val sequence_pdb_of_protein_sequence : Path_t.protein_sequence -> 
   Sequence_pdb_t.sequence_pdb
;;

(** converts each Chain.chain_sequence into Polypeptide_pdb_t.polypeptide_sequence_pdb . 
    raises No_such_amino_acid if conversion is impossible. *)
val protein_formula_of_sequence_pdb : Sequence_pdb_t.sequence_pdb -> 
  Protein_symbol_t.protein_formula
;; 

 val polypeptide_sequence_pdb_of_molecule_symbol : Path_t.molecule_symbol -> 
   Polypeptide_pdb_t.polypeptide_sequence_pdb
;;
(** [let q = of_molecule_symbol s;;]

    [s] is the [molecule_symbol] element in a [protein_path] 
    [q] is the [polypeptide_pdb] included in [s]. *)

val polypeptide_formula_pdb_of_protein_symbol : Path_t.protein_symbol -> 
Polypeptide_pdb_t.polypeptide_formula_pdb
;;
(** [let q = of_molecule_symbol s;;]

    [s] is the [molecule_symbol] element in a [protein_path] 
    [q] is the [polypeptide_pdb] included in [s]. *)

val protein_sequence_of_polypeptide_sequence_pdb : Polypeptide_pdb_t.polypeptide_sequence_pdb -> 
  Path_t.protein_sequence
;; 

val sequence_of_polypeptide_sequence_pdb : Polypeptide_pdb_t.polypeptide_sequence_pdb -> 
  Path_t.protein_sequence
;; 

val residue_pdb_nth_of_path : int -> Atom_keypdb_t.atom_keypdb ->  
  Residue_pdb_t.residue_pdb
  
(** [let r = aminoacid_pdb_nth_of_formula_pdb i s;;]

    [i] is residue_pdb number which starts at 1.
    [n] is a [path].
    [r] is the nth [residue_pdb] defined by [n].

    Fails if n is < 1.  *)

val id_pdb_of_path : Atom_keypdb_t.atom_keypdb -> Header_pdb_t.id_pdb
;;
(** [let i = id_pdb_of_path n;;]

    [n] is a [path].
    [i] is the Protein [id_pdb] extract from [n] 
    or raises Not_found. *)

val aminoacid_symbol_pdb_nth_of_path : int -> Atom_keypdb_t.atom_keypdb ->
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;
(** [let a = aminoacid_symbol_pdb_nth_of_path i n;;]

    [i] is the position of a [aminoacid_symbol_pdb] in [protein_sequence] (starts at 1).
    [n] is a [path].
    [a] is the ith [aminoacid_pdb] of the [protein_sequence] extracted for [n]. 

    Fails if n is < 1.  *)

val cter_aminoacid_symbol_pdb_of_path : Atom_keypdb_t.atom_keypdb ->
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val nter_aminoacid_symbol_pdb_of_path : Atom_keypdb_t.atom_keypdb ->
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

val path_of_protein_sequence_pdb : int -> Protein_pdb_t.protein_sequence_pdb -> 
  Atom_keypdb_t.atom_keypdb
;;
(** [let n = path_of_protein_sequence_pdb i s;;]

    [i] is the index of the protein in a higher structure of the system. 
    [s] is the [protein_sequence_pdb] ( array of [Residue_pdb_t.symbol] ) of the protein.
    [n] is the [path] of the protein. *)

val path_of_string_array : int -> string array -> Atom_keypdb_t.atom_keypdb
;;
(** [let n = path_of_string_array i a;;]

    [i] is the index of the protein in a higher structure of the system.  
    [a] is the string representation of the [sequence].
    [n] is the [path] of the protein.

    Each residue name is defined by 3 characters of any case.
 
    Example: "GlY ALa" gives the peptide Gly-Ala. *)

val protein_sequence_of_polypeptide_pdb : Polypeptide_pdb_t.polypeptide_pdb -> 
   Path_t.protein_sequence 
;;
(** converts each [residue_pdb] of [polypeptide_pdb] into an [Aminoacid_symbol_t.aminoacid_symbol]. 
    raises No_such_amino_acid if conversion is impossible. *)

val file_name_pdb_of_path : Atom_keypdb_t.atom_keypdb ->
  File_format_t.file_name_pdb
;; 

