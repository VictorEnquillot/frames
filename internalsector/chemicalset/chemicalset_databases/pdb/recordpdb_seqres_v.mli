(* $Id: Exp $ *)

(** {3 Functions on SEQRES Record of a Pdb File} *)

val get_current_word : string -> Fieldpdb_symbol_t.fieldpdb_symbol ->
  string 
;;

val seqres_record_of_string : string -> Recordpdb_seqres_t.recordpdb_seqres
;;
(** Extract information from a string to fill a recordpdb_seqres.
    Raises "Not_seqres_record" if string is not a SEQRES representaion. *)

