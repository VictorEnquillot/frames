(* $Id: Exp $ *)
(** {3 The functions to manage a Atom_keypdb_t.} *)

(** {6 Making from ATOM Record.} *)

val atom_partial_keypdb_of_recordpdb_atom : 
    Recordpdb_atom_t.recordpdb_atom -> Keypdb_t.keypdb
;;
(** Partial_key levels stop at Residue Level included .*)

val atom_level_pdb_of_recordpdb_atom : Recordpdb_atom_t.recordpdb_atom ->
  Keypdb_t.key_level_pdb
;;

(** {6 Making from Atom Path.} *)

val atom_partial_keypdb_of_atom_path : Path_t.path -> Keypdb_t.keypdb
;;
(** Partial_key levels stop at Residue Level included .*)

(** {6 Printing.} *)

val print : Format.formatter -> Keypdb_t.keypdb -> unit
;;

