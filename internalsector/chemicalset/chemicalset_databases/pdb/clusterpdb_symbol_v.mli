(** {3 The Symbol functionnalities for a Pack of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    string ->
    Clusterpdb_symbol_t.clusterpdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf -> 
      Clusterpdb_symbol_t.clusterpdb_symbol
;;

(** {6 Converting.} *)

val recordpdb_symbol_of_clusterpdb_symbol :
   Clusterpdb_symbol_t.clusterpdb_symbol ->
   Recordpdb_symbol_t.recordpdb_symbol
;;

val name : 
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      string
;;

val print : Format.formatter -> 
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      unit
;;

(** {6 Querying.} *)

val compare :
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      Clusterpdb_symbol_t.clusterpdb_symbol ->
	int 
;;

(** {6 Abbreviating.} *)

val master : Clusterpdb_symbol_t.clusterpdb_symbol;;
val end_ : Clusterpdb_symbol_t.clusterpdb_symbol;;
val conect : Clusterpdb_symbol_t.clusterpdb_symbol;;
val ssbond : Clusterpdb_symbol_t.clusterpdb_symbol;;
val link : Clusterpdb_symbol_t.clusterpdb_symbol;;
val cispep : Clusterpdb_symbol_t.clusterpdb_symbol;;
val model : Clusterpdb_symbol_t.clusterpdb_symbol;;
val atom : Clusterpdb_symbol_t.clusterpdb_symbol;;
val anisou : Clusterpdb_symbol_t.clusterpdb_symbol;;
val ter : Clusterpdb_symbol_t.clusterpdb_symbol;;
val hetatm : Clusterpdb_symbol_t.clusterpdb_symbol;;
val endmdl : Clusterpdb_symbol_t.clusterpdb_symbol;;
val origx1 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val origx2 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val origx3 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val scale1 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val scale2 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val scale3 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val mtrix1 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val mtrix2 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val mtrix3 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val cryst1 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val het : Clusterpdb_symbol_t.clusterpdb_symbol;;
val hetnam : Clusterpdb_symbol_t.clusterpdb_symbol;;
val hetsyn : Clusterpdb_symbol_t.clusterpdb_symbol;;
val formul : Clusterpdb_symbol_t.clusterpdb_symbol;;
val site : Clusterpdb_symbol_t.clusterpdb_symbol;;
val dbref : Clusterpdb_symbol_t.clusterpdb_symbol;;
val dbref1 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val dbref2 : Clusterpdb_symbol_t.clusterpdb_symbol;;
val seqadv : Clusterpdb_symbol_t.clusterpdb_symbol;;
val seqres : Clusterpdb_symbol_t.clusterpdb_symbol;;
val modres : Clusterpdb_symbol_t.clusterpdb_symbol;;
val helix : Clusterpdb_symbol_t.clusterpdb_symbol;;
val sheet : Clusterpdb_symbol_t.clusterpdb_symbol;;
val header : Clusterpdb_symbol_t.clusterpdb_symbol;;
val obslte : Clusterpdb_symbol_t.clusterpdb_symbol;;
val title : Clusterpdb_symbol_t.clusterpdb_symbol;;
val split : Clusterpdb_symbol_t.clusterpdb_symbol;;
val caveat : Clusterpdb_symbol_t.clusterpdb_symbol;;
val compnd : Clusterpdb_symbol_t.clusterpdb_symbol;;
val source : Clusterpdb_symbol_t.clusterpdb_symbol;;
val keywds : Clusterpdb_symbol_t.clusterpdb_symbol;;
val expdta : Clusterpdb_symbol_t.clusterpdb_symbol;;
val author : Clusterpdb_symbol_t.clusterpdb_symbol;;
val revdat : Clusterpdb_symbol_t.clusterpdb_symbol;;
val sprsde : Clusterpdb_symbol_t.clusterpdb_symbol;;
val jrnl : Clusterpdb_symbol_t.clusterpdb_symbol;;
val remark : Clusterpdb_symbol_t.clusterpdb_symbol;;
