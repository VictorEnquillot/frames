(** {3 A Symbol for a Deoxyribonucleotide_purinic.} *)

(** {6 Displaying.} *)

val name :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    string
;;

val print : Format.formatter ->
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic.} *)

(* No Extraction from doublet Deoxyadenosine. *)

(** {6 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic.} *)

(* No Extraction from doublet Deoxyguanosine. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyadenosine in Deoxyribonucleotide_purinic.} *)

(* No Query from Deoxyadenosine 0. *)

(** {6 Querying Deoxyguanosine in Deoxyribonucleotide_purinic.} *)

(* No Query from Deoxyguanosine 0. *)

(** {6 Upgrading from Deoxyadenosine to Deoxyribonucleotide_purinic.} *)

val deoxyadenosine : Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol;;

(** {6 Upgrading from Deoxyguanosine to Deoxyribonucleotide_purinic.} *)

val deoxyguanosine : Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh deoxyribonucleotide_purinic 12 January 2011. *)

