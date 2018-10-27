(** {3 A Symbol for a Molecule_aminoacid_tlc.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol
;;

(** {9 Extracting Gly from Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from doublet gly. *)

(** {6 Extracting Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol
;;

(** {9 Extracting Pro from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from doublet pro. *)

(** {9 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol
;;

(** {12 Extracting Ala from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ala 0. *)

(** {12 Extracting Arg from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Arg 0. *)

(** {12 Extracting Asn from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Asn 0. *)

(** {12 Extracting Asp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Asp 0. *)

(** {12 Extracting Cys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Cys 0. *)

(** {12 Extracting Gln from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Gln 0. *)

(** {12 Extracting Glu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Glu 0. *)

(** {12 Extracting His from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from His 0. *)

(** {12 Extracting Ile from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ile 0. *)

(** {12 Extracting Leu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Leu 0. *)

(** {12 Extracting Lys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Lys 0. *)

(** {12 Extracting Met from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Met 0. *)

(** {12 Extracting Phe from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Phe 0. *)

(** {12 Extracting Ser from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ser 0. *)

(** {12 Extracting Thr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Thr 0. *)

(** {12 Extracting Trp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Trp 0. *)

(** {12 Extracting Tyr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Tyr 0. *)

(** {12 Extracting Val from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Val 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc.} *)

val is_molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
  bool
;;

(** {9 Querying Gly in Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from gly 0. *)

(** {6 Querying Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

val is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
  bool
;;

(** {9 Querying Pro in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from pro 0. *)

(** {9 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

val is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
  bool
;;

(** {12 Querying Ala in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ala 0. *)

(** {12 Querying Arg in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Arg 0. *)

(** {12 Querying Asn in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Asn 0. *)

(** {12 Querying Asp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Asp 0. *)

(** {12 Querying Cys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Cys 0. *)

(** {12 Querying Gln in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Gln 0. *)

(** {12 Querying Glu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Glu 0. *)

(** {12 Querying His in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from His 0. *)

(** {12 Querying Ile in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ile 0. *)

(** {12 Querying Leu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Leu 0. *)

(** {12 Querying Lys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Lys 0. *)

(** {12 Querying Met in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Met 0. *)

(** {12 Querying Phe in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Phe 0. *)

(** {12 Querying Ser in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ser 0. *)

(** {12 Querying Thr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Thr 0. *)

(** {12 Querying Trp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Trp 0. *)

(** {12 Querying Tyr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Tyr 0. *)

(** {12 Querying Val in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Val 0. *)

(** {6 Upgrading from Molecule_aminoacid_segmented_tlc to Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol :
  Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;

(** {9 Upgrading from Gly through Molecule_aminoacid_segmented_tlc to Molecule_aminoacid_tlc.} *)

val gly : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;

(** {6 Upgrading from Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;

(** {9 Upgrading from Pro through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val pro : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;

(** {12 Upgrading from Ala through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val ala : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Arg through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val arg : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Asn through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val asn : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Asp through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val asp : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Cys through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val cys : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Gln through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val gln : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Glu through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val glu : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from His through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val his : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Ile through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val ile : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Leu through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val leu : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Lys through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val lys : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Met through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val met : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Phe through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val phe : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Ser through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val ser : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Thr through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val thr : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Trp through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val trp : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Tyr through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val tyr : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
(** {12 Upgrading from Val through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

val v_l : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol;;
val molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

val molecule_aminoacid_tlc_symbol_of_string :
  string ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;
	
val read :
  Scanf.Scanning.scanbuf ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;
(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_tlc 13 January 2011. *)

