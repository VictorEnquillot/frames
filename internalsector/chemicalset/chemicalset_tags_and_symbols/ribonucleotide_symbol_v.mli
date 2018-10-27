(** {3 A Symbol for a Ribonucleotide.} *)

(** {6 Displaying.} *)

val name :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    string
;;

val print : Format.formatter ->
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ribonucleotide_purinic from Ribonucleotide.} *)

val ribonucleotide_purinic_symbol_off_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol
;;

(** {9 Extracting Adenosine from Ribonucleotide_purinic from Ribonucleotide.} *)

(* No Extraction from doublet Adenosine. *)

(** {9 Extracting Guanosine from Ribonucleotide_purinic from Ribonucleotide.} *)

(* No Extraction from doublet Guanosine. *)

(** {6 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

val ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol
;;

(** {9 Extracting Uridine from Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

(* No Extraction from doublet Uridine. *)

(** {9 Extracting Cytidine from Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

(* No Extraction from doublet Cytidine. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleotide_purinic in Ribonucleotide.} *)

val is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
  bool
;;

(** {9 Querying Adenosine in Ribonucleotide_purinic in Ribonucleotide.} *)

(* No Query from Adenosine 0. *)

(** {9 Querying Guanosine in Ribonucleotide_purinic in Ribonucleotide.} *)

(* No Query from Guanosine 0. *)

(** {6 Querying Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

val is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
  bool
;;

(** {9 Querying Uridine in Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

(* No Query from Uridine 0. *)

(** {9 Querying Cytidine in Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

(* No Query from Cytidine 0. *)

(** {6 Upgrading from Ribonucleotide_purinic to Ribonucleotide.} *)

val ribonucleotide_symbol_of_ribonucleotide_purinic_symbol :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    Ribonucleotide_symbol_t.ribonucleotide_symbol
;;

(** {9 Upgrading from Adenosine through Ribonucleotide_purinic to Ribonucleotide.} *)

val adenosine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

(** {9 Upgrading from Guanosine through Ribonucleotide_purinic to Ribonucleotide.} *)

val guanosine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

(** {6 Upgrading from Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

val ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    Ribonucleotide_symbol_t.ribonucleotide_symbol
;;

(** {9 Upgrading from Uridine through Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

val uridine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

(** {9 Upgrading from Cytidine through Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

val cytidine : Ribonucleotide_symbol_t.ribonucleotide_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh ribonucleotide 12 January 2011. *)

