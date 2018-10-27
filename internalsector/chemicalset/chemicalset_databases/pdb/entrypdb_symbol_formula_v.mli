(** {3 The functionalities for a Symbol Formula for an Entry of the Pdb} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
    
    A entry contains Sections organized in a well defined list order.
*)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Entrypdb_symbol_formula_t.entrypdb_symbol_formula
;;	

(** {6 Iterating.} *)

val map : 
    (Sectionpdb_symbol_t.sectionpdb_symbol -> 'a) ->
      Entrypdb_symbol_formula_t.entrypdb_symbol_formula ->
	'a list
;;

(** {6 Extracting.} *)

val sectionpdb_symbol_list_off_entrypdb_symbol_formula :
    Entrypdb_symbol_formula_t.entrypdb_symbol_formula ->
      Sectionpdb_symbol_t.sectionpdb_symbol list
;;

val sectionpdb_symbol_list_off_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Sectionpdb_symbol_t.sectionpdb_symbol list
;;

val clusterpdb_symbol_list_off_entrypdb_symbol_formula :
    Entrypdb_symbol_formula_t.entrypdb_symbol_formula ->
      Clusterpdb_symbol_t.clusterpdb_symbol list
;;

val clusterpdb_symbol_list_off_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Clusterpdb_symbol_t.clusterpdb_symbol list
;;
