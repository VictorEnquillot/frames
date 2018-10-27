(** {3 A Symbol for a Atom_zerotied.} *)


let name :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_zerotied_symbol_off_atom_zerotied_raregas_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0rs_v
;;

val atom_zerotied_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0as_v
;;

val atom_zerotied_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0am1s_v
;;

val atom_zerotied_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0am2s_v
;;

val atom_zerotied_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0cs_v
;;

val atom_zerotied_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0cp1s_v
;;

val atom_zerotied_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0cp2s_v
;;

val atom_zerotied_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    A0cp3s_v
;;

val atom_zerotied_symbol_off_halfbridge_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Has_v
;;


(** {6 Querying.} *)

val is_atom_zerotied_symbol_off_atom_zerotied_raregas_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;

val is_atom_zerotied_symbol_off_halfbridge_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_zerotied_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    A0s_v
;;

val ar : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val he : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val kr : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val ne : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val xe : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    A0s_v
;;

val atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    A0s_v
;;

val f_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val h_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val cl_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val br_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val i_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    A0s_v
;;

val o_2m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val s_2m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    A0s_v
;;

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    A0s_v
;;

val h_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val k_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val li_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val na_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val ni_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val cu_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    A0s_v
;;

val mg_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val ca_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val fe_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val zn_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val cu_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    A0s_v
;;

val fe_3p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val ni_3p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val atom_zerotied_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    A0s_v
;;

val Hbc : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val Hbd : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val Hbs : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

val Hbt : Atom_zerotied_symbol_t.atom_zerotied_symbol;;



(** created by ./generator atom_zerotied v symbol at 9:28 26 Apr 2011. *)



