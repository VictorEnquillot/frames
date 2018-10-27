(** {3 The functionalities for a Symbol Formula for a DBREF Record of a Pdb file.} *)

(** {6 Making.} *)

val make :
  unit ->
    Dbref_recordpdb_symbol_formula_t.dbref_recordpdb_symbol_formula
;;

(** {6 Converting.} *)

val name :
  Dbref_recordpdb_symbol_formula_t.dbref_recordpdb_symbol_formula ->
     string
;;

val print : Format.formatter ->
  Dbref_recordpdb_symbol_formula_t.dbref_recordpdb_symbol_formula ->
     unit
;;
