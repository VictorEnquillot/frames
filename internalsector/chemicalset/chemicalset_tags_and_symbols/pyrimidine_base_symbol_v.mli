(** {3 A Symbol for a Pyrimidine_base.} *)

(** {6 Displaying.} *)

val name :
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    string
;;

val print : Format.formatter ->
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Cytosine from Pyrimidine_base.} *)

(* No Extraction from doublet Cytosine. *)

(** {6 Extracting Uracil from Pyrimidine_base.} *)

(* No Extraction from doublet Uracil. *)

(** {6 Extracting Thymine from Pyrimidine_base.} *)

(* No Extraction from doublet Thymine. *)

(** {6 Querying.} *)

(** {6 Querying Cytosine in Pyrimidine_base.} *)

(* No Query from Cytosine 0. *)

(** {6 Querying Uracil in Pyrimidine_base.} *)

(* No Query from Uracil 0. *)

(** {6 Querying Thymine in Pyrimidine_base.} *)

(* No Query from Thymine 0. *)

(** {6 Upgrading from Cytosine to Pyrimidine_base.} *)

val cytosine : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;

(** {6 Upgrading from Uracil to Pyrimidine_base.} *)

val uracil : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;

(** {6 Upgrading from Thymine to Pyrimidine_base.} *)

val thymine : Pyrimidine_base_symbol_t.pyrimidine_base_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh pyrimidine_base 12 January 2011. *)

