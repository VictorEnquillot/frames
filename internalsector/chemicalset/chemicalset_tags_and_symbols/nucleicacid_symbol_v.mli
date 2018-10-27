(** {3 A Symbol for a Nucleicacid.} *)

(** {6 Displaying.} *)

val name :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    string
;;

val print : Format.formatter ->
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Dna from Nucleicacid.} *)

(* No Extraction from doublet Dna. *)

(** {6 Extracting Rna from Nucleicacid.} *)

(* No Extraction from doublet Rna. *)

(** {6 Querying.} *)

(** {6 Querying Dna in Nucleicacid.} *)

(* No Query from Dna 0. *)

(** {6 Querying Rna in Nucleicacid.} *)

(* No Query from Rna 0. *)

(** {6 Upgrading from Dna to Nucleicacid.} *)

val dna : Nucleicacid_symbol_t.nucleicacid_symbol;;

(** {6 Upgrading from Rna to Nucleicacid.} *)

val rna : Nucleicacid_symbol_t.nucleicacid_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh nucleicacid 12 January 2011. *)

