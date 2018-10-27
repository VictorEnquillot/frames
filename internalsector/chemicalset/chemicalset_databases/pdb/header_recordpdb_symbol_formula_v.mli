(** {3 The functionalities for a Symbol Formula for an HEADER field in a Pdb file record.} *)

val make : 
    unit ->
      Header_recordpdb_symbol_formula_t.header_recordpdb_symbol_formula
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

val name : 
    Header_recordpdb_symbol_formula_t.header_recordpdb_symbol_formula ->
  string
;;

val print : Format.formatter ->
  Header_recordpdb_symbol_formula_t.header_recordpdb_symbol_formula ->
    unit
;;
