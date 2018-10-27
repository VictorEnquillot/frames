(** {3 The functionalities for a Symbol Formula for an Entry of the Pdb} *)

(** {6 Making.} *)

val make :
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      Clusterpdb_symbol_formula_t.clusterpdb_symbol_formula
;;	

(** {6 Iterating.} *)

val map : 
    (Recordpdb_symbol_t.recordpdb_symbol -> 'a) ->
      Clusterpdb_symbol_formula_t.clusterpdb_symbol_formula ->
	'a list
;;

(** {6 Extracting.} *)

val recordpdb_symbol_list_off_clusterpdb_symbol_formula :
    Clusterpdb_symbol_formula_t.clusterpdb_symbol_formula ->
      Recordpdb_symbol_t.recordpdb_symbol list
;;

val recordpdb_symbol_list_off_clusterpdb_symbol :
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      Recordpdb_symbol_t.recordpdb_symbol list
;;
