(* $Id: Exp $ *)

val key_level_pdb_of_keypdb : Keypdb_t.keypdb -> Keypdb_t.key_level_pdb
;;

val key_symbol_pdb_of_keypdb : Keypdb_t.keypdb -> Keypdb_t.key_symbol_pdb
;;

val key_index_pdb_of_keypdb : Keypdb_t.keypdb -> Keypdb_t.key_index_pdb
;;

val key_upper_pdb_of_keypdb : Keypdb_t.keypdb -> Keypdb_t.keypdb
;;
(** returns the upper level [keypdb] of a [keypdb]. *)

(** {6 Making.} *)

val make_atom_level_keypdb : Path_t.level -> 
  Index_pdb_t.alternate_location_index_pdb -> Keypdb_t.key_level_pdb
;;

val atom_partial_keypdb_of_atom_pdb :  Atom_pdb_t.atom_pdb ->
  Keypdb_t.keypdb
;;

(** {6 Extracting.} *)

(** {6 Printing.} *)

val string_of_key_symbol_pdb : Keypdb_t.key_symbol_pdb -> string
;;

val print_key_symbol_pdb : Format.formatter -> Keypdb_t.key_symbol_pdb ->
  unit
;;

val print : Format.formatter -> Keypdb_t.keypdb -> unit
;;

val string_of_keypdb : Keypdb_t.keypdb -> string
;;
