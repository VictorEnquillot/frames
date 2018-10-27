(** {3 A Symbol for a Ribonucleotide_purinic.} *)

(** {6 Displaying.} *)

val name :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    string
;;

val print : Format.formatter ->
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Adenosine from Ribonucleotide_purinic.} *)

(* No Extraction from doublet Adenosine. *)

(** {6 Extracting Guanosine from Ribonucleotide_purinic.} *)

(* No Extraction from doublet Guanosine. *)

(** {6 Querying.} *)

(** {6 Querying Adenosine in Ribonucleotide_purinic.} *)

(* No Query from Adenosine 0. *)

(** {6 Querying Guanosine in Ribonucleotide_purinic.} *)

(* No Query from Guanosine 0. *)

(** {6 Upgrading from Adenosine to Ribonucleotide_purinic.} *)

val adenosine : Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol;;

(** {6 Upgrading from Guanosine to Ribonucleotide_purinic.} *)

val guanosine : Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh ribonucleotide_purinic 12 January 2011. *)

