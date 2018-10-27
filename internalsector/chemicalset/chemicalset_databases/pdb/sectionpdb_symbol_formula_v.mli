(** {3 The functionalities for a Symbol Formula for an Section of the Pdb} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
    
    A section contains Sections organized in a well defined list order.
*)

(** {6 Making.} *)

val make :
    Sectionpdb_symbol_t.sectionpdb_symbol ->
      Sectionpdb_symbol_formula_t.sectionpdb_symbol_formula
;;	

(** {6 Extracting.} *)

val clusterpdb_symbol_list_off_sectionpdb_symbol_formula :
    Sectionpdb_symbol_formula_t.sectionpdb_symbol_formula ->
      Clusterpdb_symbol_t.clusterpdb_symbol list
;;

val clusterpdb_symbol_list_off_sectionpdb_symbol :
    Sectionpdb_symbol_t.sectionpdb_symbol ->
      Clusterpdb_symbol_t.clusterpdb_symbol list
;;
