(** {3 The Symbol functionalities for a Residuepdb.} *)

(** {6 Converting.} *)

val name :
    Residuepdb_symbol_t.residuepdb_symbol ->
      string
;;

val print : Format.formatter ->
    Residuepdb_symbol_t.residuepdb_symbol ->
      unit
;;

val compare :
    Residuepdb_symbol_t.residuepdb_symbol ->
      Residuepdb_symbol_t.residuepdb_symbol ->
	int
;;

(** {6 Making.} *)

val residuepdb_symbol_list : unit ->
  Residuepdb_symbol_t.residuepdb_symbol list
;;

val residuepdb_symbol_of_string :
    string ->
      Residuepdb_symbol_t.residuepdb_symbol
;;

val make :
    string ->
      Residuepdb_symbol_t.residuepdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Residuepdb_symbol_t.residuepdb_symbol
;;

(** {6 Abbreviating.} *)

val ala : Residuepdb_symbol_t.residuepdb_symbol;;
val arg : Residuepdb_symbol_t.residuepdb_symbol;;
val asn : Residuepdb_symbol_t.residuepdb_symbol;;
val asp : Residuepdb_symbol_t.residuepdb_symbol;;
val cys : Residuepdb_symbol_t.residuepdb_symbol;;
val gln : Residuepdb_symbol_t.residuepdb_symbol;;
val glu : Residuepdb_symbol_t.residuepdb_symbol;;
val gly : Residuepdb_symbol_t.residuepdb_symbol;;
val his : Residuepdb_symbol_t.residuepdb_symbol;;
val ile : Residuepdb_symbol_t.residuepdb_symbol;;
val leu : Residuepdb_symbol_t.residuepdb_symbol;;
val lys : Residuepdb_symbol_t.residuepdb_symbol;;
val met : Residuepdb_symbol_t.residuepdb_symbol;;
val phe : Residuepdb_symbol_t.residuepdb_symbol;;
val pro : Residuepdb_symbol_t.residuepdb_symbol;;
val ser : Residuepdb_symbol_t.residuepdb_symbol;;
val thr : Residuepdb_symbol_t.residuepdb_symbol;;
val trp : Residuepdb_symbol_t.residuepdb_symbol;;
val tyr : Residuepdb_symbol_t.residuepdb_symbol;;
val v_l : Residuepdb_symbol_t.residuepdb_symbol;;

