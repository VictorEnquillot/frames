(* $Id: Exp $ *)

(** {3 The Functions to handle Residue Key of the Pdb} *)

(** {6 Making from ATOM Record.} *)

val residue_level_keypdb_of_recordpdb_atom : Recordpdb_atom_t.recordpdb_atom ->
  Keypdb_t.key_level_pdb 
;;

val residue_partial_keypdb_of_recordpdb_atom : 
    Recordpdb_atom_t.recordpdb_atom -> Keypdb_t.keypdb
;;

(** {6 Making from Atom Path.} *)
val insertion_index_pdb_of_vertebra_index : int -> 
  Index_pdb_t.insertion_index_pdb
;;

val residue_canonical_index_pdb_of_vertebra_index : int -> 
  Keypdb_t.residue_canonical_index_pdb
;;

val residue_level_keypdb_of_nterminal_head_path : Path_t.path ->
  Keypdb_t.key_level_pdb 
;;

val residue_level_keypdb_of_nterminal_sidechain_path :  Path_t.path ->
  Keypdb_t.key_level_pdb 
;;

val residue_level_keypdb_of_sidechain_path : Path_t.path ->
  Keypdb_t.key_level_pdb 
;;

val residue_level_keypdb_of_block_level_of_capeptide_path : Path_t.level -> 
  Path_t.path -> Keypdb_t.key_level_pdb 
;;

(** {9 Printings.} *)

val print : Format.formatter -> Keypdb_t.keypdb -> unit
;;
 
val string_of_residue_keypdb : Keypdb_t.keypdb -> string
;;

