(** {3 A Symbol for a Protein.} *)

(** {6 Displaying.} *)

val name :
  Protein_symbol_t.protein_symbol ->
    string
;;

val print : Format.formatter ->
  Protein_symbol_t.protein_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Acg from Protein.} *)

(* No Extraction from doublet Acg. *)

(** {6 Extracting Adh from Protein.} *)

(* No Extraction from doublet Adh. *)

(** {6 Extracting Agagag from Protein.} *)

(* No Extraction from doublet Agagag. *)

(** {6 Extracting Agc from Protein.} *)

(* No Extraction from doublet Agc. *)

(** {6 Extracting Agg from Protein.} *)

(* No Extraction from doublet Agg. *)

(** {6 Extracting Agp from Protein.} *)

(* No Extraction from doublet Agp. *)

(** {6 Extracting Gac from Protein.} *)

(* No Extraction from doublet Gac. *)

(** {6 Extracting Gap from Protein.} *)

(* No Extraction from doublet Gap. *)

(** {6 Extracting Ggg from Protein.} *)

(* No Extraction from doublet Ggg. *)

(** {6 Extracting Ggacgg from Protein.} *)

(* No Extraction from doublet Ggacgg. *)

(** {6 Extracting Ggaggg from Protein.} *)

(* No Extraction from doublet Ggaggg. *)

(** {6 Extracting Gagaga from Protein.} *)

(* No Extraction from doublet Gagaga. *)

(** {6 Extracting Mhb from Protein.} *)

(* No Extraction from doublet Mhb. *)

(** {6 Extracting Pac from Protein.} *)

(* No Extraction from doublet Pac. *)

(** {6 Extracting Pag from Protein.} *)

(* No Extraction from doublet Pag. *)

(** {6 Extracting Pgk from Protein.} *)

(* No Extraction from doublet Pgk. *)

(** {6 Extracting Pti from Protein.} *)

(* No Extraction from doublet Pti. *)

(** {6 Extracting Sac from Protein.} *)

(* No Extraction from doublet Sac. *)

(** {6 Extracting Tab from Protein.} *)

(* No Extraction from doublet Tab. *)

(** {6 Extracting Try from Protein.} *)

(* No Extraction from doublet Try. *)

(** {6 Extracting String from Protein.} *)

val protein_string_off_protein_symbol :
  Protein_symbol_t.protein_symbol ->
    string

;;
(** {6 Querying.} *)

(** {6 Querying Acg in Protein.} *)

(* No Query from Acg 0. *)

(** {6 Querying Adh in Protein.} *)

(* No Query from Adh 0. *)

(** {6 Querying Agagag in Protein.} *)

(* No Query from Agagag 0. *)

(** {6 Querying Agc in Protein.} *)

(* No Query from Agc 0. *)

(** {6 Querying Agg in Protein.} *)

(* No Query from Agg 0. *)

(** {6 Querying Agp in Protein.} *)

(* No Query from Agp 0. *)

(** {6 Querying Gac in Protein.} *)

(* No Query from Gac 0. *)

(** {6 Querying Gap in Protein.} *)

(* No Query from Gap 0. *)

(** {6 Querying Ggg in Protein.} *)

(* No Query from Ggg 0. *)

(** {6 Querying Ggacgg in Protein.} *)

(* No Query from Ggacgg 0. *)

(** {6 Querying Ggaggg in Protein.} *)

(* No Query from Ggaggg 0. *)

(** {6 Querying Gagaga in Protein.} *)

(* No Query from Gagaga 0. *)

(** {6 Querying Mhb in Protein.} *)

(* No Query from Mhb 0. *)

(** {6 Querying Pac in Protein.} *)

(* No Query from Pac 0. *)

(** {6 Querying Pag in Protein.} *)

(* No Query from Pag 0. *)

(** {6 Querying Pgk in Protein.} *)

(* No Query from Pgk 0. *)

(** {6 Querying Pti in Protein.} *)

(* No Query from Pti 0. *)

(** {6 Querying Sac in Protein.} *)

(* No Query from Sac 0. *)

(** {6 Querying Tab in Protein.} *)

(* No Query from Tab 0. *)

(** {6 Querying Try in Protein.} *)

(* No Query from Try 0. *)

(** {6 Querying String in Protein.} *)

val is_protein_string_off_protein_symbol :
  Protein_symbol_t.protein_symbol ->
    bool
;;

(** {6 Upgrading from Acg to Protein.} *)

val acg : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Adh to Protein.} *)

val adh : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Agagag to Protein.} *)

val agagag : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Agc to Protein.} *)

val agc : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Agg to Protein.} *)

val agg : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Agp to Protein.} *)

val agp : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Gac to Protein.} *)

val gac : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Gap to Protein.} *)

val gap : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Ggg to Protein.} *)

val ggg : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Ggacgg to Protein.} *)

val ggacgg : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Ggaggg to Protein.} *)

val ggaggg : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Gagaga to Protein.} *)

val gagaga : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Mhb to Protein.} *)

val mhb : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Pac to Protein.} *)

val pac : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Pag to Protein.} *)

val pag : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Pgk to Protein.} *)

val pgk : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Pti to Protein.} *)

val pti : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Sac to Protein.} *)

val sac : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Tab to Protein.} *)

val tab : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from Try to Protein.} *)

val tr_ : Protein_symbol_t.protein_symbol;;

(** {6 Upgrading from String to Protein.} *)

val make :
  string ->
    Protein_symbol_t.protein_symbol
;;

val protein_symbol_of_protein_string :
  string ->
    Protein_symbol_t.protein_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh protein 12 January 2011. *)

