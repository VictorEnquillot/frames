(** {3 A Symbol for a Protein.} *)


let name :
  Protein_symbol_t.protein_symbol ->
    string
;;


val print : Format.Formatter ->
  Protein_symbol_t.protein_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Acg : Protein_symbol_t.protein_symbol;;

val Adh : Protein_symbol_t.protein_symbol;;

val Agagag : Protein_symbol_t.protein_symbol;;

val Agc : Protein_symbol_t.protein_symbol;;

val Agg : Protein_symbol_t.protein_symbol;;

val Agp : Protein_symbol_t.protein_symbol;;

val Gac : Protein_symbol_t.protein_symbol;;

val Gap : Protein_symbol_t.protein_symbol;;

val Ggg : Protein_symbol_t.protein_symbol;;

val Ggacgg : Protein_symbol_t.protein_symbol;;

val Ggaggg : Protein_symbol_t.protein_symbol;;

val Gagaga : Protein_symbol_t.protein_symbol;;

val Mhb : Protein_symbol_t.protein_symbol;;

val Pac : Protein_symbol_t.protein_symbol;;

val Pag : Protein_symbol_t.protein_symbol;;

val Pgk : Protein_symbol_t.protein_symbol;;

val Pti : Protein_symbol_t.protein_symbol;;

val Sac : Protein_symbol_t.protein_symbol;;

val Tab : Protein_symbol_t.protein_symbol;;

val Try : Protein_symbol_t.protein_symbol;;

val Frompdbid string  : Protein_symbol_t.protein_symbol;;



(** created by ./generator protein v symbol at 9:28 26 Apr 2011. *)



