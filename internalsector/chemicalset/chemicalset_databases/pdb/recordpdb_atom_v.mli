(* $Id: Exp $ *)

(** {3 Functions on ATOM Record of a Pdb File} *)

val get_current_word : string -> Fieldpdb_symbol_t.fieldpdb_symbol ->
  string 
;;

val atom_record_of_string : string -> Recordpdb_atom_t.recordpdb_atom
;;
(** Extract information from a string to fill a recordpdb_atom.
    Raises "Not_atom_record" if string is not a ATOM representaion. *)

val string_of_atom_record : Recordpdb_atom_t.recordpdb_atom -> string
;;

