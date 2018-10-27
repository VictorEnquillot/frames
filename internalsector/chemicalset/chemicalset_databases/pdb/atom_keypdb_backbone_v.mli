(* $Id : Exp $ *)

val atom_partial_keypdb_of_atom_path : Path_t.path -> Keypdb_t.keypdb
;;
(** translate Path to Pdb_partial_key *)

val block_level_keypdb_of_block_level_path : Path_t.level -> 
  Keypdb_t.key_level_pdb
;;
