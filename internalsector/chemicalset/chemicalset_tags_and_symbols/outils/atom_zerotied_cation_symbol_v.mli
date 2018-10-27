(** {3 A Symbol for a Atom_zerotied_cation.} *)


let name :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    A0cp1s_v
;;

val atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    A0cp2s_v
;;

val atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    A0cp3s_v
;;


(** {6 Querying.} *)

val is_atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    bool
;;

val is_atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    bool
;;

val is_atom_zerotied_cation_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    A0cs_v
;;

val h_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val k_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val li_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val na_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val ni_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val cu_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    A0cs_v
;;

val mg_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val ca_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val fe_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val zn_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val cu_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    A0cs_v
;;

val fe_3p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

val ni_3p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;



(** created by ./generator atom_zerotied_cation v symbol at 9:28 26 Apr 2011. *)



