(** {3 A Symbol for a Deoxyribonucleotide_pyrimidinic.} *)

(** {6 Displaying.} *)

val name :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    string
;;

val print : Format.formatter ->
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from doublet Deoxyuridine. *)

(** {6 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from doublet Deoxycytidine. *)

(** {6 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from doublet Thymidine. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Deoxyuridine 0. *)

(** {6 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Deoxycytidine 0. *)

(** {6 Querying Thymidine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Thymidine 0. *)

(** {6 Upgrading from Deoxyuridine to Deoxyribonucleotide_pyrimidinic.} *)

val deoxyuridine : Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol;;

(** {6 Upgrading from Deoxycytidine to Deoxyribonucleotide_pyrimidinic.} *)

val deoxycytidine : Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol;;

(** {6 Upgrading from Thymidine to Deoxyribonucleotide_pyrimidinic.} *)

val thymidine : Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh deoxyribonucleotide_pyrimidinic 12 January 2011. *)

