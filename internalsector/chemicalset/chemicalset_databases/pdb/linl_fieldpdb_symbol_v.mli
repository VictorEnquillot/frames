(** {3 The functionalities for a Symbol for a Field in a LINL Record of a Pdb file.} *)

(** {6 Abbreviating.} *)


(** {6 Converting.} *)

val string_of_linl_fieldpdb_symbol :
  Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
       string
;;

val name :
  Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
       unit
;;
