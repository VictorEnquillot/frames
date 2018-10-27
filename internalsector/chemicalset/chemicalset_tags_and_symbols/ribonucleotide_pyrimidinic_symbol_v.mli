(** {3 A Symbol for a Ribonucleotide_pyrimidinic.} *)

(** {6 Displaying.} *)

val name :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    string
;;

val print : Format.formatter ->
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Uridine from Ribonucleotide_pyrimidinic.} *)

(* No Extraction from doublet Uridine. *)

(** {6 Extracting Cytidine from Ribonucleotide_pyrimidinic.} *)

(* No Extraction from doublet Cytidine. *)

(** {6 Querying.} *)

(** {6 Querying Uridine in Ribonucleotide_pyrimidinic.} *)

(* No Query from Uridine 0. *)

(** {6 Querying Cytidine in Ribonucleotide_pyrimidinic.} *)

(* No Query from Cytidine 0. *)

(** {6 Upgrading from Uridine to Ribonucleotide_pyrimidinic.} *)

val uridine : Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol;;

(** {6 Upgrading from Cytidine to Ribonucleotide_pyrimidinic.} *)

val cytidine : Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh ribonucleotide_pyrimidinic 12 January 2011. *)

