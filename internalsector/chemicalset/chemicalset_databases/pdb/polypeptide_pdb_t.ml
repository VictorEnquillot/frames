(* $Id: sequence_pdb.mli,v 1.7 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 A polypeptidic chain of Residue_pdb_v.} *)

(** A Chain is a Molecule made of a Polypeptidic chain.
    A Protein is made of one or several chains packed together.
    A Polypeptide_pdb_t is made of residue_pdb. *)

(** {6 Types} *)

type polypeptide_pdb = {
    polypeptide_keypdb : Keypdb_t.keypdb;
    polypeptide_sequence_pdb : polypeptide_sequence_pdb;
}

and polypeptide_sequence_pdb = Residue_pdb_t.residue_pdb array
(** It is an array of [residue_pdb] for one polypeptidic chain.
    obtained from each SEQRES record (sub_sequence_pdb). *)

type polypeptide_symbol_pdb = Polypeptide_symbol_t.polypeptide_symbol
;;
(** Example: Chain A has symbol `(A, [|Gly; Ala; Pro|])'. *)

type polypeptide_formula_pdb = Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb array
;;
