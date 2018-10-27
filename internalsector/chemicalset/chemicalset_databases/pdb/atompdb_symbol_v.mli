(** {3 The Symbol functionalities for a Atompdb.} *)

(** {6 Converting.} *)

val name :
    Atompdb_symbol_t.atompdb_symbol ->
      string
;;

val print : Format.formatter ->
    Atompdb_symbol_t.atompdb_symbol ->
      unit
;;

val compare :
    Atompdb_symbol_t.atompdb_symbol ->
      Atompdb_symbol_t.atompdb_symbol ->
	int
;;

(** {6 Making.} *)

val atompdb_symbol_list : unit ->
  Atompdb_symbol_t.atompdb_symbol list
;;

val atompdb_symbol_of_string :
    string ->
      Atompdb_symbol_t.atompdb_symbol
;;

val make :
    string ->
      Atompdb_symbol_t.atompdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Atompdb_symbol_t.atompdb_symbol
;;

(** {6 Abbreviating.} *)

val c : Atompdb_symbol_t.atompdb_symbol;;
val c1p : Atompdb_symbol_t.atompdb_symbol;;
val c2 : Atompdb_symbol_t.atompdb_symbol;;
val c2p : Atompdb_symbol_t.atompdb_symbol;;
val c3p : Atompdb_symbol_t.atompdb_symbol;;
val c4 : Atompdb_symbol_t.atompdb_symbol;;
val c4p : Atompdb_symbol_t.atompdb_symbol;;
val c5 : Atompdb_symbol_t.atompdb_symbol;;
val c5p : Atompdb_symbol_t.atompdb_symbol;;
val c6 : Atompdb_symbol_t.atompdb_symbol;;
val c7 : Atompdb_symbol_t.atompdb_symbol;;
val c8 : Atompdb_symbol_t.atompdb_symbol;;
val ca : Atompdb_symbol_t.atompdb_symbol;;
val cb : Atompdb_symbol_t.atompdb_symbol;;
val cd : Atompdb_symbol_t.atompdb_symbol;;
val cd1 : Atompdb_symbol_t.atompdb_symbol;;
val cd2 : Atompdb_symbol_t.atompdb_symbol;;
val ce : Atompdb_symbol_t.atompdb_symbol;;
val ce1 : Atompdb_symbol_t.atompdb_symbol;;
val ce2 : Atompdb_symbol_t.atompdb_symbol;;
val ce3 : Atompdb_symbol_t.atompdb_symbol;;
val cg : Atompdb_symbol_t.atompdb_symbol;;
val cg1 : Atompdb_symbol_t.atompdb_symbol;;
val cg2 : Atompdb_symbol_t.atompdb_symbol;;
val ch2 : Atompdb_symbol_t.atompdb_symbol;;
val cz : Atompdb_symbol_t.atompdb_symbol;;
val cz2 : Atompdb_symbol_t.atompdb_symbol;;
val cz3 : Atompdb_symbol_t.atompdb_symbol;;
val h : Atompdb_symbol_t.atompdb_symbol;;
val h1 : Atompdb_symbol_t.atompdb_symbol;;
val h2 : Atompdb_symbol_t.atompdb_symbol;;
val h3 : Atompdb_symbol_t.atompdb_symbol;;
val ha : Atompdb_symbol_t.atompdb_symbol;;
val ha2 : Atompdb_symbol_t.atompdb_symbol;;
val ha3 : Atompdb_symbol_t.atompdb_symbol;;
val hb : Atompdb_symbol_t.atompdb_symbol;;
val hb1 : Atompdb_symbol_t.atompdb_symbol;;
val hb2 : Atompdb_symbol_t.atompdb_symbol;;
val hb3 : Atompdb_symbol_t.atompdb_symbol;;
val hd1 : Atompdb_symbol_t.atompdb_symbol;;
val hd11 : Atompdb_symbol_t.atompdb_symbol;;
val hd12 : Atompdb_symbol_t.atompdb_symbol;;
val hd13 : Atompdb_symbol_t.atompdb_symbol;;
val hd2 : Atompdb_symbol_t.atompdb_symbol;;
val hd21 : Atompdb_symbol_t.atompdb_symbol;;
val hd22 : Atompdb_symbol_t.atompdb_symbol;;
val hd23 : Atompdb_symbol_t.atompdb_symbol;;
val hd3 : Atompdb_symbol_t.atompdb_symbol;;
val he : Atompdb_symbol_t.atompdb_symbol;;
val he1 : Atompdb_symbol_t.atompdb_symbol;;
val he2 : Atompdb_symbol_t.atompdb_symbol;;
val he21 : Atompdb_symbol_t.atompdb_symbol;;
val he22 : Atompdb_symbol_t.atompdb_symbol;;
val he3 : Atompdb_symbol_t.atompdb_symbol;;
val hg : Atompdb_symbol_t.atompdb_symbol;;
val hg1 : Atompdb_symbol_t.atompdb_symbol;;
val hg11 : Atompdb_symbol_t.atompdb_symbol;;
val hg12 : Atompdb_symbol_t.atompdb_symbol;;
val hg13 : Atompdb_symbol_t.atompdb_symbol;;
val hg2 : Atompdb_symbol_t.atompdb_symbol;;
val hg21 : Atompdb_symbol_t.atompdb_symbol;;
val hg22 : Atompdb_symbol_t.atompdb_symbol;;
val hg23 : Atompdb_symbol_t.atompdb_symbol;;
val hg3 : Atompdb_symbol_t.atompdb_symbol;;
val hh : Atompdb_symbol_t.atompdb_symbol;;
val hh11 : Atompdb_symbol_t.atompdb_symbol;;
val hh12 : Atompdb_symbol_t.atompdb_symbol;;
val hh21 : Atompdb_symbol_t.atompdb_symbol;;
val hh22 : Atompdb_symbol_t.atompdb_symbol;;
val hz : Atompdb_symbol_t.atompdb_symbol;;
val hz1 : Atompdb_symbol_t.atompdb_symbol;;
val hz2 : Atompdb_symbol_t.atompdb_symbol;;
val hz3 : Atompdb_symbol_t.atompdb_symbol;;
val n : Atompdb_symbol_t.atompdb_symbol;;
val n1 : Atompdb_symbol_t.atompdb_symbol;;
val n2 : Atompdb_symbol_t.atompdb_symbol;;
val n3 : Atompdb_symbol_t.atompdb_symbol;;
val n4 : Atompdb_symbol_t.atompdb_symbol;;
val n6 : Atompdb_symbol_t.atompdb_symbol;;
val n7 : Atompdb_symbol_t.atompdb_symbol;;
val n9 : Atompdb_symbol_t.atompdb_symbol;;
val nd1 : Atompdb_symbol_t.atompdb_symbol;;
val nd2 : Atompdb_symbol_t.atompdb_symbol;;
val ne : Atompdb_symbol_t.atompdb_symbol;;
val ne1 : Atompdb_symbol_t.atompdb_symbol;;
val ne2 : Atompdb_symbol_t.atompdb_symbol;;
val nh1 : Atompdb_symbol_t.atompdb_symbol;;
val nh2 : Atompdb_symbol_t.atompdb_symbol;;
val nz : Atompdb_symbol_t.atompdb_symbol;;
val o : Atompdb_symbol_t.atompdb_symbol;;
val o2 : Atompdb_symbol_t.atompdb_symbol;;
val o2p : Atompdb_symbol_t.atompdb_symbol;;
val o3p : Atompdb_symbol_t.atompdb_symbol;;
val o4 : Atompdb_symbol_t.atompdb_symbol;;
val o4p : Atompdb_symbol_t.atompdb_symbol;;
val o5p : Atompdb_symbol_t.atompdb_symbol;;
val o6 : Atompdb_symbol_t.atompdb_symbol;;
val od1 : Atompdb_symbol_t.atompdb_symbol;;
val od2 : Atompdb_symbol_t.atompdb_symbol;;
val oe1 : Atompdb_symbol_t.atompdb_symbol;;
val oe2 : Atompdb_symbol_t.atompdb_symbol;;
val og : Atompdb_symbol_t.atompdb_symbol;;
val og1 : Atompdb_symbol_t.atompdb_symbol;;
val oh : Atompdb_symbol_t.atompdb_symbol;;
val op1 : Atompdb_symbol_t.atompdb_symbol;;
val op2 : Atompdb_symbol_t.atompdb_symbol;;
val oxt : Atompdb_symbol_t.atompdb_symbol;;
val p : Atompdb_symbol_t.atompdb_symbol;;
val sd : Atompdb_symbol_t.atompdb_symbol;;
val sg : Atompdb_symbol_t.atompdb_symbol;;

