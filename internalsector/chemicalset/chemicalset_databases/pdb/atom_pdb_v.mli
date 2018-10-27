(* $Id: atom_pdbs.mli,v 1.8 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 The Functions to handle Atom Particles of the Pdb} *)

(* TODO record_atom -> Atom_pdb_t.atom_pdb *)

(** {6 Making.} *)

val atom_pdb_of_recordpdb_atom : Recordpdb_atom_t.recordpdb_atom -> 
  Atom_pdb_t.atom_pdb
;;  

(** {6 Extracting.} *)

(** {6 Printing.} *)

val print : Format.formatter -> Atom_pdb_t.atom_pdb -> unit
;;

