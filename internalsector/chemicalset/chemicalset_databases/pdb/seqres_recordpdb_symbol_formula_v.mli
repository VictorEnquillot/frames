(** {3 The functionalities for a Symbol Formula for an SEQRES field in a Pdb file record.} *)

val make : 
    unit ->
      Seqres_recordpdb_symbol_formula_t.seqres_recordpdb_symbol_formula
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

val name : 
    Seqres_recordpdb_symbol_formula_t.seqres_recordpdb_symbol_formula ->
  string
;;

val print : Format.formatter ->
  Seqres_recordpdb_symbol_formula_t.seqres_recordpdb_symbol_formula ->
    unit
;;
