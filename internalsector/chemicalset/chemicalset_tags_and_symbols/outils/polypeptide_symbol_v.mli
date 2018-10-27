(** {3 A Symbol for a Polypeptide.} *)


let name :
  Polypeptide_symbol_t.polypeptide_symbol ->
    string
;;


val print : Format.Formatter ->
  Polypeptide_symbol_t.polypeptide_symbol ->
    unit
;;


(** {6 Extracting.} *)

val polypeptide_symbol_off_polypeptide_regular_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Prs_v
;;

val polypeptide_symbol_off_polyproline_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Pps_v
;;

val polypeptide_symbol_off_polyglycine_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Pgs_v
;;


(** {6 Querying.} *)

val is_polypeptide_symbol_off_polypeptide_regular_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    bool
;;

val is_polypeptide_symbol_off_polyproline_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    bool
;;

val is_polypeptide_symbol_off_polyglycine_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val polypeptide_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Pds_v
;;

val Acg : Polypeptide_symbol_t.polypeptide_symbol;;

val Adh : Polypeptide_symbol_t.polypeptide_symbol;;

val Agagag : Polypeptide_symbol_t.polypeptide_symbol;;

val Agc : Polypeptide_symbol_t.polypeptide_symbol;;

val Agg : Polypeptide_symbol_t.polypeptide_symbol;;

val Agp : Polypeptide_symbol_t.polypeptide_symbol;;

val Gac : Polypeptide_symbol_t.polypeptide_symbol;;

val Gap : Polypeptide_symbol_t.polypeptide_symbol;;

val Ggg : Polypeptide_symbol_t.polypeptide_symbol;;

val Ggacgg : Polypeptide_symbol_t.polypeptide_symbol;;

val Ggaggg : Polypeptide_symbol_t.polypeptide_symbol;;

val Gagaga : Polypeptide_symbol_t.polypeptide_symbol;;

val Mhb : Polypeptide_symbol_t.polypeptide_symbol;;

val Pac : Polypeptide_symbol_t.polypeptide_symbol;;

val Pag : Polypeptide_symbol_t.polypeptide_symbol;;

val Pgk : Polypeptide_symbol_t.polypeptide_symbol;;

val Pti : Polypeptide_symbol_t.polypeptide_symbol;;

val Sac : Polypeptide_symbol_t.polypeptide_symbol;;

val Tab : Polypeptide_symbol_t.polypeptide_symbol;;

val Try : Polypeptide_symbol_t.polypeptide_symbol;;


val polypeptide_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Pds_v
;;

val polypeptide_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Pds_v
;;



(** created by ./generator polypeptide v symbol at 9:28 26 Apr 2011. *)



