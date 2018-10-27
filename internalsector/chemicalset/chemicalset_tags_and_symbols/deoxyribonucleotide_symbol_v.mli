(** {3 A Symbol for a Deoxyribonucleotide.} *)

(** {6 Displaying.} *)

val name :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    string
;;

val print : Format.formatter ->
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

val deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol
;;

(** {9 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

(* No Extraction from doublet Deoxyadenosine. *)

(** {9 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

(* No Extraction from doublet Deoxyguanosine. *)

(** {6 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

val deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol
;;

(** {9 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from doublet Deoxyuridine. *)

(** {9 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from doublet Deoxycytidine. *)

(** {9 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from doublet Thymidine. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

val is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
  bool
;;

(** {9 Querying Deoxyadenosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyadenosine 0. *)

(** {9 Querying Deoxyguanosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyguanosine 0. *)

(** {6 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

val is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
  bool
;;

(** {9 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyuridine 0. *)

(** {9 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Deoxycytidine 0. *)

(** {9 Querying Thymidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Thymidine 0. *)

(** {6 Upgrading from Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

val deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol
;;

(** {9 Upgrading from Deoxyadenosine through Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

val deoxyadenosine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

(** {9 Upgrading from Deoxyguanosine through Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

val deoxyguanosine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

(** {6 Upgrading from Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

val deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol
;;

(** {9 Upgrading from Deoxyuridine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

val deoxyuridine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

(** {9 Upgrading from Deoxycytidine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

val deoxycytidine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

(** {9 Upgrading from Thymidine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

val thymidine : Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh deoxyribonucleotide 12 January 2011. *)

