(** {3 The functionalities for a Symbol Formula for an TER field in a Pdb file record.} *)

val make : 
    unit ->
      Ter_recordpdb_symbol_formula_t.ter_recordpdb_symbol_formula
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

val name : 
    Ter_recordpdb_symbol_formula_t.ter_recordpdb_symbol_formula ->
  string
;;

val print : Format.formatter ->
  Ter_recordpdb_symbol_formula_t.ter_recordpdb_symbol_formula ->
    unit
;;
