(** {3 A Symbol for a Nucleicacid.} *)


let name :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    string
;;


val print : Format.Formatter ->
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Dna : Nucleicacid_symbol_t.nucleicacid_symbol;;

val Rna : Nucleicacid_symbol_t.nucleicacid_symbol;;



(** created by ./generator nucleicacid v symbol at 9:28 26 Apr 2011. *)



