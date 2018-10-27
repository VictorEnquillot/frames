(** {3 A Symbol for a Box.} *)


let name :
  Box_symbol_t.box_symbol ->
    string
;;


val print : Format.Formatter ->
  Box_symbol_t.box_symbol ->
    unit
;;


(** {6 Extracting.} *)

val box_symbol_off_protein_symbol :
  Box_symbol_t.box_symbol ->
    Prs_v
;;


(** {6 Querying.} *)

val is_box_symbol_off_protein_symbol :
  Box_symbol_t.box_symbol ->
    bool
;;


(** {6 Upgrading.} *)


val box_symbol_of_protein_symbol :
  Protein_symbol_t.protein_symbol ->
    Bxs_v
;;

val Acg : Box_symbol_t.box_symbol;;

val Adh : Box_symbol_t.box_symbol;;

val Agagag : Box_symbol_t.box_symbol;;

val Agc : Box_symbol_t.box_symbol;;

val Agg : Box_symbol_t.box_symbol;;

val Agp : Box_symbol_t.box_symbol;;

val Gac : Box_symbol_t.box_symbol;;

val Gap : Box_symbol_t.box_symbol;;

val Ggg : Box_symbol_t.box_symbol;;

val Ggacgg : Box_symbol_t.box_symbol;;

val Ggaggg : Box_symbol_t.box_symbol;;

val Gagaga : Box_symbol_t.box_symbol;;

val Mhb : Box_symbol_t.box_symbol;;

val Pac : Box_symbol_t.box_symbol;;

val Pag : Box_symbol_t.box_symbol;;

val Pgk : Box_symbol_t.box_symbol;;

val Pti : Box_symbol_t.box_symbol;;

val Sac : Box_symbol_t.box_symbol;;

val Tab : Box_symbol_t.box_symbol;;

val Try : Box_symbol_t.box_symbol;;

val Frompdbid string  : Box_symbol_t.box_symbol;;



(** created by ./generator box v symbol at 9:28 26 Apr 2011. *)



