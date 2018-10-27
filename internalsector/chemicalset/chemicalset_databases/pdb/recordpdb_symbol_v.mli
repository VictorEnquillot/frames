(** {3 The Symbol functionnalities for a Record of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    string ->
    Recordpdb_symbol_t.recordpdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf -> 
      Recordpdb_symbol_t.recordpdb_symbol
;;

(** {6 Converting.} *)

val name : 
    Recordpdb_symbol_t.recordpdb_symbol ->
      string
;;

val chain_idpdb_column_list_of_recordpdb_symbol :
    Recordpdb_symbol_t.recordpdb_symbol ->
      Ordinal_p.ordinal list
;;

val compare :
    Recordpdb_symbol_t.recordpdb_symbol ->
      Recordpdb_symbol_t.recordpdb_symbol ->
	int
;;

(** {6 Abbreviating.} *)

val master : Recordpdb_symbol_t.recordpdb_symbol;;
val end_ : Recordpdb_symbol_t.recordpdb_symbol;;
val conect : Recordpdb_symbol_t.recordpdb_symbol;;
val ssbond : Recordpdb_symbol_t.recordpdb_symbol;;
val link : Recordpdb_symbol_t.recordpdb_symbol;;
val cispep : Recordpdb_symbol_t.recordpdb_symbol;;
val model : Recordpdb_symbol_t.recordpdb_symbol;;
val atom : Recordpdb_symbol_t.recordpdb_symbol;;
val anisou : Recordpdb_symbol_t.recordpdb_symbol;;
val ter : Recordpdb_symbol_t.recordpdb_symbol;;
val hetatm : Recordpdb_symbol_t.recordpdb_symbol;;
val endmdl : Recordpdb_symbol_t.recordpdb_symbol;;
val origx1 : Recordpdb_symbol_t.recordpdb_symbol;;
val origx2 : Recordpdb_symbol_t.recordpdb_symbol;;
val origx3 : Recordpdb_symbol_t.recordpdb_symbol;;
val scale1 : Recordpdb_symbol_t.recordpdb_symbol;;
val scale2 : Recordpdb_symbol_t.recordpdb_symbol;;
val scale3 : Recordpdb_symbol_t.recordpdb_symbol;;
val mtrix1 : Recordpdb_symbol_t.recordpdb_symbol;;
val mtrix2 : Recordpdb_symbol_t.recordpdb_symbol;;
val mtrix3 : Recordpdb_symbol_t.recordpdb_symbol;;
val cryst1 : Recordpdb_symbol_t.recordpdb_symbol;;
val het : Recordpdb_symbol_t.recordpdb_symbol;;
val hetnam : Recordpdb_symbol_t.recordpdb_symbol;;
val hetsyn : Recordpdb_symbol_t.recordpdb_symbol;;
val formul : Recordpdb_symbol_t.recordpdb_symbol;;
val site : Recordpdb_symbol_t.recordpdb_symbol;;
val dbref : Recordpdb_symbol_t.recordpdb_symbol;;
val dbref1 : Recordpdb_symbol_t.recordpdb_symbol;;
val dbref2 : Recordpdb_symbol_t.recordpdb_symbol;;
val seqadv : Recordpdb_symbol_t.recordpdb_symbol;;
val seqres : Recordpdb_symbol_t.recordpdb_symbol;;
val modres : Recordpdb_symbol_t.recordpdb_symbol;;
val helix : Recordpdb_symbol_t.recordpdb_symbol;;
val sheet : Recordpdb_symbol_t.recordpdb_symbol;;
val header : Recordpdb_symbol_t.recordpdb_symbol;;
val obslte : Recordpdb_symbol_t.recordpdb_symbol;;
val title : Recordpdb_symbol_t.recordpdb_symbol;;
val split : Recordpdb_symbol_t.recordpdb_symbol;;
val caveat : Recordpdb_symbol_t.recordpdb_symbol;;
val compnd : Recordpdb_symbol_t.recordpdb_symbol;;
val source : Recordpdb_symbol_t.recordpdb_symbol;;
val keywds : Recordpdb_symbol_t.recordpdb_symbol;;
val expdta : Recordpdb_symbol_t.recordpdb_symbol;;
val author : Recordpdb_symbol_t.recordpdb_symbol;;
val revdat : Recordpdb_symbol_t.recordpdb_symbol;;
val sprsde : Recordpdb_symbol_t.recordpdb_symbol;;
val jrnl : Recordpdb_symbol_t.recordpdb_symbol;;
val remark : Recordpdb_symbol_t.recordpdb_symbol;;
