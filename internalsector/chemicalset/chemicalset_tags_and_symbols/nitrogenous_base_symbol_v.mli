(** {3 A Symbol for a Nitrogenous_base.} *)

(** {6 Displaying.} *)

val name :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    string
;;

val print : Format.formatter ->
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Purine_base from Nitrogenous_base.} *)

val purine_base_symbol_off_nitrogenous_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    Purine_base_symbol_t.purine_base_symbol
;;

(** {9 Extracting Adenosine from Purine_base from Nitrogenous_base.} *)

(* No Extraction from doublet Adenosine. *)

(** {9 Extracting Guanine from Purine_base from Nitrogenous_base.} *)

(* No Extraction from doublet Guanine. *)

(** {6 Extracting Pyrimidine_base from Nitrogenous_base.} *)

val pyrimidine_base_symbol_off_nitrogenous_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    Pyrimidine_base_symbol_t.pyrimidine_base_symbol
;;

(** {9 Extracting Cytosine from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from doublet Cytosine. *)

(** {9 Extracting Uracil from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from doublet Uracil. *)

(** {9 Extracting Thymine from Pyrimidine_base from Nitrogenous_base.} *)

(* No Extraction from doublet Thymine. *)

(** {6 Querying.} *)

(** {6 Querying Purine_base in Nitrogenous_base.} *)

val is_purine_base_symbol_off_nitrogenous_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
  bool
;;

(** {9 Querying Adenosine in Purine_base in Nitrogenous_base.} *)

(* No Query from Adenosine 0. *)

(** {9 Querying Guanine in Purine_base in Nitrogenous_base.} *)

(* No Query from Guanine 0. *)

(** {6 Querying Pyrimidine_base in Nitrogenous_base.} *)

val is_pyrimidine_base_symbol_off_nitrogenous_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
  bool
;;

(** {9 Querying Cytosine in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Cytosine 0. *)

(** {9 Querying Uracil in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Uracil 0. *)

(** {9 Querying Thymine in Pyrimidine_base in Nitrogenous_base.} *)

(* No Query from Thymine 0. *)

(** {6 Upgrading from Purine_base to Nitrogenous_base.} *)

val nitrogenous_base_symbol_of_purine_base_symbol :
  Purine_base_symbol_t.purine_base_symbol ->
    Nitrogenous_base_symbol_t.nitrogenous_base_symbol
;;

(** {9 Upgrading from Adenosine through Purine_base to Nitrogenous_base.} *)

val adenosine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

(** {9 Upgrading from Guanine through Purine_base to Nitrogenous_base.} *)

val guanine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

(** {6 Upgrading from Pyrimidine_base to Nitrogenous_base.} *)

val nitrogenous_base_symbol_of_pyrimidine_base_symbol :
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    Nitrogenous_base_symbol_t.nitrogenous_base_symbol
;;

(** {9 Upgrading from Cytosine through Pyrimidine_base to Nitrogenous_base.} *)

val cytosine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

(** {9 Upgrading from Uracil through Pyrimidine_base to Nitrogenous_base.} *)

val uracil : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

(** {9 Upgrading from Thymine through Pyrimidine_base to Nitrogenous_base.} *)

val thymine : Nitrogenous_base_symbol_t.nitrogenous_base_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh nitrogenous_base 12 January 2011. *)

