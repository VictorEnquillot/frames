(** {3 The Symbol functionalities for a Moleculepdb.} *)

(** {6 Converting.} *)

val name :
    Moleculepdb_symbol_t.moleculepdb_symbol ->
      string
;;

val print : Format.formatter ->
    Moleculepdb_symbol_t.moleculepdb_symbol ->
      unit
;;

val compare :
    Moleculepdb_symbol_t.moleculepdb_symbol ->
      Moleculepdb_symbol_t.moleculepdb_symbol ->
	int
;;

(** {6 Making.} *)

val moleculepdb_symbol_list : unit ->
  Moleculepdb_symbol_t.moleculepdb_symbol list
;;

val moleculepdb_symbol_of_string :
    string ->
      Moleculepdb_symbol_t.moleculepdb_symbol
;;

val make :
    string ->
      Moleculepdb_symbol_t.moleculepdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Moleculepdb_symbol_t.moleculepdb_symbol
;;

(** {6 Abbreviating.} *)
(* paste MOLECULEPDB_SYMBOLS moleculepdb_symbols | awk '{print "val "$2" : Moleculepdb_symbol_t.moleculepdb_symbol;;"}*)
val mps_3pg : Moleculepdb_symbol_t.moleculepdb_symbol;;
val mps_5ph : Moleculepdb_symbol_t.moleculepdb_symbol;;
val ace : Moleculepdb_symbol_t.moleculepdb_symbol;;
val atp : Moleculepdb_symbol_t.moleculepdb_symbol;;
val bru : Moleculepdb_symbol_t.moleculepdb_symbol;;
val cd : Moleculepdb_symbol_t.moleculepdb_symbol;;
val dms : Moleculepdb_symbol_t.moleculepdb_symbol;;
val dod : Moleculepdb_symbol_t.moleculepdb_symbol;;
val gol : Moleculepdb_symbol_t.moleculepdb_symbol;;
val hem : Moleculepdb_symbol_t.moleculepdb_symbol;;
val hoh : Moleculepdb_symbol_t.moleculepdb_symbol;;
val ipa : Moleculepdb_symbol_t.moleculepdb_symbol;;
val isp : Moleculepdb_symbol_t.moleculepdb_symbol;;
val mg : Moleculepdb_symbol_t.moleculepdb_symbol;;
val nad : Moleculepdb_symbol_t.moleculepdb_symbol;;
val nh2 : Moleculepdb_symbol_t.moleculepdb_symbol;;
val ntn : Moleculepdb_symbol_t.moleculepdb_symbol;;
val oxy : Moleculepdb_symbol_t.moleculepdb_symbol;;
val ped : Moleculepdb_symbol_t.moleculepdb_symbol;;
val po4 : Moleculepdb_symbol_t.moleculepdb_symbol;;
val sf4 : Moleculepdb_symbol_t.moleculepdb_symbol;;
val so4 : Moleculepdb_symbol_t.moleculepdb_symbol;;
val unk : Moleculepdb_symbol_t.moleculepdb_symbol;;
val unx : Moleculepdb_symbol_t.moleculepdb_symbol;;
val zn : Moleculepdb_symbol_t.moleculepdb_symbol;;
