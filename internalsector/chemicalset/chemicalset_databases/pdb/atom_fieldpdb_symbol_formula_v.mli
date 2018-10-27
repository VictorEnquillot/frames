(** {3 The functionalities for a Symbol Formula for a Field in a ATOM Record of a Pdb file.} *)

(** {6 Making.} *)

val make :
  unit ->
    Atom_fieldpdb_symbol_formula_t.atom_fieldpdb_symbol_formula ->
;;

(** {6 Converting.} *)

val name :
  Atom_fieldpdb_symbol_formula_t.atom_fieldpdb_symbol_formula ->
     string
;;

val print : Format.formatter ->
  Atom_fieldpdb_symbol_formula_t.atom_fieldpdb_symbol_formula ->
     unit
;;
