(** {3 The Symbol functionnalities for a Pack of a Pdb Entry} *)

(** {6 Making.} *)

val make : 
    string ->
      Packpdb_symbol_t.packpdb_symbol
;;

val packpdb_symbol_off_recordpdb_string :
    string ->
      Packpdb_symbol_t.packpdb_symbol 
;;

val read :
  Scanf.Scanning.scanbuf ->
    Packpdb_symbol_t.packpdb_symbol 
;;

(** {6 Converting.} *)

val recordpdb_symbol_of_packpdb_symbol :
    Packpdb_symbol_t.packpdb_symbol ->
      Recordpdb_symbol_t.recordpdb_symbol 
;;

val name :
    Packpdb_symbol_t.packpdb_symbol ->
      string
;;

val print : Format.formatter ->
    Packpdb_symbol_t.packpdb_symbol ->
      unit
;;

(** {6 Abbreviating.} *)

val anisou : Packpdb_symbol_t.packpdb_symbol;;
val atom : Packpdb_symbol_t.packpdb_symbol;;
val author : Packpdb_symbol_t.packpdb_symbol;;
val caveat : Packpdb_symbol_t.packpdb_symbol;;
val cispep : Packpdb_symbol_t.packpdb_symbol;;
val compnd : Packpdb_symbol_t.packpdb_symbol;;
val conect : Packpdb_symbol_t.packpdb_symbol;;
val cryst1 : Packpdb_symbol_t.packpdb_symbol;;
val dbref1 : Packpdb_symbol_t.packpdb_symbol;;
val dbref2 : Packpdb_symbol_t.packpdb_symbol;;
val dbref : Packpdb_symbol_t.packpdb_symbol;;
val endmdl : Packpdb_symbol_t.packpdb_symbol;;
val end_ : Packpdb_symbol_t.packpdb_symbol;;
val expdta : Packpdb_symbol_t.packpdb_symbol;;
val formul : Packpdb_symbol_t.packpdb_symbol;;
val header : Packpdb_symbol_t.packpdb_symbol;;
val helix : Packpdb_symbol_t.packpdb_symbol;;
val hetatm : Packpdb_symbol_t.packpdb_symbol;;
val hetnam : Packpdb_symbol_t.packpdb_symbol;;
val het : Packpdb_symbol_t.packpdb_symbol;;
val hetsyn : Packpdb_symbol_t.packpdb_symbol;;
val jrnl : Packpdb_symbol_t.packpdb_symbol;;
val keywds : Packpdb_symbol_t.packpdb_symbol;;
val link : Packpdb_symbol_t.packpdb_symbol;;
val master : Packpdb_symbol_t.packpdb_symbol;;
val model : Packpdb_symbol_t.packpdb_symbol;;
val modres : Packpdb_symbol_t.packpdb_symbol;;
val mtrix1 : Packpdb_symbol_t.packpdb_symbol;;
val mtrix2 : Packpdb_symbol_t.packpdb_symbol;;
val mtrix3 : Packpdb_symbol_t.packpdb_symbol;;
val obslte : Packpdb_symbol_t.packpdb_symbol;;
val origx1 : Packpdb_symbol_t.packpdb_symbol;;
val origx2 : Packpdb_symbol_t.packpdb_symbol;;
val origx3 : Packpdb_symbol_t.packpdb_symbol;;
val remark : Packpdb_symbol_t.packpdb_symbol;;
val revdat : Packpdb_symbol_t.packpdb_symbol;;
val scale1 : Packpdb_symbol_t.packpdb_symbol;;
val scale2 : Packpdb_symbol_t.packpdb_symbol;;
val scale3 : Packpdb_symbol_t.packpdb_symbol;;
val seqadv : Packpdb_symbol_t.packpdb_symbol;;
val seqres : Packpdb_symbol_t.packpdb_symbol;;
val sheet : Packpdb_symbol_t.packpdb_symbol;;
val site : Packpdb_symbol_t.packpdb_symbol;;
val source : Packpdb_symbol_t.packpdb_symbol;;
val split : Packpdb_symbol_t.packpdb_symbol;;
val sprsde : Packpdb_symbol_t.packpdb_symbol;;
val ssbond : Packpdb_symbol_t.packpdb_symbol;;
val ter : Packpdb_symbol_t.packpdb_symbol;;
val title : Packpdb_symbol_t.packpdb_symbol;;

