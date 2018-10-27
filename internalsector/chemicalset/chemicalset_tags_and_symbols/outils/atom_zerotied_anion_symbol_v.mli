(** {3 A Symbol for a Atom_zerotied_anion.} *)


let name :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_zerotied_anion_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    A0am1s_v
;;

val atom_zerotied_anion_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    A0am2s_v
;;


(** {6 Querying.} *)

val is_atom_zerotied_anion_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    bool
;;

val is_atom_zerotied_anion_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    A0as_v
;;

val f_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val h_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val cl_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val br_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val i_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    A0as_v
;;

val o_2m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

val s_2m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;



(** created by ./generator atom_zerotied_anion v symbol at 9:28 26 Apr 2011. *)



