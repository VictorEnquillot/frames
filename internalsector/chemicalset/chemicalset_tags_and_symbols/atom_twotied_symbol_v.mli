(** {3 A Symbol for a Atom_twotied.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_twotied_single_single from Atom_twotied.} *)

val atom_twotied_single_single_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol
;;

(** {9 Extracting Cl_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from doublet cl_ss. *)

(** {9 Extracting F_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from doublet f_ss. *)

(** {9 Extracting H_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from doublet h_ss. *)

(** {6 Extracting Atom_twotied_single_conjugated from Atom_twotied.} *)

val atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol
;;

(** {9 Extracting N_sc from Atom_twotied_single_conjugated from Atom_twotied.} *)

(* No Extraction from doublet n_sc. *)

(** {9 Extracting O_sc from Atom_twotied_single_conjugated from Atom_twotied.} *)

(* No Extraction from doublet o_sc. *)

(** {6 Extracting Atom_twotied_single_double from Atom_twotied.} *)

val atom_twotied_single_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol
;;

(** {9 Extracting N_sd from Atom_twotied_single_double from Atom_twotied.} *)

(* No Extraction from doublet n_sd. *)

(** {6 Extracting Atom_twotied_single_triple from Atom_twotied.} *)

val atom_twotied_single_triple_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol
;;

(** {9 Extracting C_st from Atom_twotied_single_triple from Atom_twotied.} *)

(* No Extraction from doublet c_st. *)

(** {9 Extracting N_st from Atom_twotied_single_triple from Atom_twotied.} *)

(* No Extraction from doublet n_st. *)

(** {6 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

val atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol
;;

(** {9 Extracting N_cc from Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

(* No Extraction from doublet n_cc. *)

(** {9 Extracting O_cc from Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

(* No Extraction from doublet o_cc. *)

(** {6 Extracting Atom_twotied_conjugated_double from Atom_twotied.} *)

val atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol
;;

(** {9 Extracting C_cd from Atom_twotied_conjugated_double from Atom_twotied.} *)

(* No Extraction from doublet c_cd. *)

(** {6 Extracting Atom_twotied_double_double from Atom_twotied.} *)

val atom_twotied_double_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol
;;

(** {9 Extracting C_dd from Atom_twotied_double_double from Atom_twotied.} *)

(* No Extraction from doublet c_dd. *)

(** {9 Extracting S_dd from Atom_twotied_double_double from Atom_twotied.} *)

(* No Extraction from doublet s_dd. *)

(** {6 Querying.} *)

(** {6 Querying Atom_twotied_single_single in Atom_twotied.} *)

val is_atom_twotied_single_single_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying Cl_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from cl_ss 0. *)

(** {9 Querying F_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from f_ss 0. *)

(** {9 Querying H_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from h_ss 0. *)

(** {6 Querying Atom_twotied_single_conjugated in Atom_twotied.} *)

val is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying N_sc in Atom_twotied_single_conjugated in Atom_twotied.} *)

(* No Query from n_sc 0. *)

(** {9 Querying O_sc in Atom_twotied_single_conjugated in Atom_twotied.} *)

(* No Query from o_sc 0. *)

(** {6 Querying Atom_twotied_single_double in Atom_twotied.} *)

val is_atom_twotied_single_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying N_sd in Atom_twotied_single_double in Atom_twotied.} *)

(* No Query from n_sd 0. *)

(** {6 Querying Atom_twotied_single_triple in Atom_twotied.} *)

val is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying C_st in Atom_twotied_single_triple in Atom_twotied.} *)

(* No Query from c_st 0. *)

(** {9 Querying N_st in Atom_twotied_single_triple in Atom_twotied.} *)

(* No Query from n_st 0. *)

(** {6 Querying Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

val is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying N_cc in Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

(* No Query from n_cc 0. *)

(** {9 Querying O_cc in Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

(* No Query from o_cc 0. *)

(** {6 Querying Atom_twotied_conjugated_double in Atom_twotied.} *)

val is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying C_cd in Atom_twotied_conjugated_double in Atom_twotied.} *)

(* No Query from c_cd 0. *)

(** {6 Querying Atom_twotied_double_double in Atom_twotied.} *)

val is_atom_twotied_double_double_symbol_off_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
  bool
;;

(** {9 Querying C_dd in Atom_twotied_double_double in Atom_twotied.} *)

(* No Query from c_dd 0. *)

(** {9 Querying S_dd in Atom_twotied_double_double in Atom_twotied.} *)

(* No Query from s_dd 0. *)

(** {6 Upgrading from Atom_twotied_single_single to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_single_single_symbol :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from Cl_ss through Atom_twotied_single_single to Atom_twotied.} *)

val cl_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from F_ss through Atom_twotied_single_single to Atom_twotied.} *)

val f_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from H_ss through Atom_twotied_single_single to Atom_twotied.} *)

val h_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_single_conjugated to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from N_sc through Atom_twotied_single_conjugated to Atom_twotied.} *)

val n_sc : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from O_sc through Atom_twotied_single_conjugated to Atom_twotied.} *)

val o_sc : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_single_double to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_single_double_symbol :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from N_sd through Atom_twotied_single_double to Atom_twotied.} *)

val n_sd : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_single_triple to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_single_triple_symbol :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from C_st through Atom_twotied_single_triple to Atom_twotied.} *)

val c_st : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from N_st through Atom_twotied_single_triple to Atom_twotied.} *)

val n_st : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from N_cc through Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

val n_cc : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from O_cc through Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

val o_cc : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_conjugated_double to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from C_cd through Atom_twotied_conjugated_double to Atom_twotied.} *)

val c_cd : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {6 Upgrading from Atom_twotied_double_double to Atom_twotied.} *)

val atom_twotied_symbol_of_atom_twotied_double_double_symbol :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Upgrading from C_dd through Atom_twotied_double_double to Atom_twotied.} *)

val c_dd : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** {9 Upgrading from S_dd through Atom_twotied_double_double to Atom_twotied.} *)

val s_dd : Atom_twotied_symbol_t.atom_twotied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied 12 January 2011. *)

