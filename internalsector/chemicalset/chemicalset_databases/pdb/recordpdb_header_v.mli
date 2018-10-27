(* $Id: Exp $ *)

(** {3 Functions on HEADER Record of a Pdb File} *)

val get_current_word : string -> Fieldpdb_symbol_t.fieldpdb_symbol ->
  string 
;;

val header_record_of_string : string -> Recordpdb_header_t.header_record
;;
(** Extract information from a string to fill a header_record.
    Raises "Not_header_record" if string is not a HEADER representaion. *)

val string_of_header_record : Recordpdb_header_t.header_record -> string
;;

