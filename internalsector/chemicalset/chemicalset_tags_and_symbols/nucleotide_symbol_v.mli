(** {3 A Symbol for a Nucleotide.} *)

(** {6 Displaying.} *)

val name :
  Nucleotide_symbol_t.nucleotide_symbol ->
    string
;;

val print : Format.formatter ->
  Nucleotide_symbol_t.nucleotide_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ribonucleotide from Nucleotide.} *)

val ribonucleotide_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Ribonucleotide_symbol_t.ribonucleotide_symbol
;;

(** {9 Extracting Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

val ribonucleotide_purinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol
;;

(** {12 Extracting Adenosine from Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Adenosine 0. *)

(** {12 Extracting Guanosine from Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Guanosine 0. *)

(** {9 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

val ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol
;;

(** {12 Extracting Uridine from Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Uridine 0. *)

(** {12 Extracting Cytidine from Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Cytidine 0. *)

(** {6 Extracting Deoxyribonucleotide from Nucleotide.} *)

val deoxyribonucleotide_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol
;;

(** {9 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

val deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol
;;

(** {12 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyadenosine 0. *)

(** {12 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyguanosine 0. *)

(** {9 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

val deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol
;;

(** {12 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyuridine 0. *)

(** {12 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxycytidine 0. *)

(** {12 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Thymidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleotide in Nucleotide.} *)

val is_ribonucleotide_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {9 Querying Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

val is_ribonucleotide_purinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {12 Querying Adenosine in Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Adenosine 0. *)

(** {12 Querying Guanosine in Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Guanosine 0. *)

(** {9 Querying Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

val is_ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {12 Querying Uridine in Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Uridine 0. *)

(** {12 Querying Cytidine in Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Cytidine 0. *)

(** {6 Querying Deoxyribonucleotide in Nucleotide.} *)

val is_deoxyribonucleotide_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {9 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

val is_deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {12 Querying Deoxyadenosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyadenosine 0. *)

(** {12 Querying Deoxyguanosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyguanosine 0. *)

(** {9 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

val is_deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
  bool
;;

(** {12 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyuridine 0. *)

(** {12 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxycytidine 0. *)

(** {12 Querying Thymidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Thymidine 0. *)

(** {6 Upgrading from Ribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {9 Upgrading from Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_ribonucleotide_purinic_symbol :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {12 Upgrading from Adenosine through Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

val adenosine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {12 Upgrading from Guanosine through Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

val guanosine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {9 Upgrading from Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {12 Upgrading from Uridine through Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

val uridine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {12 Upgrading from Cytidine through Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

val cytidine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {6 Upgrading from Deoxyribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {9 Upgrading from Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {12 Upgrading from Deoxyadenosine through Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

val deoxyadenosine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {12 Upgrading from Deoxyguanosine through Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

val deoxyguanosine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {9 Upgrading from Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

val nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {12 Upgrading from Deoxyuridine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

val deoxyuridine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {12 Upgrading from Deoxycytidine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

val deoxycytidine : Nucleotide_symbol_t.nucleotide_symbol;;
(** {12 Upgrading from Thymidine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

val thymidine : Nucleotide_symbol_t.nucleotide_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh nucleotide 12 January 2011. *)

