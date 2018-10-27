(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Pro from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet pro. *)

(** {6 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

val molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol
;;

(** {9 Extracting Ala from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Ala. *)

(** {9 Extracting Arg from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Arg. *)

(** {9 Extracting Asn from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Asn. *)

(** {9 Extracting Asp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Asp. *)

(** {9 Extracting Cys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Cys. *)

(** {9 Extracting Gln from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Gln. *)

(** {9 Extracting Glu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Glu. *)

(** {9 Extracting His from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet His. *)

(** {9 Extracting Ile from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Ile. *)

(** {9 Extracting Leu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Leu. *)

(** {9 Extracting Lys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Lys. *)

(** {9 Extracting Met from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Met. *)

(** {9 Extracting Phe from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Phe. *)

(** {9 Extracting Ser from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Ser. *)

(** {9 Extracting Thr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Thr. *)

(** {9 Extracting Trp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Trp. *)

(** {9 Extracting Tyr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Tyr. *)

(** {9 Extracting Val from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from doublet Val. *)

(** {6 Querying.} *)

(** {6 Querying Pro in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from pro 0. *)

(** {6 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

val is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
  bool
;;

(** {9 Querying Ala in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ala 0. *)

(** {9 Querying Arg in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Arg 0. *)

(** {9 Querying Asn in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Asn 0. *)

(** {9 Querying Asp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Asp 0. *)

(** {9 Querying Cys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Cys 0. *)

(** {9 Querying Gln in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Gln 0. *)

(** {9 Querying Glu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Glu 0. *)

(** {9 Querying His in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from His 0. *)

(** {9 Querying Ile in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ile 0. *)

(** {9 Querying Leu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Leu 0. *)

(** {9 Querying Lys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Lys 0. *)

(** {9 Querying Met in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Met 0. *)

(** {9 Querying Phe in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Phe 0. *)

(** {9 Querying Ser in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ser 0. *)

(** {9 Querying Thr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Thr 0. *)

(** {9 Querying Trp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Trp 0. *)

(** {9 Querying Tyr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Tyr 0. *)

(** {9 Querying Val in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Val 0. *)

(** {6 Upgrading from Pro to Molecule_aminoacid_fragmented_tlc.} *)

val pro : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {6 Upgrading from Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol ->
    Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol
;;

(** {9 Upgrading from Ala through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val ala : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Arg through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val arg : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Asn through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val asn : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Asp through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val asp : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Cys through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val cys : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Gln through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val gln : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Glu through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val glu : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from His through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val his : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Ile through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val ile : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Leu through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val leu : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Lys through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val lys : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Met through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val met : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Phe through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val phe : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Ser through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val ser : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Thr through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val thr : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Trp through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val trp : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Tyr through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val tyr : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

(** {9 Upgrading from Val through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

val v_l : Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol;;

val molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;
(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_fragmented_tlc 13 January 2011. *)

