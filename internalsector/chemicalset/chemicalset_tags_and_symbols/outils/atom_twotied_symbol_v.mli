(** {3 A Symbol for a Atom_twotied.} *)


let name :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_twotied_symbol_off_atom_twotied_single_single_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2sss_v
;;

val atom_twotied_symbol_off_atom_twotied_single_conjugated_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2scs_v
;;

val atom_twotied_symbol_off_atom_twotied_single_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2sds_v
;;

val atom_twotied_symbol_off_atom_twotied_single_triple_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2sts_v
;;

val atom_twotied_symbol_off_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2ccs_v
;;

val atom_twotied_symbol_off_atom_twotied_conjugated_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2cds_v
;;

val atom_twotied_symbol_off_atom_twotied_double_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    A2dds_v
;;


(** {6 Querying.} *)

val is_atom_twotied_symbol_off_atom_twotied_single_single_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_single_conjugated_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_single_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_single_triple_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_conjugated_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;

val is_atom_twotied_symbol_off_atom_twotied_double_double_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_twotied_symbol_of_atom_twotied_single_single_symbol :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    A2s_v
;;

val cl_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

val f_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

val h_ss : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    A2s_v
;;

val n_sc : Atom_twotied_symbol_t.atom_twotied_symbol;;

val o_sc : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_single_double_symbol :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    A2s_v
;;

val n_sd : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_single_triple_symbol :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    A2s_v
;;

val c_st : Atom_twotied_symbol_t.atom_twotied_symbol;;

val n_st : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    A2s_v
;;

val n_cc : Atom_twotied_symbol_t.atom_twotied_symbol;;

val o_cc : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    A2s_v
;;

val c_cd : Atom_twotied_symbol_t.atom_twotied_symbol;;

val atom_twotied_symbol_of_atom_twotied_double_double_symbol :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    A2s_v
;;

val c_dd : Atom_twotied_symbol_t.atom_twotied_symbol;;

val s_dd : Atom_twotied_symbol_t.atom_twotied_symbol;;



(** created by ./generator atom_twotied v symbol at 9:28 26 Apr 2011. *)



