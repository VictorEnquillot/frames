(** {3 A Symbol for a Atom_onetied.} *)

(** {6 Displaying.} *)

val name :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_onetied_conjugated from Atom_onetied.} *)

val atom_onetied_conjugated_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol
;;

(** {9 Extracting O_c from Atom_onetied_conjugated from Atom_onetied.} *)

(* No Extraction from doublet o_c. *)

(** {6 Extracting Atom_onetied_double from Atom_onetied.} *)

val atom_onetied_double_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Atom_onetied_double_symbol_t.atom_onetied_double_symbol
;;

(** {9 Extracting O_d from Atom_onetied_double from Atom_onetied.} *)

(* No Extraction from doublet o_d. *)

(** {6 Extracting Atom_onetied_single from Atom_onetied.} *)

val atom_onetied_single_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Atom_onetied_single_symbol_t.atom_onetied_single_symbol
;;

(** {9 Extracting H_s from Atom_onetied_single from Atom_onetied.} *)

(* No Extraction from doublet h_s. *)

(** {9 Extracting F_s from Atom_onetied_single from Atom_onetied.} *)

(* No Extraction from doublet f_s. *)

(** {6 Extracting Atom_onetied_triple from Atom_onetied.} *)

val atom_onetied_triple_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol
;;

(** {9 Extracting N_t from Atom_onetied_triple from Atom_onetied.} *)

(* No Extraction from doublet n_t. *)

(** {9 Extracting O_t from Atom_onetied_triple from Atom_onetied.} *)

(* No Extraction from doublet o_t. *)

(** {6 Querying.} *)

(** {6 Querying Atom_onetied_conjugated in Atom_onetied.} *)

val is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
  bool
;;

(** {9 Querying O_c in Atom_onetied_conjugated in Atom_onetied.} *)

(* No Query from o_c 0. *)

(** {6 Querying Atom_onetied_double in Atom_onetied.} *)

val is_atom_onetied_double_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
  bool
;;

(** {9 Querying O_d in Atom_onetied_double in Atom_onetied.} *)

(* No Query from o_d 0. *)

(** {6 Querying Atom_onetied_single in Atom_onetied.} *)

val is_atom_onetied_single_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
  bool
;;

(** {9 Querying H_s in Atom_onetied_single in Atom_onetied.} *)

(* No Query from h_s 0. *)

(** {9 Querying F_s in Atom_onetied_single in Atom_onetied.} *)

(* No Query from f_s 0. *)

(** {6 Querying Atom_onetied_triple in Atom_onetied.} *)

val is_atom_onetied_triple_symbol_off_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
  bool
;;

(** {9 Querying N_t in Atom_onetied_triple in Atom_onetied.} *)

(* No Query from n_t 0. *)

(** {9 Querying O_t in Atom_onetied_triple in Atom_onetied.} *)

(* No Query from o_t 0. *)

(** {6 Upgrading from Atom_onetied_conjugated to Atom_onetied.} *)

val atom_onetied_symbol_of_atom_onetied_conjugated_symbol :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {9 Upgrading from O_c through Atom_onetied_conjugated to Atom_onetied.} *)

val o_c : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** {6 Upgrading from Atom_onetied_double to Atom_onetied.} *)

val atom_onetied_symbol_of_atom_onetied_double_symbol :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {9 Upgrading from O_d through Atom_onetied_double to Atom_onetied.} *)

val o_d : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** {6 Upgrading from Atom_onetied_single to Atom_onetied.} *)

val atom_onetied_symbol_of_atom_onetied_single_symbol :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {9 Upgrading from H_s through Atom_onetied_single to Atom_onetied.} *)

val h_s : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** {9 Upgrading from F_s through Atom_onetied_single to Atom_onetied.} *)

val f_s : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** {6 Upgrading from Atom_onetied_triple to Atom_onetied.} *)

val atom_onetied_symbol_of_atom_onetied_triple_symbol :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {9 Upgrading from N_t through Atom_onetied_triple to Atom_onetied.} *)

val n_t : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** {9 Upgrading from O_t through Atom_onetied_triple to Atom_onetied.} *)

val o_t : Atom_onetied_symbol_t.atom_onetied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_onetied 12 January 2011. *)

