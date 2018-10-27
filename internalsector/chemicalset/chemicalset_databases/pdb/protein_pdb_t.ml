(* $Id: protein_pdb.mli,v 1.6 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 A protein as described in a Pdb file.} *)

type protein_pdb = {
    protein_keypdb : Keypdb_t.keypdb;
    content : Polypeptide_pdb_t.polypeptide_pdb array;
}
(** It is not a molecule it is an [array] of molecules its [polypeptide_pdb].
    It contains at least one chain. *)

type protein_name_pdb = Header_pdb_t.protein_name_pdb
;;
(** It is the chemical name given in the HEADER record. 
    It is not able to define the Protein.
    The [id_pdb] is only able to define it. *)

type protein_formula_pdb = 
    Polypeptide_pdb_t.polypeptide_formula_pdb array
;;

type protein_sequence_pdb = 
    Polypeptide_pdb_t.polypeptide_sequence_pdb array
;;

